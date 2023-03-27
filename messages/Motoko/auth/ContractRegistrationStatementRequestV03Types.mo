module {
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

	public type CurrencyControlHeader4 = {
		InitgPty : PartyIdentification135;
		MsgId : Text;
		CreDtTm : Int;
		FwdgAgt : ?BranchAndFinancialInstitutionIdentification6;
		NbOfItms : Text;
	};

	public type SupplementaryDataEnvelope1 = {
		any : Any;
	};

	public type SupplementaryData1 = {
		Envlp : SupplementaryDataEnvelope1;
		PlcAndNm : ?Text;
	};

	public type QueryType3Code = {
		#ALLL;
		#CHNG;
		#MODF;
	};

	public type DatePeriod3 = {
		FrDt : Int;
		ToDt : ?Int;
	};

	public type TimePeriod2 = {
		FrTm : Int;
		ToTm : ?Int;
	};

	public type ReportingPeriod4 = {
		Tp : QueryType3Code;
		FrToDt : DatePeriod3;
		FrToTm : TimePeriod2;
	};

	public type TaxExemptionReasonFormat1Choice = {
		Strd : ?Text;
		Ustrd : ?Text;
	};

	public type TaxParty4 = {
		RegnId : ?Text;
		TaxXmptnRsn : ?[TaxExemptionReasonFormat1Choice];

		TaxId : ?Text;
		TaxTp : ?Text;
	};

	public type LegalOrganisation2 = {
		Id : ?Text;
		Nm : ?Text;
		RegnDt : ?Int;
		EstblishmtDt : ?Int;
	};

	public type TradeParty5 = {
		PtyId : PartyIdentification135;
		TaxPty : ?[TaxParty4];

		LglOrg : ?LegalOrganisation2;
	};

	public type ContractRegistrationStatementCriteria1 = {
		SpprtgDocJrnl : ?Bool;
		TxJrnl : ?Bool;
		AddtlSpprtgDocJrnl : ?Bool;
		RgltryRuleVldtn : ?Bool;
	};

	public type ContractRegistrationStatementRequest2 = {
		RptgPrd : ReportingPeriod4;
		RptgPty : TradeParty5;
		RegnAgt : BranchAndFinancialInstitutionIdentification6;
		RtrCrit : ?ContractRegistrationStatementCriteria1;
		RegdCtrctId : Text;
		SplmtryData : ?[SupplementaryData1];

		StmtReqId : Text;
	};

	public type ContractRegistrationStatementRequestV03 = {
		GrpHdr : CurrencyControlHeader4;
		SplmtryData : ?[SupplementaryData1];

		StmtReq : [ContractRegistrationStatementRequest2];
	};

}