module {
	public type QueryType3Code = {
		#ALLL;
		#CHNG;
		#MODF;
	};

	public type DatePeriod3 = {
		FrDt : Int;
		ToDt : ?Int;
	};

	public type TimePeriodDetails1 = {
		FrTm : Int;
		ToTm : ?Int;
	};

	public type ReportingPeriod5 = {
		Tp : QueryType3Code;
		FrToDt : DatePeriod3;
		FrToTm : ?TimePeriodDetails1;
	};

	public type SequenceRange1 = {
		FrSeq : Text;
		ToSeq : Text;
	};

	public type SequenceRange1Choice = {
		NEQSeq : ?[Text];

		FrSeq : ?Text;
		FrToSeq : ?[SequenceRange1];

		ToSeq : ?Text;
		EQSeq : ?[Text];

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

	public type OrganisationIdentificationSchemeName1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type GenericOrganisationIdentification1 = {
		Id : Text;
		Issr : ?Text;
		SchmeNm : ?OrganisationIdentificationSchemeName1Choice;
	};

	public type OrganisationIdentification29 = {
		LEI : ?Text;
		Othr : ?[GenericOrganisationIdentification1];

		AnyBIC : ?Text;
	};

	public type DateAndPlaceOfBirth1 = {
		CityOfBirth : Text;
		PrvcOfBirth : ?Text;
		BirthDt : Int;
		CtryOfBirth : Text;
	};

	public type PersonIdentificationSchemeName1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type GenericPersonIdentification1 = {
		Id : Text;
		Issr : ?Text;
		SchmeNm : ?PersonIdentificationSchemeName1Choice;
	};

	public type PersonIdentification13 = {
		DtAndPlcOfBirth : ?DateAndPlaceOfBirth1;
		Othr : ?[GenericPersonIdentification1];

	};

	public type Party38Choice = {
		OrgId : ?OrganisationIdentification29;
		PrvtId : ?PersonIdentification13;
	};

	public type NamePrefix2Code = {
		#DOCT;
		#MADM;
		#MIKS;
		#MISS;
		#MIST;
	};

	public type OtherContact1 = {
		Id : ?Text;
		ChanlTp : Text;
	};

	public type PreferredContactMethod1Code = {
		#CELL;
		#FAXX;
		#LETT;
		#MAIL;
		#PHON;
	};

	public type Contact4 = {
		Nm : ?Text;
		JobTitl : ?Text;
		PhneNb : ?Text;
		NmPrfx : ?NamePrefix2Code;
		Dept : ?Text;
		Othr : ?[OtherContact1];

		EmailPurp : ?Text;
		PrefrdMtd : ?PreferredContactMethod1Code;
		FaxNb : ?Text;
		MobNb : ?Text;
		EmailAdr : ?Text;
		Rspnsblty : ?Text;
	};

	public type PartyIdentification135 = {
		Id : ?Party38Choice;
		Nm : ?Text;
		PstlAdr : ?PostalAddress24;
		CtctDtls : ?Contact4;
		CtryOfRes : ?Text;
	};

	public type Party40Choice = {
		Agt : ?BranchAndFinancialInstitutionIdentification6;
		Pty : ?PartyIdentification135;
	};

	public type EntryStatus1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type CreditDebitCode = {
		#CRDT;
		#DBIT;
	};

	public type ActiveOrHistoricCurrencyAndAmount = {
		Ccy : Text;
		value : Float;
	};

	public type FloorLimitType1Code = {
		#BOTH;
		#CRED;
		#DEBT;
	};

	public type Limit2 = {
		Amt : ActiveOrHistoricCurrencyAndAmount;
		CdtDbtInd : FloorLimitType1Code;
	};

	public type TransactionType2 = {
		Sts : EntryStatus1Choice;
		CdtDbtInd : CreditDebitCode;
		FlrLmt : ?[Limit2];

	};

	public type BalanceSubType1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type BalanceType10Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type BalanceType13 = {
		SubTp : ?BalanceSubType1Choice;
		CdOrPrtry : BalanceType10Choice;
	};

	public type ReportingRequest6 = {
		Id : ?Text;
		RptgPrd : ?ReportingPeriod5;
		RptgSeq : ?SequenceRange1Choice;
		Acct : ?CashAccount40;
		AcctOwnr : Party40Choice;
		AcctSvcr : ?BranchAndFinancialInstitutionIdentification6;
		ReqdMsgNmId : Text;
		ReqdTxTp : ?TransactionType2;
		ReqdBalTp : ?[BalanceType13];

	};

	public type GroupHeader77 = {
		MsgSndr : ?Party40Choice;
		MsgId : Text;
		CreDtTm : Int;
	};

	public type SupplementaryDataEnvelope1 = {
		any : Any;
	};

	public type SupplementaryData1 = {
		Envlp : SupplementaryDataEnvelope1;
		PlcAndNm : ?Text;
	};

	public type AccountReportingRequestV06 = {
		RptgReq : [ReportingRequest6];
		GrpHdr : GroupHeader77;
		SplmtryData : ?[SupplementaryData1];

	};

}