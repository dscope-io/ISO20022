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

	public type CashAccountType2Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type BalanceType11Choice = {
		Cd : ?Text;
		Prtry : ?Text;
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

	public type BalanceCounterparty1Code = {
		#BILA;
		#MULT;
	};

	public type DatePeriod2 = {
		FrDt : Int;
		ToDt : Int;
	};

	public type DatePeriodSearch1Choice = {
		NEQDt : ?Int;
		EQDt : ?Int;
		FrDt : ?Int;
		ToDt : ?Int;
		FrToDt : ?DatePeriod2;
	};

	public type DateTimePeriod1 = {
		ToDtTm : Int;
		FrDtTm : Int;
	};

	public type DateTimeSearch2Choice = {
		NEQDtTm : ?Int;
		EQDtTm : ?Int;
		ToDtTm : ?Int;
		FrDtTm : ?Int;
		FrToDtTm : ?DateTimePeriod1;
	};

	public type DateAndDateTimeSearch4Choice = {
		Dt : ?DatePeriodSearch1Choice;
		DtTm : ?DateTimeSearch2Choice;
	};

	public type CashBalance12 = {
		Tp : ?[BalanceType11Choice];

		CtrPtyId : ?[BranchAndFinancialInstitutionIdentification6];

		CtrPtyTp : BalanceCounterparty1Code;
		ValDt : ?[DateAndDateTimeSearch4Choice];

		PrcgDt : ?DateAndDateTimeSearch4Choice;
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

	public type AccountIdentificationSearchCriteria2Choice = {
		EQ : ?AccountIdentification4Choice;
		CTTxt : ?Text;
		NCTTxt : ?Text;
	};

	public type CashAccountSearchCriteria7 = {
		Tp : ?[CashAccountType2Choice];

		Bal : ?[CashBalance12];

		Ccy : ?[Text];

		AcctOwnr : ?PartyIdentification135;
		AcctSvcr : ?BranchAndFinancialInstitutionIdentification6;
		AcctId : ?[AccountIdentificationSearchCriteria2Choice];

	};

	public type CashBalanceReturnCriteria2 = {
		PrcgDtInd : ?Bool;
		StsInd : ?Bool;
		NbOfPmtsInd : ?Bool;
		ValDtInd : ?Bool;
		TpInd : ?Bool;
	};

	public type CashAccountReturnCriteria5 = {
		CcyInd : ?Bool;
		NmInd : ?Bool;
		StgOrdrInd : ?Bool;
		BilBalRtrCrit : ?CashBalanceReturnCriteria2;
		AcctSvcrInd : ?Bool;
		MulBalRtrCrit : ?CashBalanceReturnCriteria2;
		MulLmtInd : ?Bool;
		AcctOwnrInd : ?Bool;
		TpInd : ?Bool;
		BilLmtInd : ?Bool;
	};

	public type AccountCriteria7 = {
		SchCrit : ?[CashAccountSearchCriteria7];

		NewQryNm : ?Text;
		RtrCrit : ?CashAccountReturnCriteria5;
	};

	public type AccountCriteria3Choice = {
		NewCrit : ?AccountCriteria7;
		QryNm : ?Text;
	};

	public type QueryType2Code = {
		#ALLL;
		#CHNG;
		#DELD;
		#MODF;
	};

	public type AccountQuery3 = {
		AcctCrit : ?AccountCriteria3Choice;
		QryTp : ?QueryType2Code;
	};

	public type GetAccountV07 = {
		MsgHdr : MessageHeader9;
		SplmtryData : ?[SupplementaryData1];

		AcctQryDef : ?AccountQuery3;
	};

}