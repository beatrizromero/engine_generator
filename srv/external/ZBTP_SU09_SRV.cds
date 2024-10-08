/* checksum : 48d991c6718cf73214417cbe971946de */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.supported.formats : 'atom json xlsx'
service ZBTP_SU09_SRV {};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'ZBTP_SU09'
@sap.semantics : 'aggregate'
entity ZBTP_SU09_SRV.ZBTP_SU09Results {
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
  @sap.text : 'A0SALESORG_T'
  @sap.label : 'Sales Organization'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  A0SALESORG : String(4);
  @sap.label : 'Sales Organization (Description)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  A0SALESORG_T : String(1333);
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
  @sap.text : 'A00A9WOD999QRTC2URLCON1G2V_F'
  @sap.updatable : 'false'
  @sap.label : 'Ordered boxes'
  @sap.creatable : 'false'
  A00A9WOD999QRTC2URLCON1G2V : Decimal(42, 7);
  @sap.label : 'Ordered boxes (Formatted)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  A00A9WOD999QRTC2URLCON1G2V_F : String(60);
  @sap.aggregation.role : 'measure'
  @sap.filterable : 'false'
  @sap.text : 'CAJ_ENTREG_NEW_G_F'
  @sap.updatable : 'false'
  @sap.label : 'Deliveried boxes'
  @sap.creatable : 'false'
  CAJ_ENTREG_NEW_G : Decimal(42, 7);
  @sap.label : 'Deliveried boxes (Formatted)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  CAJ_ENTREG_NEW_G_F : String(60);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
entity ZBTP_SU09_SRV.AdditionalMetadata {
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

