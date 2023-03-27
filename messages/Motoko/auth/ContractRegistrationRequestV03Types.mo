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

	public type SupplementaryDataEnvelope1 = {
		any : Any;
	};

	public type SupplementaryData1 = {
		Envlp : SupplementaryDataEnvelope1;
		PlcAndNm : ?Text;
	};

	public type SignatureEnvelopeReference = {
		any : Any;
	};

	public type byte[] = {
	};

	public type BinaryFile1 = {
		MIMETp : ?Text;
		NcodgTp : ?Text;
		InclBinryObjct : ?[byte[]];

		CharSet : ?Text;
	};

	public type DocumentGeneralInformation5 = {
		URL : ?Text;
		SndrRcvrSeqId : ?Text;
		DocNb : Text;
		DocNm : ?Text;
		DocTp : Text;
		LkFileHash : ?SignatureEnvelopeReference;
		AttchdBinryFile : BinaryFile1;
		IsseDt : ?Int;
	};

	public type PaymentScheduleType2Code = {
		#BOTH;
		#CNTR;
		#ESTM;
	};

	public type PaymentScheduleType2Choice = {
		Cd : ?PaymentScheduleType2Code;
		Prtry : ?Text;
	};

	public type Priority2Code = {
		#HIGH;
		#NORM;
	};

	public type DocumentIdentification22 = {
		Id : Text;
		DtOfIsse : ?Int;
	};

	public type ContractBalanceType1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type ActiveCurrencyAndAmount = {
		Ccy : Text;
		value : Float;
	};

	public type CreditDebit3Code = {
		#CRDT;
		#DBIT;
	};

	public type ContractBalance1 = {
		Tp : ContractBalanceType1Choice;
		Amt : ActiveCurrencyAndAmount;
		CdtDbtInd : CreditDebit3Code;
	};

	public type PaymentSchedule1 = {
		Amt : ?ActiveCurrencyAndAmount;
		PmtSchdlId : ?Text;
		XpctdDt : ?Int;
		DueDt : ?Int;
		AddtlInf : ?Text;
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

	public type DepositType1Code = {
		#CALL;
		#FITE;
	};

	public type CashCollateral5 = {
		CshAcctId : ?AccountIdentification4Choice;
		DpstAmt : ?ActiveCurrencyAndAmount;
		AsstNb : ?Text;
		CollVal : ActiveCurrencyAndAmount;
		Hrcut : ?Float;
		ValDt : ?Int;
		MtrtyDt : ?Int;
		XchgRate : ?Float;
		DpstTp : ?DepositType1Code;
		CollId : ?Text;
	};

	public type ContractCollateral1 = {
		CollDesc : ?[CashCollateral5];

		TtlAmt : ActiveCurrencyAndAmount;
		AddtlInf : ?Text;
	};

	public type LoanContractTranche1 = {
		Amt : ActiveCurrencyAndAmount;
		DrtnCd : ?Text;
		LastTrchInd : ?Bool;
		XpctdDt : Int;
		DueDt : ?Int;
		TrchNb : Float;
	};

	public type InterestPaymentSchedule1 = {
		Amt : ?ActiveCurrencyAndAmount;
		IntrstSchdlId : ?Text;
		XpctdDt : ?Int;
		DueDt : ?Int;
		AddtlInf : ?Text;
	};

	public type SpecialCondition1 = {
		PmtFrOthrAcct : ?ActiveCurrencyAndAmount;
		IncmgAmt : ActiveCurrencyAndAmount;
		IncmgAmtToOthrAcct : ?ActiveCurrencyAndAmount;
		OutgngAmt : ActiveCurrencyAndAmount;
	};

	public type ExchangeRateType1Code = {
		#AGRD;
		#SALE;
		#SPOT;
	};

	public type ExchangeRate1 = {
		CtrctId : ?Text;
		UnitCcy : ?Text;
		XchgRate : ?Float;
		RateTp : ?ExchangeRateType1Code;
	};

	public type SyndicatedLoan2 = {
		Amt : ?ActiveCurrencyAndAmount;
		Shr : ?Float;
		Lndr : ?TradeParty5;
		Brrwr : TradeParty5;
		XchgRateInf : ?ExchangeRate1;
	};

	public type RateBasis1Code = {
		#DAYS;
		#MNTH;
		#WEEK;
		#YEAR;
	};

	public type InterestRateContractTerm1 = {
		Val : Float;
		Unit : RateBasis1Code;
	};

	public type BenchmarkCurveName2Code = {
		#BBSW;
		#BUBO;
		#CDOR;
		#CIBO;
		#EONA;
		#EONS;
		#EUCH;
		#EURI;
		#EUUS;
		#FUSW;
		#GCFR;
		#ISDA;
		#JIBA;
		#LIBI;
		#LIBO;
		#MAAA;
		#MOSP;
		#NIBO;
		#PFAN;
		#PRBO;
		#STBO;
		#SWAP;
		#TIBO;
		#TLBO;
		#TREA;
		#WIBO;
	};

	public type BenchmarkCurveName4Choice = {
		Nm : ?Text;
		ISIN : ?Text;
		Indx : ?BenchmarkCurveName2Code;
	};

	public type FloatingInterestRate4 = {
		Term : InterestRateContractTerm1;
		BsisPtSprd : Float;
		RefRate : BenchmarkCurveName4Choice;
	};

	public type InterestRate2Choice = {
		Fxd : ?Float;
		Fltg : ?FloatingInterestRate4;
	};

	public type LoanContract3 = {
		Amt : ?ActiveCurrencyAndAmount;
		PmtSchdl : ?[PaymentSchedule1];

		StartDt : ?Int;
		Attchmnt : ?[DocumentGeneralInformation5];

		Sellr : [TradeParty5];
		DrtnCd : ?Text;
		Buyr : [TradeParty5];
		Coll : ?ContractCollateral1;
		Trch : ?[LoanContractTranche1];

		SttlmCcy : ?Text;
		PrlngtnFlg : ?Bool;
		CtrctDocId : DocumentIdentification22;
		IntrstSchdl : ?[InterestPaymentSchedule1];

		SpclConds : ?SpecialCondition1;
		SndctdLn : ?[SyndicatedLoan2];

		IntraCpnyLn : ?Bool;
		MtrtyDt : ?Int;
		IntrstRate : ?InterestRate2Choice;
		LnTpId : ?Text;
	};

	public type InterestPaymentDateRange1 = {
		IntrstSchdlId : ?Text;
		XpctdDt : ?Int;
		DueDt : ?Int;
	};

	public type ShipmentDateRange1 = {
		EarlstShipmntDt : ?Int;
		LatstShipmntDt : ?Int;
	};

	public type ShipmentDateRange2 = {
		EarlstShipmntDt : ?Int;
		LatstShipmntDt : ?Int;
		SubQtyVal : Float;
	};

	public type ShipmentSchedule2Choice = {
		ShipmntDtRg : ?ShipmentDateRange1;
		ShipmntSubSchdl : ?[ShipmentDateRange2];

	};

	public type TradeContract3 = {
		Amt : ?ActiveCurrencyAndAmount;
		PmtSchdl : ?InterestPaymentDateRange1;
		StartDt : ?Int;
		Attchmnt : ?[DocumentGeneralInformation5];

		Sellr : [TradeParty5];
		Buyr : [TradeParty5];
		SttlmCcy : ?Text;
		PrlngtnFlg : ?Bool;
		CtrctDocId : ?DocumentIdentification22;
		ShipmntSchdl : ?ShipmentSchedule2Choice;
		XchgRateInf : ?ExchangeRate1;
		MtrtyDt : ?Int;
		TradTpId : ?Text;
	};

	public type UnderlyingContract3Choice = {
		Ln : ?LoanContract3;
		Trad : ?TradeContract3;
	};

	public type ContractRegistration6 = {
		Attchmnt : ?[DocumentGeneralInformation5];

		PmtSchdlTp : ?PaymentScheduleType2Choice;
		CtrctRegnOpngId : Text;
		Prty : Priority2Code;
		PrvsRegnId : ?[DocumentIdentification22];

		SplmtryData : ?[SupplementaryData1];

		CtrctBal : ?[ContractBalance1];

		AddtlInf : ?Text;
		Ctrct : UnderlyingContract3Choice;
	};

	public type ContractRegistration5 = {
		RptgPty : TradeParty5;
		RegnAgt : BranchAndFinancialInstitutionIdentification6;
		SplmtryData : ?[SupplementaryData1];

		CtrctRegnOpng : [ContractRegistration6];
		CtrctRegnId : Text;
	};

	public type CurrencyControlHeader4 = {
		InitgPty : PartyIdentification135;
		MsgId : Text;
		CreDtTm : Int;
		FwdgAgt : ?BranchAndFinancialInstitutionIdentification6;
		NbOfItms : Text;
	};

	public type ContractRegistrationRequestV03 = {
		CtrctRegn : [ContractRegistration5];
		GrpHdr : CurrencyControlHeader4;
		SplmtryData : ?[SupplementaryData1];

	};

}