module {
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

	public type Authorisation1Code = {
		#AUTH;
		#FDET;
		#FSUM;
		#ILEV;
	};

	public type Authorisation1Choice = {
		Cd : ?Authorisation1Code;
		Prtry : ?Text;
	};

	public type GroupHeader80 = {
		InstdAgt : ?BranchAndFinancialInstitutionIdentification6;
		InstgAgt : ?BranchAndFinancialInstitutionIdentification6;
		InitgPty : ?PartyIdentification135;
		Authstn : ?[Authorisation1Choice];

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

	public type LocalInstrument2Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type ServiceLevel8Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type CategoryPurpose1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type MandateClassification1Code = {
		#FIXE;
		#USGB;
		#VARI;
	};

	public type MandateClassification1Choice = {
		Cd : ?MandateClassification1Code;
		Prtry : ?Text;
	};

	public type MandateTypeInformation2 = {
		LclInstrm : ?LocalInstrument2Choice;
		SvcLvl : ?ServiceLevel8Choice;
		CtgyPurp : ?CategoryPurpose1Choice;
		Clssfctn : ?MandateClassification1Choice;
	};

	public type MandateSetupReason1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type DocumentType6Code = {
		#AROI;
		#BOLD;
		#CINV;
		#CMCN;
		#CNFA;
		#CREN;
		#DEBN;
		#DISP;
		#DNFA;
		#HIRI;
		#MSIN;
		#PUOR;
		#SBIN;
		#SOAC;
		#TSUT;
		#VCHR;
	};

	public type ReferredDocumentType3Choice = {
		Cd : ?DocumentType6Code;
		Prtry : ?Text;
	};

	public type ReferredDocumentType4 = {
		Issr : ?Text;
		CdOrPrtry : ReferredDocumentType3Choice;
	};

	public type ReferredMandateDocument1 = {
		Nb : ?Text;
		Tp : ?ReferredDocumentType4;
		RltdDt : ?Int;
		CdtrRef : ?Text;
	};

	public type AuthenticationChannel1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type MandateAuthentication1 = {
		Dt : ?Int;
		MsgAuthntcnCd : ?Text;
		Chanl : ?AuthenticationChannel1Choice;
	};

	public type ActiveCurrencyAndAmount = {
		Ccy : Text;
		value : Float;
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

	public type Frequency10Code = {
		#MIAN;
		#NEVR;
		#QURT;
		#RATE;
		#YEAR;
	};

	public type Frequency37Choice = {
		Cd : ?Frequency10Code;
		Prtry : ?Text;
	};

	public type boolean = {
	};

	public type MandateAdjustment1 = {
		Amt : ?ActiveCurrencyAndAmount;
		Ctgy : ?Frequency37Choice;
		Rate : ?Float;
		DtAdjstmntRuleInd : ?boolean;
	};

	public type SequenceType2Code = {
		#OOFF;
		#RCUR;
	};

	public type DatePeriod3 = {
		FrDt : Int;
		ToDt : ?Int;
	};

	public type Frequency6Code = {
		#ADHO;
		#DAIL;
		#FRTN;
		#INDA;
		#MIAN;
		#MNTH;
		#QURT;
		#WEEK;
		#YEAR;
	};

	public type FrequencyPeriod1 = {
		Tp : Frequency6Code;
		CntPerPrd : Float;
	};

	public type FrequencyAndMoment1 = {
		Tp : Frequency6Code;
		PtInTm : Text;
	};

	public type Frequency36Choice = {
		Tp : ?Frequency6Code;
		Prd : ?FrequencyPeriod1;
		PtInTm : ?FrequencyAndMoment1;
	};

	public type MandateOccurrences5 = {
		SeqTp : SequenceType2Code;
		Drtn : ?DatePeriod3;
		FnlColltnDt : ?Int;
		Frqcy : ?Frequency36Choice;
		FrstColltnDt : ?Int;
	};

	public type Mandate18 = {
		Tp : ?MandateTypeInformation2;
		Rsn : ?MandateSetupReason1Choice;
		RfrdDoc : ?[ReferredMandateDocument1];

		Authntcn : ?MandateAuthentication1;
		CdtrSchmeId : ?PartyIdentification135;
		MndtReqId : ?Text;
		Cdtr : ?PartyIdentification135;
		Dbtr : ?PartyIdentification135;
		FrstColltnAmt : ?ActiveCurrencyAndAmount;
		DbtrAcct : ?CashAccount40;
		DbtrAgt : ?BranchAndFinancialInstitutionIdentification6;
		MndtRef : ?Text;
		MndtId : Text;
		CdtrAcct : ?CashAccount40;
		UltmtCdtr : ?PartyIdentification135;
		UltmtDbtr : ?PartyIdentification135;
		Adjstmnt : ?MandateAdjustment1;
		TrckgInd : ?boolean;
		ColltnAmt : ?ActiveCurrencyAndAmount;
		Ocrncs : ?MandateOccurrences5;
		MaxAmt : ?ActiveCurrencyAndAmount;
		CdtrAgt : ?BranchAndFinancialInstitutionIdentification6;
	};

	public type MandateReason1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type MandateAmendmentReason2 = {
		Rsn : MandateReason1Choice;
		Orgtr : ?PartyIdentification135;
		AddtlInf : ?[Text];

	};

	public type OriginalMessageInformation1 = {
		MsgId : Text;
		CreDtTm : ?Int;
		MsgNmId : Text;
	};

	public type ActiveOrHistoricCurrencyAndAmount = {
		Ccy : Text;
		value : Float;
	};

	public type Mandate17 = {
		Tp : ?MandateTypeInformation2;
		Rsn : ?MandateSetupReason1Choice;
		RfrdDoc : ?[ReferredMandateDocument1];

		Authntcn : ?MandateAuthentication1;
		CdtrSchmeId : ?PartyIdentification135;
		MndtReqId : ?Text;
		Cdtr : PartyIdentification135;
		Dbtr : PartyIdentification135;
		FrstColltnAmt : ?ActiveOrHistoricCurrencyAndAmount;
		DbtrAcct : ?CashAccount40;
		DbtrAgt : BranchAndFinancialInstitutionIdentification6;
		MndtRef : ?Text;
		MndtId : Text;
		CdtrAcct : ?CashAccount40;
		UltmtCdtr : ?PartyIdentification135;
		UltmtDbtr : ?PartyIdentification135;
		Adjstmnt : ?MandateAdjustment1;
		TrckgInd : ?boolean;
		ColltnAmt : ?ActiveOrHistoricCurrencyAndAmount;
		Ocrncs : ?MandateOccurrences5;
		MaxAmt : ?ActiveOrHistoricCurrencyAndAmount;
		CdtrAgt : ?BranchAndFinancialInstitutionIdentification6;
	};

	public type OriginalMandate9Choice = {
		OrgnlMndt : ?Mandate17;
		OrgnlMndtId : ?Text;
	};

	public type MandateAmendment7 = {
		Mndt : Mandate18;
		AmdmntRsn : MandateAmendmentReason2;
		SplmtryData : ?[SupplementaryData1];

		OrgnlMsgInf : ?OriginalMessageInformation1;
		OrgnlMndt : OriginalMandate9Choice;
	};

	public type MandateAmendmentRequestV07 = {
		GrpHdr : GroupHeader80;
		SplmtryData : ?[SupplementaryData1];

		UndrlygAmdmntDtls : [MandateAmendment7];
	};

}