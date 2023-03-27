module {
	public type StandingOrderQueryType1Code = {
		#SDTL;
		#SLSL;
		#SLST;
		#SWLS;
		#TAPS;
	};

	public type GenericIdentification1 = {
		Id : Text;
		Issr : ?Text;
		SchmeNm : ?Text;
	};

	public type RequestType3Choice = {
		Cd : ?StandingOrderQueryType1Code;
		Prtry : ?GenericIdentification1;
	};

	public type MessageHeader4 = {
		ReqTp : ?RequestType3Choice;
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

	public type StandingOrderType1Code = {
		#PSTO;
		#USTO;
	};

	public type StandingOrderType1Choice = {
		Cd : ?StandingOrderType1Code;
		Prtry : ?GenericIdentification1;
	};

	public type AccountSchemeName1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type GenericAccountIdentification1 = {
		Id : Text;
		Issr : ?Text;
		SchmeNm : ?AccountSchemeName1Choice;
	};

	public type AccountIdentification4Choice = {
		IBAN : ?Text;
		Othr : ?GenericAccountIdentification1;
	};

	public type AddressType2Code = {
		#ADDR;
		#BIZZ;
		#DLVY;
		#HOME;
		#MLTO;
		#PBOX;
	};

	public type GenericIdentification30 = {
		Id : Text;
		Issr : Text;
		SchmeNm : ?Text;
	};

	public type AddressType3Choice = {
		Cd : ?AddressType2Code;
		Prtry : ?GenericIdentification30;
	};

	public type PostalAddress24 = {
		Flr : ?Text;
		DstrctNm : ?Text;
		Ctry : ?Text;
		Dept : ?Text;
		Room : ?Text;
		StrtNm : ?Text;
		PstBx : ?Text;
		PstCd : ?Text;
		TwnLctnNm : ?Text;
		AdrLine : ?[Text];

		TwnNm : ?Text;
		AdrTp : ?AddressType3Choice;
		CtrySubDvsn : ?Text;
		BldgNb : ?Text;
		BldgNm : ?Text;
		SubDept : ?Text;
	};

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

	public type FinancialInstitutionIdentification18 = {
		Nm : ?Text;
		LEI : ?Text;
		PstlAdr : ?PostalAddress24;
		BICFI : ?Text;
		Othr : ?GenericFinancialIdentification1;
		ClrSysMmbId : ?ClearingSystemMemberIdentification2;
	};

	public type BranchData3 = {
		Id : ?Text;
		Nm : ?Text;
		LEI : ?Text;
		PstlAdr : ?PostalAddress24;
	};

	public type BranchAndFinancialInstitutionIdentification6 = {
		FinInstnId : FinancialInstitutionIdentification18;
		BrnchId : ?BranchData3;
	};

	public type CashAccountType2Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type ProxyAccountType1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type ProxyAccountIdentification1 = {
		Id : Text;
		Tp : ?ProxyAccountType1Choice;
	};

	public type CashAccount40 = {
		Id : ?AccountIdentification4Choice;
		Nm : ?Text;
		Tp : ?CashAccountType2Choice;
		Ccy : ?Text;
		Prxy : ?ProxyAccountIdentification1;
	};

	public type DatePeriod2 = {
		FrDt : Int;
		ToDt : Int;
	};

	public type DatePeriod2Choice = {
		FrDt : ?Int;
		ToDt : ?Int;
		FrToDt : ?DatePeriod2;
	};

	public type StandingOrderSearchCriteria4 = {
		Tp : ?StandingOrderType1Choice;
		Ccy : ?Text;
		AssoctdPoolAcct : ?AccountIdentification4Choice;
		SysMmb : ?BranchAndFinancialInstitutionIdentification6;
		LkSetOrdrSeq : ?Float;
		Acct : ?CashAccount40;
		LkSetId : ?Text;
		KeyAttrbtsInd : ?Bool;
		StgOrdrId : ?Text;
		ZeroSweepInd : ?Bool;
		VldtyPrd : ?DatePeriod2Choice;
		LkSetOrdrId : ?Text;
		RspnsblPty : ?BranchAndFinancialInstitutionIdentification6;
	};

	public type StandingOrderReturnCriteria1 = {
		CcyInd : ?Bool;
		AssoctdPoolAcct : ?Bool;
		RspnsblPtyInd : ?Bool;
		ExctnTpInd : ?Bool;
		LkSetOrdrSeqInd : ?Bool;
		CdtrAcctInd : ?Bool;
		DbtrAcctInd : ?Bool;
		VldToInd : ?Bool;
		FrqcyInd : ?Bool;
		TpInd : ?Bool;
		TtlAmtInd : ?Bool;
		ZeroSweepInd : ?Bool;
		VldtyFrInd : ?Bool;
		StgOrdrIdInd : ?Bool;
		LkSetIdInd : ?Bool;
		SysMmbInd : ?Bool;
		LkSetOrdrIdInd : ?Bool;
	};

	public type StandingOrderCriteria4 = {
		SchCrit : ?[StandingOrderSearchCriteria4];

		NewQryNm : ?Text;
		RtrCrit : ?StandingOrderReturnCriteria1;
	};

	public type StandingOrderCriteria4Choice = {
		NewCrit : ?StandingOrderCriteria4;
		QryNm : ?Text;
	};

	public type QueryType2Code = {
		#ALLL;
		#CHNG;
		#DELD;
		#MODF;
	};

	public type StandingOrderQuery4 = {
		StgOrdrCrit : ?StandingOrderCriteria4Choice;
		QryTp : ?QueryType2Code;
	};

	public type GetStandingOrderV04 = {
		MsgHdr : MessageHeader4;
		SplmtryData : ?[SupplementaryData1];

		StgOrdrQryDef : ?StandingOrderQuery4;
	};

}