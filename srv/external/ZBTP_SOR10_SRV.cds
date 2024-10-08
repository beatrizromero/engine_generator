/* checksum : 10569440343267023910638eb2ae10dc */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.supported.formats : 'atom json xlsx'
service ZBTP_SOR10_SRV {};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'ZBTP_SOR10'
@sap.semantics : 'aggregate'
entity ZBTP_SOR10_SRV.ZBTP_SOR10Results {
  @sap.filterable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  key ID : LargeString not null;
  @sap.aggregation.role : 'totaled-properties-list'
  @sap.is.annotation : 'true'
  @sap.updatable : 'false'
  @sap.label : 'Total/Subtotal'
  @sap.sortable : 'false'
  TotaledProperties : LargeString;
  @sap.aggregation.role : 'dimension'
  @sap.text : ''
  @sap.label : 'Market'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  ZAREAMK_T : String(20);
  @sap.aggregation.role : 'dimension'
  @sap.text : 'A0COUNTRY_T'
  @sap.label : 'Country'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  A0COUNTRY : String(3);
  @sap.label : 'Country (Description)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  A0COUNTRY_T : String(20);
  @sap.aggregation.role : 'dimension'
  @sap.text : 'A0COMP_CODE_T'
  @sap.label : 'Company code'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  A0COMP_CODE : String(4);
  @sap.label : 'Company code (Description)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  A0COMP_CODE_T : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.text : ''
  @sap.label : 'Entity'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  A0COMP_CODE__ZMIS_CIA_T : String(20);
  @sap.aggregation.role : 'dimension'
  @sap.text : ''
  @sap.label : 'Retailer (RC)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  A0CUSTOMER__WW120_T : String(20);
  @sap.aggregation.role : 'dimension'
  @sap.text : ''
  @sap.label : 'Brand'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  ZMIS_GRB_T : String(1333);
  @sap.aggregation.role : 'dimension'
  @sap.text : 'A0MATERIAL_T'
  @sap.label : 'Material'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  A0MATERIAL : String(18);
  @sap.label : 'Material (Description)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  A0MATERIAL_T : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.text : 'A0CUSTOMER__0COUNTRY_T'
  @sap.label : 'Country'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  A0CUSTOMER__0COUNTRY : String(3);
  @sap.label : 'Country (Description)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  A0CUSTOMER__0COUNTRY_T : String(20);
  @sap.aggregation.role : 'dimension'
  @sap.text : 'A0CALMONTH_T'
  @sap.label : 'Cal. year / month'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.semantics : 'yearmonth'
  A0CALMONTH : String(6);
  @sap.label : 'Cal. year / month (Description)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  A0CALMONTH_T : String(7);
  @sap.aggregation.role : 'measure'
  @sap.filterable : 'false'
  @sap.text : 'A00A9WOD999QRTC2V716MKRHRB_F'
  @sap.unit : ''
  @sap.updatable : 'false'
  @sap.label : 'Sell units'
  @sap.creatable : 'false'
  A00A9WOD999QRTC2V716MKRHRB : Decimal(42, 0);
  @sap.label : 'Sell units (Formatted)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  A00A9WOD999QRTC2V716MKRHRB_F : String(60);
  @sap.filterable : 'false'
  @sap.label : 'Sell units ()'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.semantics : 'unit-of-measure'
  A00A9WOD999QRTC2V716MKRHRB_E : String(3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
entity ZBTP_SOR10_SRV.AdditionalMetadata {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key ODataQueryMetadata : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ODataQueryMetadataValue_Current : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ODataQueryMetadataValueAtDefine : LargeString;
};

