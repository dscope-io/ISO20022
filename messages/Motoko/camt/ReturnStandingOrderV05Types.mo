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

	public type OriginalBusinessQuery1 = {
		MsgId : Text;
		CreDtTm : ?Int;
		MsgNmId : ?Text;
	};

	public type MessageHeader6 = {
		ReqTp : ?RequestType3Choice;
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

	public type ErrorHandling3Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type ErrorHandling5 = {
		Err : ErrorHandling3Choice;
		Desc : ?Text;
	};

	public type StandingOrderType1Code = {
		#PSTO;
		#USTO;
	};

	public type StandingOrderType1Choice = {
		Cd : ?StandingOrderType1Code;
		Prtry : ?GenericIdentification1;
	};

	public type ActiveCurrencyAndAmount = {
		Ccy : Text;
		value : Float;
	};

	public type Amount2Choice = {
		AmtWthtCcy : ?Float;
		AmtWthCcy : ?ActiveCurrencyAndAmount;
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

	public type CreditDebitCode = {
		#CRDT;
		#DBIT;
	};

	public type TotalAmountAndCurrency1 = {
		Ccy : ?Text;
		CdtDbtInd : ?CreditDebitCode;
		TtlAmt : Float;
	};

	public type StandingOrderTotalAmount1 = {
		PdgPrdfndOrdr : TotalAmountAndCurrency1;
		SetPrdfndOrdr : TotalAmountAndCurrency1;
		SetStgOrdr : TotalAmountAndCurrency1;
		PdgStgOrdr : TotalAmountAndCurrency1;
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

	public type EventType1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type ExecutionType1Choice = {
		Tm : ?Int;
		Evt : ?EventType1Choice;
	};

	public type Frequency2Code = {
		#ADHO;
		#DAIL;
		#INDA;
		#MIAN;
		#MNTH;
		#OVNG;
		#QURT;
		#WEEK;
		#YEAR;
	};

	public type DatePeriod3 = {
		FrDt : Int;
		ToDt : ?Int;
	};

	public type StandingOrder9 = {
		Tp : ?StandingOrderType1Choice;
		Amt : Amount2Choice;
		Ccy : ?Text;
		Ref : ?Text;
		AssoctdPoolAcct : ?AccountIdentification4Choice;
		SysMmb : ?BranchAndFinancialInstitutionIdentification6;
		LkSetOrdrSeq : ?Float;
		Cdtr : ?BranchAndFinancialInstitutionIdentification6;
		Dbtr : ?BranchAndFinancialInstitutionIdentification6;
		LkSetId : ?Text;
		TtlsPerStgOrdr : ?StandingOrderTotalAmount1;
		DbtrAcct : ?CashAccount40;
		CdtDbtInd : CreditDebitCode;
		CdtrAcct : ?CashAccount40;
		ExctnTp : ?ExecutionType1Choice;
		Frqcy : ?Frequency2Code;
		ZeroSweepInd : ?Bool;
		VldtyPrd : ?DatePeriod3;
		LkSetOrdrId : ?Text;
		RspnsblPty : ?BranchAndFinancialInstitutionIdentification6;
	};

	public type StandingOrderOrError8Choice = {
		BizErr : ?[ErrorHandling5];

		StgOrdr : ?StandingOrder9;
	};

	public type StandingOrderIdentification6 = {
		Id : ?Text;
		Acct : CashAccount40;
		AcctOwnr : ?BranchAndFinancialInstitutionIdentification6;
	};

	public type StandingOrderReport2 = {
		StgOrdrOrErr : StandingOrderOrError8Choice;
		StgOrdrId : StandingOrderIdentification6;
	};

	public type StandingOrderOrError7Choice = {
		Rpt : ?[StandingOrderReport2];

		OprlErr : ?[ErrorHandling5];

	};

	public type ReturnStandingOrderV05 = {
		MsgHdr : MessageHeader6;
		SplmtryData : ?[SupplementaryData1];

		RptOrErr : StandingOrderOrError7Choice;
	};

}