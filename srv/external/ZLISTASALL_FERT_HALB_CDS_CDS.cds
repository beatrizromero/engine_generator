/* checksum : 5770822f5621407cd22e99fb7489c477 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.supported.formats : 'atom json xlsx'
service ZLISTASALL_FERT_HALB_CDS_CDS {};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'BTP IBP disponibilidad de referencias'
entity ZLISTASALL_FERT_HALB_CDS_CDS.ZLISTASALL_FERT_HALB_CDS {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  key matnr : String(18) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Centro'
  key werks : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo material'
  key mtart : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Componente'
  key idnrk : String(18) not null;
  @sap.label : 'Texto breve material'
  key maktx : String(40) not null;
};

