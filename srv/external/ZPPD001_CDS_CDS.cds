/* checksum : 54600895a305e171ec8b4d0f9a30ba20 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.supported.formats : 'atom json xlsx'
service ZPPD001_CDS_CDS {};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
entity ZPPD001_CDS_CDS.ZPPD001_CDS {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  key matnr : String(18) not null;
  @sap.display.format : 'Date'
  key datum : Date not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Centro'
  key werks : String(4) not null;
  @odata.Type : 'Edm.Byte'
  dispCen : Integer;
  labst : Decimal(13, 3);
};

