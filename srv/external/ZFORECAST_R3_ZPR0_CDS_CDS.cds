/* checksum : dbf46f4775f874b19d3eacf010a7fc18 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.supported.formats : 'atom json xlsx'
service ZFORECAST_R3_ZPR0_CDS_CDS {};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Extraction for condition ZRP0'
entity ZFORECAST_R3_ZPR0_CDS_CDS.ZFORECAST_R3_ZPR0_CDS {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  key MATNR : String(18) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Valid From'
  DATAB : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Valid to'
  DATBI : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Organization'
  VKORG : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Price List'
  PLTYP : String(2);
  @sap.semantics : 'currency-code'
  CurrencyCode : String(5);
  @sap.unit : 'CurrencyCode'
  @sap.label : 'Rate'
  KBETR : Decimal(12, 3);
};

