/* checksum : c9abf7386a4395f89fc874fde70a8326 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.supported.formats : 'atom json xlsx'
service ZFORECAST_R3_ZPX0_CDS_CDS {};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
entity ZFORECAST_R3_ZPX0_CDS_CDS.ZFORECAST_R3_ZPX0_CDS {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  key MATNR : String(18) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Inicio validez'
  DATAB : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Fin validez'
  DATBI : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Organización ventas'
  VKORG : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Lista de precios'
  PLTYP : String(2);
  @sap.semantics : 'currency-code'
  CurrencyCode : String(5);
  @sap.unit : 'CurrencyCode'
  @sap.label : 'Importe condición'
  KBETR : Decimal(12, 3);
};

