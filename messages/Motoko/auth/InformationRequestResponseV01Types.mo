module {
	public type StatusResponse1Code = {
		#COMP;
		#NRES;
		#PART;
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

	public type OrganisationIdentificationSchemeName1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type GenericOrganisationIdentification1 = {
		Id : Text;
		Issr : ?Text;
		SchmeNm : ?OrganisationIdentificationSchemeName1Choice;
	};

	public type OrganisationIdentification8 = {
		Othr : ?[GenericOrganisationIdentification1];

		AnyBIC : ?Text;
	};

	public type DateAndPlaceOfBirth = {
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

	public type PersonIdentification5 = {
		DtAndPlcOfBirth : ?DateAndPlaceOfBirth;
		Othr : ?[GenericPersonIdentification1];

	};

	public type Party11Choice = {
		OrgId : ?OrganisationIdentification8;
		PrvtId : ?PersonIdentification5;
	};

	public type AddressType2Code = {
		#ADDR;
		#BIZZ;
		#DLVY;
		#HOME;
		#MLTO;
		#PBOX;
	};

	public type PostalAddress6 = {
		Ctry : ?Text;
		Dept : ?Text;
		StrtNm : ?Text;
		PstCd : ?Text;
		AdrLine : ?[Text];

		TwnNm : ?Text;
		AdrTp : ?AddressType2Code;
		CtrySubDvsn : ?Text;
		BldgNb : ?Text;
		SubDept : ?Text;
	};

	public type NamePrefix1Code = {
		#DOCT;
		#MADM;
		#MISS;
		#MIST;
	};

	public type ContactDetails2 = {
		Nm : ?Text;
		PhneNb : ?Text;
		NmPrfx : ?NamePrefix1Code;
		Othr : ?Text;
		FaxNb : ?Text;
		MobNb : ?Text;
		EmailAdr : ?Text;
	};

	public type PartyIdentification43 = {
		Id : ?Party11Choice;
		Nm : ?Text;
		PstlAdr : ?PostalAddress6;
		CtctDtls : ?ContactDetails2;
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

	public type FinancialInstitutionIdentification8 = {
		Nm : ?Text;
		PstlAdr : ?PostalAddress6;
		BICFI : ?Text;
		Othr : ?GenericFinancialIdentification1;
		ClrSysMmbId : ?ClearingSystemMemberIdentification2;
	};

	public type BranchData2 = {
		Id : ?Text;
		Nm : ?Text;
		PstlAdr : ?PostalAddress6;
	};

	public type BranchAndFinancialInstitutionIdentification5 = {
		FinInstnId : FinancialInstitutionIdentification8;
		BrnchId : ?BranchData2;
	};

	public type CashAccount25 = {
		Id : AccountIdentification4Choice;
		Nm : ?Text;
		Tp : ?CashAccountType2Choice;
		Ccy : ?Text;
		Ownr : ?PartyIdentification43;
		Svcr : ?BranchAndFinancialInstitutionIdentification5;
	};

	public type AuthorityRequestType1 = {
		MsgNm : ?Text;
		MsgNmId : Text;
	};

	public type InvestigatedParties1Code = {
		#ALLP;
		#OWNE;
	};

	public type InvestigatedParties1Choice = {
		Cd : ?InvestigatedParties1Code;
		Prtry : ?Text;
	};

	public type AccountAndParties1 = {
		Id : CashAccount25;
		AuthrtyReqTp : [AuthorityRequestType1];
		InvstgtdPties : InvestigatedParties1Choice;
	};

	public type TransactionRequestType1Code = {
		#DTTX;
		#OREC;
	};

	public type RequestType1 = {
		Nb : Text;
		Tp : [TransactionRequestType1Code];
		AddtlInf : ?Text;
	};

	public type AuthorityInvestigation2 = {
		Tp : AuthorityRequestType1;
		AddtlInf : ?Text;
		InvstgtdRoles : InvestigatedParties1Choice;
		AddtlInvstgtdPties : ?InvestigatedParties1Choice;
	};

	public type CustomerIdentification1 = {
		Pty : PartyIdentification43;
		AuthrtyReq : [AuthorityInvestigation2];
	};

	public type PaymentInstrumentType1 = {
		AuthrtyReqTp : [AuthorityRequestType1];
		AddtlInf : ?Text;
		CardNb : Text;
	};

	public type SearchCriteria1Choice = {
		Acct : ?AccountAndParties1;
		OrgnlTxNb : ?[RequestType1];

		CstmrId : ?CustomerIdentification1;
		PmtInstrm : ?PaymentInstrumentType1;
	};

	public type SupplementaryDataEnvelope1 = {
		any : Any;
	};

	public type SupplementaryData1 = {
		Envlp : SupplementaryDataEnvelope1;
		PlcAndNm : ?Text;
	};

	public type DatePeriodDetails = {
		FrDt : Int;
		ToDt : Int;
	};

	public type DateTimePeriodDetails = {
		ToDtTm : Int;
		FrDtTm : Int;
	};

	public type DateOrDateTimePeriodChoice = {
		Dt : ?DatePeriodDetails;
		DtTm : ?DateTimePeriodDetails;
	};

	public type InvestigationStatus1Code = {
		#FOUN;
		#NFOU;
		#NOAP;
	};

	public type InvestigationResult1Choice = {
		Rslt : ?SupplementaryDataEnvelope1;
		InvstgtnSts : ?InvestigationStatus1Code;
	};

	public type ReturnIndicator1 = {
		RspnPrd : ?DateOrDateTimePeriodChoice;
		InvstgtnRslt : InvestigationResult1Choice;
		AuthrtyReqTp : AuthorityRequestType1;
		AddtlInf : ?Text;
	};

	public type InformationRequestResponseV01 = {
		RspnSts : StatusResponse1Code;
		SchCrit : SearchCriteria1Choice;
		RspnId : Text;
		InvstgtnId : Text;
		SplmtryData : ?[SupplementaryData1];

		RtrInd : [ReturnIndicator1];
	};

}