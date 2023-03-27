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

	public type PartyIdentification137 = {
		Id : ?PersonIdentification13;
		Nm : ?Text;
		PstlAdr : ?PostalAddress24;
		CtctDtls : ?Contact4;
		CtryOfRes : ?Text;
	};

	public type Modification1Code = {
		#ADDD;
		#DELE;
		#MODI;
		#NOCH;
	};

	public type PartyModification2 = {
		PtyId : PartyIdentification137;
		ModCd : ?Modification1Code;
	};

	public type AddressModification2 = {
		Adr : PostalAddress24;
		ModCd : ?Modification1Code;
	};

	public type TradingNameModification1 = {
		TradgNm : Text;
		ModCd : ?Modification1Code;
	};

	public type FullLegalNameModification1 = {
		FullLglNm : Text;
		ModCd : ?Modification1Code;
	};

	public type OrganisationModification2 = {
		RprtvOffcr : ?[PartyModification2];

		MainMndtHldr : ?[PartyModification2];

		BizAdr : ?AddressModification2;
		RegnDt : ?Int;
		Sndr : ?[PartyModification2];

		TradgNm : ?TradingNameModification1;
		BllgAdr : ?AddressModification2;
		LglRprtv : ?[PartyModification2];

		OprlAdr : ?AddressModification2;
		FullLglNm : FullLegalNameModification1;
		TrsrMgr : ?PartyModification2;
		CtryOfOpr : Text;
		OrgId : OrganisationIdentification29;
		LglAdr : AddressModification2;
	};

	public type Party38Choice = {
		OrgId : ?OrganisationIdentification29;
		PrvtId : ?PersonIdentification13;
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

	public type NameModification1 = {
		Nm : Text;
		ModCd : ?Modification1Code;
	};

	public type CashAccountType2Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type TypeModification1 = {
		Tp : CashAccountType2Choice;
		ModCd : ?Modification1Code;
	};

	public type AccountStatus3Code = {
		#DELE;
		#DISA;
		#ENAB;
		#FORM;
	};

	public type AccountStatusModification1 = {
		Sts : AccountStatus3Code;
		ModCd : ?Modification1Code;
	};

	public type AmountModification1 = {
		Amt : Float;
		ModCd : ?Modification1Code;
	};

	public type PurposeModification1 = {
		Purp : Text;
		ModCd : ?Modification1Code;
	};

	public type DateModification1 = {
		Dt : Int;
		ModCd : ?Modification1Code;
	};

	public type NumberModification1 = {
		Nb : Text;
		ModCd : ?Modification1Code;
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

	public type RestrictionModification1 = {
		Rstrctn : Restriction1;
		ModCd : ?Modification1Code;
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

	public type StatementFrequencyAndFormModification1 = {
		ModCd : ?Modification1Code;
		StmtFrqcyAndForm : StatementFrequencyAndForm1;
	};

	public type CustomerAccountModification1 = {
		Id : [AccountIdentification4Choice];
		Nm : ?NameModification1;
		Tp : ?TypeModification1;
		Ccy : Text;
		Sts : ?AccountStatusModification1;
		ClngNtfctnAmt : ?AmountModification1;
		AcctPurp : ?PurposeModification1;
		ClsgDt : ?DateModification1;
		MnthlyTxNb : ?NumberModification1;
		Rstrctn : ?[RestrictionModification1];

		FlrNtfctnAmt : ?AmountModification1;
		AvrgBal : ?AmountModification1;
		StmtFrqcyAndFrmt : ?[StatementFrequencyAndFormModification1];

		MnthlyPmtVal : ?AmountModification1;
		MnthlyRcvdVal : ?AmountModification1;
	};

	public type MessageIdentification1 = {
		Id : Text;
		CreDtTm : Int;
	};

	public type References4 = {
		PrcId : MessageIdentification1;
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

	public type AccountContract2 = {
		UrgcyFlg : ?Bool;
		TrgtClsgDt : ?Int;
		TrgtGoLiveDt : ?Int;
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

	public type AccountExcludedMandateMaintenanceAmendmentRequestV03 = {
		Fr : ?OrganisationIdentification29;
		Org : OrganisationModification2;
		DgtlSgntr : ?[PartyAndSignature3];

		Acct : CustomerAccountModification1;
		Refs : References4;
		SplmtryData : ?[SupplementaryData1];

		UndrlygMstrAgrmt : ?ContractDocument1;
		CtrctDts : ?AccountContract2;
		AcctSvcrId : BranchAndFinancialInstitutionIdentification6;
	};

}