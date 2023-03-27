module {
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

	public type OriginalBusinessQuery1 = {
		MsgId : Text;
		CreDtTm : ?Int;
		MsgNmId : ?Text;
	};

	public type MessageHeader7 = {
		ReqTp : ?RequestType4Choice;
		OrgnlBizQry : ?OriginalBusinessQuery1;
		MsgId : Text;
		CreDtTm : ?Int;
		QryNm : ?Text;
	};

	public type SupplementaryDataEnvelope1 = {
		any : Any;
	};

	public type SupplementaryData1 = {
		Envlp : SupplementaryDataEnvelope1;
		PlcAndNm : ?Text;
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

	public type PaymentRole1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type StructuredLongPostalAddress1 = {
		Flr : ?Text;
		POB : ?Text;
		StrtBldgId : ?Text;
		DstrctNm : ?Text;
		Ctry : Text;
		Stat : ?Text;
		StrtNm : ?Text;
		RgnId : ?Text;
		TwnNm : Text;
		BldgNm : ?Text;
		CtyId : ?Text;
		PstCdId : Text;
	};

	public type LongPostalAddress1Choice = {
		Strd : ?StructuredLongPostalAddress1;
		Ustrd : ?Text;
	};

	public type CommunicationAddress10 = {
		PstlAdr : LongPostalAddress1Choice;
		PhneNb : Text;
		FaxNb : ?Text;
		EmailAdr : ?Text;
	};

	public type ContactIdentificationAndAddress2 = {
		Nm : ?Text;
		Role : PaymentRole1Choice;
		ComAdr : CommunicationAddress10;
	};

	public type Member7 = {
		Nm : ?Text;
		Tp : ?SystemMemberType1Choice;
		Sts : ?SystemMemberStatus1Choice;
		Acct : ?[CashAccount40];

		CtctRef : ?[ContactIdentificationAndAddress2];

		RtrAdr : ?[MemberIdentification3Choice];

		ComAdr : ?CommunicationAddress10;
	};

	public type ErrorHandling1Code = {
		#X020;
		#X030;
		#X050;
	};

	public type ErrorHandling1Choice = {
		Cd : ?ErrorHandling1Code;
		Prtry : ?Text;
	};

	public type ErrorHandling3 = {
		Err : ErrorHandling1Choice;
		Desc : ?Text;
	};

	public type MemberReportOrError8Choice = {
		Mmb : ?Member7;
		BizErr : ?ErrorHandling3;
	};

	public type MemberReport6 = {
		MmbId : MemberIdentification3Choice;
		MmbOrErr : MemberReportOrError8Choice;
	};

	public type MemberReportOrError7Choice = {
		Rpt : ?[MemberReport6];

		OprlErr : ?[ErrorHandling3];

	};

	public type ReturnMemberV05 = {
		MsgHdr : MessageHeader7;
		SplmtryData : ?[SupplementaryData1];

		RptOrErr : MemberReportOrError7Choice;
	};

}