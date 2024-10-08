/* checksum : 68fc490ca52501e0f89652bba184ed99 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.supported.formats : 'atom json xlsx'
service ZLISTASALL_FERT_CDS_CDS {};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'BTP IBP disponibilidad de referencias'
entity ZLISTASALL_FERT_CDS_CDS.ZLISTASALL_FERT_CDS {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  key matnr : String(18) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Centro'
  key werks : String(4) not null;
  @sap.label : 'Texto breve material'
  key maktx_p : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Componente'
  key idnrk : String(18) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo material'
  key mtart_h : String(4) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Tipo'
  key zzcategory_p : String(4) not null;
  @sap.label : 'Product Type Name'
  key zdesc : String(25) not null;
};

