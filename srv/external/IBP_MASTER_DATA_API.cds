/* checksum : a1c4a66698469c0e8a560f03aace3c57 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.supported.formats : 'atom json xlsx'
service IBP_MASTER_DATA_API {};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
entity IBP_MASTER_DATA_API.ValueResultSet {
  @sap.unicode : 'false'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Name : LargeString not null;
  @sap.unicode : 'false'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Value : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
entity IBP_MASTER_DATA_API.VersionSpecificMasterDataTypes {
  @sap.unicode : 'false'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key PlanningAreaID : String(10) not null;
  @sap.unicode : 'false'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key VersionID : String(10) not null;
  @sap.unicode : 'false'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key MasterDataTypeID : String(32) not null;
  @sap.unicode : 'false'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PlanningAreaDescr : String(250) not null;
  @sap.unicode : 'false'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  VersionName : String(64) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.configuration.type : 'Compound'
entity IBP_MASTER_DATA_API.DT1PRODUCTDEMANDGROUP {
  @sap.label : 'Demand Group ID'
  key ZDEMANDGROUPID : String(10) not null;
  @sap.label : 'Product ID'
  key PRDID : String(40) not null;
  @sap.label : 'Local ABC Hub Code'
  ZLOCALABCHUBID : String(3);
  @sap.label : 'Local Segment Hub Code'
  ZLOCALSEGMHUBID : String(3);
  @sap.label : 'Enrichment Flag Hub Code'
  ZENRICHMENTFLAGID : String(12);
  @sap.label : 'Enrichment Flag Hub Desc'
  ZENRICHMENTFLAGDESCR : String(120);
  @sap.label : 'Local XYZ Hub Code'
  ZLOCALXYZID : String(3);
  @sap.label : 'Top100-50 DG Brand'
  ZTOPDGBRAND : String(20);
  @sap.label : 'Ranking DG'
  ZRANKDG : Integer;
  @sap.label : 'Ranking DG Segmentation'
  ZRANKDGSEGMENTATION : Integer;
  @sap.label : 'Ranking DG Segmentation Brand'
  ZRANKDGSEGMENTBRAND : Integer;
  @sap.label : 'TOP100-50 DG Segmentation'
  ZTOPDGSEGMENTATION : String(20);
  @sap.label : 'TOP100-50 DG Segmentation Brand'
  ZTOPDGSEGMENTBRAND : String(20);
  @odata.Type : 'Edm.DateTime'
  @sap.label : 'Life Cycle Forecast Start'
  ZLCFORECAST : DateTime;
  @odata.Type : 'Edm.DateTime'
  @sap.label : 'Life Cycle PhaseIn'
  ZLCPHASEIN : DateTime;
  @odata.Type : 'Edm.DateTime'
  @sap.label : 'Life Cycle PhaseOut'
  ZLCPHASEOUT : DateTime;
  @odata.Type : 'Edm.DateTime'
  @sap.label : 'Carry Over End Date'
  ZCARRYENDDATE : DateTime;
  @odata.Type : 'Edm.DateTime'
  @sap.label : 'Carry Over Start Date'
  ZCARRYSTARTDATE : DateTime;
  @sap.label : 'Carry Over'
  ZCARRYSW : String(1);
  @sap.label : 'Disaggregation'
  ZDISAGG : String(1);
  @sap.label : 'Fast Track Demand'
  ZFASTTRACKDEMAND : String(1);
  @sap.label : 'Local ABC IBP Code'
  ZLOCALABCIBPID : String(1);
  @sap.label : 'Local ABC ID'
  ZLOCALABCID : String(3);
  @sap.label : 'Local ABC Locked'
  ZLOCALABCLOCKED : String(1);
  @sap.label : 'Local Promo'
  ZLOCALPROMO : String(1);
  @sap.label : 'Local XYZ Locked'
  ZLOCALXYZLOCKED : String(1);
  @sap.label : 'Product for FA Local'
  ZPRODUCTFALOCAL : String(18);
  @sap.label : 'Purge Flag Prod DG'
  ZPURGEFLAGPRODDG : String(1);
  @odata.Type : 'Edm.DateTime'
  @sap.label : 'Sales Status Date'
  ZSALESSTATUSDATE : DateTime;
  @sap.label : 'Forecast Model'
  ZTIMESERIESPROPERTY : String(120);
  @sap.label : 'TOP100-50 DG'
  ZTOPDG : String(20);
  @sap.label : 'Product ID & Demand Group'
  ZPRODUCTDG : String(25);
  @sap.label : 'Start Edit Horizon'
  ZEDITHORIZONSTART : Integer;
  @sap.label : 'End Edit Horizon'
  ZEDITHORIZONEND : Integer;
  @sap.label : 'Main Product ID Local'
  ZPRDREPACKLOCAL : String(40);
  @sap.label : 'Ranking DG Brand'
  ZRANKDGBRAND : Integer;
  @sap.label : 'Fcst Tester PCT Ind'
  ZFCSTTESTERPCTIND : Decimal(18, 6);
  @sap.label : 'Local ABC Segment-Brand ID'
  ZLOCALABCBRAND : String(1);
  @sap.label : 'Forecast Model Main Product DG'
  ZTIMESERIESPROPERTYMP : String(120);
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Creation Date'
  CREATEDDATE : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Last Modified Date'
  LASTMODIFIEDDATE : DateTime;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
entity IBP_MASTER_DATA_API.DT1PRODUCTDEMANDGROUPTrans {
  key TransactionID : LargeString not null;
  TransactionName : String(60);
  DoCommit : Boolean;
  RequestedAttributes : LargeString;
  DeleteEntries : Boolean;
  @cds.ambiguous : 'missing on condition?'
  NavDT1PRODUCTDEMANDGROUP : Association to many IBP_MASTER_DATA_API.DT1PRODUCTDEMANDGROUP {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.requires.filter : 'true'
@sap.content.version : '1'
entity IBP_MASTER_DATA_API.DT1PRODUCTDEMANDGROUPMessage {
  key TransactionID : LargeString not null;
  key MessageID : LargeString not null;
  MessageText : LargeString;
  @cds.ambiguous : 'missing on condition?'
  NavDT1PRODUCTDEMANDGROUP : Association to IBP_MASTER_DATA_API.DT1PRODUCTDEMANDGROUP {  };
};

@cds.external : true
action IBP_MASTER_DATA_API.Commit(
  P_TransactionID : LargeString
) returns IBP_MASTER_DATA_API.ValueResultSet;

@cds.external : true
function IBP_MASTER_DATA_API.GetExportResult(
  P_TransactionID : LargeString
) returns many IBP_MASTER_DATA_API.ValueResultSet;

@cds.external : true
function IBP_MASTER_DATA_API.GetTransactionID() returns IBP_MASTER_DATA_API.ValueResultSet;

@cds.external : true
action IBP_MASTER_DATA_API.InitiateParallelProcess(
  TransactionName : String(60),
  VersionID : LargeString,
  @sap.label : 'Transaction ID'
  TransactionID : String(32),
  MasterDataTypeID : String(32),
  PlanningArea : LargeString
) returns IBP_MASTER_DATA_API.ValueResultSet;

