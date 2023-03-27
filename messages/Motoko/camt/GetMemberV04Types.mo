module {
	public type FinancialIdentificationSchemeName1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type GenericFinancialIdentification1 = {
		Id : Text;
		Issr : ?Text;
		SchmeNm : ?FinancialIdentificationSchemeName1Choice;
	};

	public type ClearingSystemIdentification2Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type ClearingSystemMemberIdentification2 = {
		ClrSysId : ?ClearingSystemIdentification2Choice;
		MmbId : Text;
	};

	public type MemberIdentification3Choice = {
		BICFI : ?Text;
		Othr : ?GenericFinancialIdentification1;
		ClrSysMmbId : ?ClearingSystemMemberIdentification2;
	};

	public type SystemMemberType1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type MemberStatus1Code = {
		#DLTD;
		#DSBL;
		#ENBL;
		#JOIN;
	};

	public type SystemMemberStatus1Choice = {
		Cd : ?MemberStatus1Code;
		Prtry : ?Text;
	};

	public type MemberSearchCriteria4 = {
		Id : ?[MemberIdentification3Choice];

		Tp : ?[SystemMemberType1Choice];

		Sts : ?[SystemMemberStatus1Choice];

	};

	public type MemberReturnCriteria1 = {
		CtctRefInd : ?Bool;
		MmbRtrAdrInd : ?Bool;
		NmInd : ?Bool;
		StsInd : ?Bool;
		AcctInd : ?Bool;
		ComAdrInd : ?Bool;
		TpInd : ?Bool;
	};

	public type MemberCriteria4 = {
		SchCrit : ?[MemberSearchCriteria4];

		NewQryNm : ?Text;
		RtrCrit : ?MemberReturnCriteria1;
	};

	public type MemberCriteriaDefinition2Choice = {
		NewCrit : ?MemberCriteria4;
		QryNm : ?Text;
	};

	public type QueryType2Code = {
		#ALLL;
		#CHNG;
		#DELD;
		#MODF;
	};

	public type MemberQueryDefinition4 = {
		MmbCrit : ?MemberCriteriaDefinition2Choice;
		QryTp : ?QueryType2Code;
	};

	public type GenericIdentification1 = {
		Id : Text;
		Issr : ?Text;
		SchmeNm : ?Text;
	};

	public type RequestType4Choice = {
		Enqry : ?Text;
		Prtry : ?GenericIdentification1;
		PmtCtrl : ?Text;
	};

	public type MessageHeader9 = {
		ReqTp : ?RequestType4Choice;
		MsgId : Text;
		CreDtTm : ?Int;
	};

	public type SupplementaryDataEnvelope1 = {
		any : Any;
	};

	public type SupplementaryData1 = {
		Envlp : SupplementaryDataEnvelope1;
		PlcAndNm : ?Text;
	};

	public type GetMemberV04 = {
		MmbQryDef : ?MemberQueryDefinition4;
		MsgHdr : MessageHeader9;
		SplmtryData : ?[SupplementaryData1];

	};

}