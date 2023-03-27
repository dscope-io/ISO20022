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

	public type SkipPayload = {
		any : Any;
	};

	public type PartyAndSignature3 = {
		Pty : PartyIdentification135;
		Sgntr : SkipPayload;
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

	public type AccountStatus3Code = {
		#DELE;
		#DISA;
		#ENAB;
		#FORM;
	};

	public type GenericIdentification13 = {
		Id : Text;
		Issr : Text;
		SchmeNm : ?Text;
	};

	public type CodeOrProprietary1Choice = {
		Cd : ?Text;
		Prtry : ?GenericIdentification13;
	};

	public type Restriction1 = {
		VldFr : Int;
		VldUntil : ?Int;
		RstrctnTp : CodeOrProprietary1Choice;
	};

	public type CommunicationFormat1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type Frequency7Code = {
		#DAIL;
		#INDA;
		#MIAN;
		#MNTH;
		#MOVE;
		#QURT;
		#TEND;
		#WEEK;
		#YEAR;
	};

	public type CommunicationMethod2Code = {
		#EMAL;
		#FAXI;
		#FILE;
		#ONLI;
		#POST;
	};

	public type CommunicationMethod2Choice = {
		Cd : ?CommunicationMethod2Code;
		Prtry : ?Text;
	};

	public type StatementFrequencyAndForm1 = {
		Frmt : CommunicationFormat1Choice;
		Frqcy : Frequency7Code;
		DlvryAdr : Text;
		ComMtd : CommunicationMethod2Choice;
	};

	public type CustomerAccount4 = {
		Id : ?AccountIdentification4Choice;
		Nm : ?Text;
		Tp : ?CashAccountType2Choice;
		Ccy : Text;
		Sts : ?AccountStatus3Code;
		ClngNtfctnAmt : ?Float;
		AcctPurp : ?Text;
		ClsgDt : ?Int;
		MnthlyTxNb : ?Text;
		Rstrctn : ?[Restriction1];

		FlrNtfctnAmt : ?Float;
		AvrgBal : ?Float;
		StmtFrqcyAndFrmt : ?[StatementFrequencyAndForm1];

		MnthlyPmtVal : ?Float;
		MnthlyRcvdVal : ?Float;
	};

	public type MessageIdentification1 = {
		Id : Text;
		CreDtTm : Int;
	};

	public type References3 = {
		ReqRsn : [Text];
		PrcId : MessageIdentification1;
		ReqToBeCmpltdId : MessageIdentification1;
		MsgId : MessageIdentification1;
		AttchdDocNm : ?[Text];

	};

	public type SupplementaryDataEnvelope1 = {
		any : Any;
	};

	public type SupplementaryData1 = {
		Envlp : SupplementaryDataEnvelope1;
		PlcAndNm : ?Text;
	};

	public type ContractDocument1 = {
		Ref : Text;
		SgnOffDt : ?Int;
		Vrsn : ?Text;
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

	public type AccountOpeningAdditionalInformationRequestV03 = {
		Fr : ?OrganisationIdentification29;
		DgtlSgntr : ?[PartyAndSignature3];

		Acct : CustomerAccount4;
		Refs : References3;
		SplmtryData : ?[SupplementaryData1];

		UndrlygMstrAgrmt : ?ContractDocument1;
		AcctSvcrId : BranchAndFinancialInstitutionIdentification6;
		OrgId : OrganisationIdentification29;
	};

}