module {
	public type MessageHeader1 = {
		MsgId : Text;
		CreDtTm : ?Int;
	};

	public type ActiveCurrencyAndAmount = {
		Ccy : Text;
		value : Float;
	};

	public type Amount2Choice = {
		AmtWthtCcy : ?Float;
		AmtWthCcy : ?ActiveCurrencyAndAmount;
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

	public type DatePeriod2 = {
		FrDt : Int;
		ToDt : Int;
	};

	public type DatePeriod2Choice = {
		FrDt : ?Int;
		ToDt : ?Int;
		FrToDt : ?DatePeriod2;
	};

	public type StandingOrder8 = {
		Amt : ?Amount2Choice;
		Cdtr : ?BranchAndFinancialInstitutionIdentification6;
		Dbtr : ?BranchAndFinancialInstitutionIdentification6;
		DbtrAcct : ?CashAccount40;
		CdtrAcct : ?CashAccount40;
		ExctnTp : ?ExecutionType1Choice;
		Frqcy : ?Frequency2Code;
		ZeroSweepInd : ?Bool;
		VldtyPrd : ?DatePeriod2Choice;
	};

	public type SupplementaryDataEnvelope1 = {
		any : Any;
	};

	public type SupplementaryData1 = {
		Envlp : SupplementaryDataEnvelope1;
		PlcAndNm : ?Text;
	};

	public type StandingOrderIdentification6 = {
		Id : ?Text;
		Acct : CashAccount40;
		AcctOwnr : ?BranchAndFinancialInstitutionIdentification6;
	};

	public type CreateStandingOrderV02 = {
		MsgHdr : MessageHeader1;
		ValSet : StandingOrder8;
		SplmtryData : ?[SupplementaryData1];

		StgOrdrId : StandingOrderIdentification6;
	};

}