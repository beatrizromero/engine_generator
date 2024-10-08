const cds = require("@sap/cds");
const multer = require('multer');
const { Readable } = require('stream');
const fetch = require('node-fetch'); // Asegúrate de tener 'node-fetch' instalado si usas Node.js
const { marked } = require('marked');
/**
 * Configuración de multer para manejar archivos en memoria
 */
const upload = multer({ storage: multer.memoryStorage() });

/**
 * uploadFileHandler service event handler.
 * @param {object} req - Request object
 * @returns {boolean} success - result to the next interceptor
 */
let uploadFileHandler = async (req) => {
  try {
    // Verificar si el archivo está presente en la solicitud
    if (!req.data.file) {
      throw new Error("No file provided.");
    }

    // Obtener el contenido del archivo en Base64
    const base64Content = req.data.file;
    console.log(base64Content)
    if (!base64Content) {
      throw new Error("Base64 content is undefined.");
    }

    // Decodificar el contenido Base64 a un buffer
    const fileBuffer = Buffer.from(base64Content, 'base64');
    console.log(fileBuffer)
    // Leer el contenido del archivo
    const fileContent = fileBuffer.toString('utf8'); // Asumiendo que el archivo es de texto en UTF-8
    console.log(fileContent)
    // Llave API de OpenAI
    const apiKey =
      "sk-svcacct-kLdovTkzRIVmOxGRk1PaRxOSaYeGpnYpxx5eyKpeWbZ5WIUT3BlbkFJXACdzXpC-MZ9S0Nd_e81_Gt4XwJjq97KOoz_pFjKQf4fgewA";

    // Llamar a la API de OpenAI con el contenido del archivo
    const openAiResponse = await callOpenAiApi(fileContent, apiKey);

    const html = marked.parse(openAiResponse);

    // Retornar la respuesta de OpenAI
    return html;

  } catch (error) {
    console.error("Error:", error);
    req.reject(403, error.message); // Cambié 'error' por 'error.message' para una respuesta más clara
  }
};

/**
 * openAiServiceImpl service custom impl.
 */
let openAiServiceImpl = async function () {
  this.on("uploadFile", uploadFileHandler);
};


/**
 * Función que realiza una llamada a la API de OpenAI
 * @param {string} fileContent - El contenido del archivo a enviar como prompt
 * @param {string} apiKey - Tu clave API de OpenAI
 * @returns {string} - La respuesta de la API de OpenAI
 */
async function callOpenAiApi(fileContent, apiKey) {
  try {
    // Preparar el cuerpo de la solicitud
    const body = JSON.stringify({
      model: "gpt-4o-mini", // Asegúrate de que este modelo esté disponible
      messages: [
        {
          role: "user",
          content: `Montame un diseño técnico a partir de este código de un proyecto SAP BTP CAP: ${fileContent}`, // Usar el contenido del archivo como prompt
        },
      ],
      max_tokens: 16384, // Ajusta según tu caso
    });

    // Hacer la solicitud a la API de OpenAI
    const response = await fetch("https://api.openai.com/v1/chat/completions", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        Authorization: `Bearer ${apiKey}`, // Usar la clave API proporcionada
      },
      body: body,
    });

    // Verificar si la respuesta es exitosa
    if (!response.ok) {
      throw new Error(`Error de la API: ${response.status} ${response.statusText}`);
    }

    // Obtener la respuesta de la API
    const data = await response.json();

    // Devolver el texto generado por la IA
    return data.choices[0].message.content;
  } catch (error) {
    console.error("Error llamando a la API de OpenAI:", error);
    throw error; // Lanzar el error para que pueda ser manejado externamente
  }
}


module.exports = cds.service.impl(openAiServiceImpl);
