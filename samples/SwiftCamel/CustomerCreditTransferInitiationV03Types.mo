module {
	public type PaymentMethod3Code = {
		#CHK;
		#TRA;
		#TRF;
	};

	public type ActiveOrHistoricCurrencyAndAmount = {
		Ccy : Text;
		value : Float;
	};

	public type EquivalentAmount2 = {
		Amt : ActiveOrHistoricCurrencyAndAmount;
		CcyOfTrf : Text;
	};

	public type AmountType3Choice = {
		InstdAmt : ?ActiveOrHistoricCurrencyAndAmount;
		EqvtAmt : ?EquivalentAmount2;
	};

	public type TaxParty1 = {
		RegnId : ?Text;
		TaxId : ?Text;
		TaxTp : ?Text;
	};

	public type TaxAuthorisation1 = {
		Nm : ?Text;
		Titl : ?Text;
	};

	public type TaxParty2 = {
		RegnId : ?Text;
		Authstn : ?TaxAuthorisation1;
		TaxId : ?Text;
		TaxTp : ?Text;
	};

	public type TaxRecordPeriod1Code = {
		#HLF1;
		#HLF2;
		#MM01;
		#MM02;
		#MM03;
		#MM04;
		#MM05;
		#MM06;
		#MM07;
		#MM08;
		#MM09;
		#MM10;
		#MM11;
		#MM12;
		#QTR1;
		#QTR2;
		#QTR3;
		#QTR4;
	};

	public type DatePeriodDetails = {
		FrDt : Int;
		ToDt : Int;
	};

	public type TaxPeriod1 = {
		Tp : ?TaxRecordPeriod1Code;
		Yr : ?Int;
		FrToDt : ?DatePeriodDetails;
	};

	public type TaxRecordDetails1 = {
		Amt : ActiveOrHistoricCurrencyAndAmount;
		Prd : ?TaxPeriod1;
	};

	public type TaxAmount1 = {
		Dtls : ?[TaxRecordDetails1];

		Rate : ?Float;
		TaxblBaseAmt : ?ActiveOrHistoricCurrencyAndAmount;
		TtlAmt : ?ActiveOrHistoricCurrencyAndAmount;
	};

	public type TaxRecord1 = {
		Tp : ?Text;
		Prd : ?TaxPeriod1;
		Ctgy : ?Text;
		CertId : ?Text;
		DbtrSts : ?Text;
		TaxAmt : ?TaxAmount1;
		AddtlInf : ?Text;
		CtgyDtls : ?Text;
		FrmsCd : ?Text;
	};

	public type TaxInformation3 = {
		Dt : ?Int;
		Mtd : ?Text;
		SeqNb : ?Float;
		Cdtr : ?TaxParty1;
		Dbtr : ?TaxParty2;
		Rcrd : ?[TaxRecord1];

		TtlTaxAmt : ?ActiveOrHistoricCurrencyAndAmount;
		RefNb : ?Text;
		AdmstnZn : ?Text;
		TtlTaxblBaseAmt : ?ActiveOrHistoricCurrencyAndAmount;
	};

	public type Instruction3Code = {
		#CHQB;
		#HOLD;
		#PHOB;
		#TELB;
	};

	public type InstructionForCreditorAgent1 = {
		Cd : ?Instruction3Code;
		InstrInf : ?Text;
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

	public type OrganisationIdentification4 = {
		BICOrBEI : ?Text;
		Othr : ?[GenericOrganisationIdentification1];

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

	public type Party6Choice = {
		OrgId : ?OrganisationIdentification4;
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

	public type PartyIdentification32 = {
		Id : ?Party6Choice;
		Nm : ?Text;
		PstlAdr : ?PostalAddress6;
		CtctDtls : ?ContactDetails2;
		CtryOfRes : ?Text;
	};

	public type Purpose2Choice = {
		Cd : ?Text;
		Prtry : ?Text;
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

	public type CashAccountType4Code = {
		#CACC;
		#CASH;
		#CHAR;
		#CISH;
		#COMM;
		#LOAN;
		#MGLD;
		#MOMA;
		#NREX;
		#ODFT;
		#ONDP;
		#SACC;
		#SLRY;
		#SVGS;
		#TAXE;
		#TRAS;
	};

	public type CashAccountType2 = {
		Cd : ?CashAccountType4Code;
		Prtry : ?Text;
	};

	public type CashAccount16 = {
		Id : AccountIdentification4Choice;
		Nm : ?Text;
		Tp : ?CashAccountType2;
		Ccy : ?Text;
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

	public type FinancialInstitutionIdentification7 = {
		Nm : ?Text;
		BIC : ?Text;
		PstlAdr : ?PostalAddress6;
		Othr : ?GenericFinancialIdentification1;
		ClrSysMmbId : ?ClearingSystemMemberIdentification2;
	};

	public type BranchData2 = {
		Id : ?Text;
		Nm : ?Text;
		PstlAdr : ?PostalAddress6;
	};

	public type BranchAndFinancialInstitutionIdentification4 = {
		FinInstnId : FinancialInstitutionIdentification7;
		BrnchId : ?BranchData2;
	};

	public type PaymentIdentification1 = {
		InstrId : ?Text;
		EndToEndId : Text;
	};

	public type Priority2Code = {
		#HIGH;
		#NORM;
	};

	public type NameAndAddress10 = {
		Nm : Text;
		Adr : PostalAddress6;
	};

	public type ChequeType2Code = {
		#BCHQ;
		#CCCH;
		#CCHQ;
		#DRFT;
		#ELDR;
	};

	public type ChequeDelivery1Code = {
		#CRCD;
		#CRDB;
		#CRFA;
		#MLCD;
		#MLDB;
		#MLFA;
		#PUCD;
		#PUDB;
		#PUFA;
		#RGCD;
		#RGDB;
		#RGFA;
	};

	public type ChequeDeliveryMethod1Choice = {
		Cd : ?ChequeDelivery1Code;
		Prtry : ?Text;
	};

	public type Cheque6 = {
		ChqMtrtyDt : ?Int;
		RgnlClrZone : ?Text;
		PrtLctn : ?Text;
		InstrPrty : ?Priority2Code;
		DlvrTo : ?NameAndAddress10;
		ChqFr : ?NameAndAddress10;
		ChqNb : ?Text;
		ChqTp : ?ChequeType2Code;
		DlvryMtd : ?ChequeDeliveryMethod1Choice;
		FrmsCd : ?Text;
		MemoFld : ?[Text];

	};

	public type ExchangeRateType1Code = {
		#AGRD;
		#SALE;
		#SPOT;
	};

	public type ExchangeRateInformation1 = {
		CtrctId : ?Text;
		XchgRate : ?Float;
		RateTp : ?ExchangeRateType1Code;
	};

	public type RemittanceLocationMethod2Code = {
		#EDIC;
		#EMAL;
		#FAXI;
		#POST;
		#SMSM;
		#URID;
	};

	public type RemittanceLocation2 = {
		RmtLctnElctrncAdr : ?Text;
		RmtLctnMtd : ?RemittanceLocationMethod2Code;
		RmtId : ?Text;
		RmtLctnPstlAdr : ?NameAndAddress10;
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

	public type PaymentTypeInformation19 = {
		LclInstrm : ?LocalInstrument2Choice;
		SvcLvl : ?ServiceLevel8Choice;
		InstrPrty : ?Priority2Code;
		CtgyPurp : ?CategoryPurpose1Choice;
	};

	public type DocumentType3Code = {
		#DISP;
		#FXDR;
		#PUOR;
		#RADM;
		#RPIN;
		#SCOR;
	};

	public type CreditorReferenceType1Choice = {
		Cd : ?DocumentType3Code;
		Prtry : ?Text;
	};

	public type CreditorReferenceType2 = {
		Issr : ?Text;
		CdOrPrtry : CreditorReferenceType1Choice;
	};

	public type CreditorReferenceInformation2 = {
		Tp : ?CreditorReferenceType2;
		Ref : ?Text;
	};

	public type CreditDebitCode = {
		#CRDT;
		#DBIT;
	};

	public type DocumentAdjustment1 = {
		Amt : ActiveOrHistoricCurrencyAndAmount;
		Rsn : ?Text;
		CdtDbtInd : ?CreditDebitCode;
		AddtlInf : ?Text;
	};

	public type RemittanceAmount1 = {
		DscntApldAmt : ?ActiveOrHistoricCurrencyAndAmount;
		DuePyblAmt : ?ActiveOrHistoricCurrencyAndAmount;
		AdjstmntAmtAndRsn : ?[DocumentAdjustment1];

		CdtNoteAmt : ?ActiveOrHistoricCurrencyAndAmount;
		TaxAmt : ?ActiveOrHistoricCurrencyAndAmount;
		RmtdAmt : ?ActiveOrHistoricCurrencyAndAmount;
	};

	public type DocumentType5Code = {
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
		#SBIN;
		#SOAC;
		#TSUT;
		#VCHR;
	};

	public type ReferredDocumentType1Choice = {
		Cd : ?DocumentType5Code;
		Prtry : ?Text;
	};

	public type ReferredDocumentType2 = {
		Issr : ?Text;
		CdOrPrtry : ReferredDocumentType1Choice;
	};

	public type ReferredDocumentInformation3 = {
		Nb : ?Text;
		Tp : ?ReferredDocumentType2;
		RltdDt : ?Int;
	};

	public type StructuredRemittanceInformation7 = {
		Invcr : ?PartyIdentification32;
		CdtrRefInf : ?CreditorReferenceInformation2;
		AddtlRmtInf : ?[Text];

		RfrdDocAmt : ?RemittanceAmount1;
		RfrdDocInf : ?[ReferredDocumentInformation3];

		Invcee : ?PartyIdentification32;
	};

	public type RemittanceInformation5 = {
		Strd : ?[StructuredRemittanceInformation7];

		Ustrd : ?[Text];

	};

	public type StructuredRegulatoryReporting3 = {
		Cd : ?Text;
		Dt : ?Int;
		Tp : ?Text;
		Amt : ?ActiveOrHistoricCurrencyAndAmount;
		Inf : ?[Text];

		Ctry : ?Text;
	};

	public type RegulatoryAuthority2 = {
		Nm : ?Text;
		Ctry : ?Text;
	};

	public type RegulatoryReportingType1Code = {
		#BOTH;
		#CRED;
		#DEBT;
	};

	public type RegulatoryReporting3 = {
		Dtls : ?[StructuredRegulatoryReporting3];

		Authrty : ?RegulatoryAuthority2;
		DbtCdtRptgInd : ?RegulatoryReportingType1Code;
	};

	public type ChargeBearerType1Code = {
		#CRED;
		#DEBT;
		#SHAR;
		#SLEV;
	};

	public type CreditTransferTransactionInformation10 = {
		Amt : AmountType3Choice;
		Tax : ?TaxInformation3;
		InstrForCdtrAgt : ?[InstructionForCreditorAgent1];

		Cdtr : ?PartyIdentification32;
		Purp : ?Purpose2Choice;
		IntrmyAgt1Acct : ?CashAccount16;
		IntrmyAgt1 : ?BranchAndFinancialInstitutionIdentification4;
		IntrmyAgt2 : ?BranchAndFinancialInstitutionIdentification4;
		IntrmyAgt3 : ?BranchAndFinancialInstitutionIdentification4;
		PmtId : PaymentIdentification1;
		ChqInstr : ?Cheque6;
		CdtrAcct : ?CashAccount16;
		IntrmyAgt3Acct : ?CashAccount16;
		InstrForDbtrAgt : ?Text;
		XchgRateInf : ?ExchangeRateInformation1;
		UltmtCdtr : ?PartyIdentification32;
		UltmtDbtr : ?PartyIdentification32;
		RltdRmtInf : ?[RemittanceLocation2];

		CdtrAgtAcct : ?CashAccount16;
		PmtTpInf : ?PaymentTypeInformation19;
		IntrmyAgt2Acct : ?CashAccount16;
		RmtInf : ?RemittanceInformation5;
		RgltryRptg : ?[RegulatoryReporting3];

		CdtrAgt : ?BranchAndFinancialInstitutionIdentification4;
		ChrgBr : ?ChargeBearerType1Code;
	};

	public type PaymentInstructionInformation3 = {
		PmtMtd : PaymentMethod3Code;
		ReqdExctnDt : Int;
		CdtTrfTxInf : [CreditTransferTransactionInformation10];
		Dbtr : PartyIdentification32;
		CtrlSum : ?Float;
		ChrgsAcctAgt : ?BranchAndFinancialInstitutionIdentification4;
		BtchBookg : ?Bool;
		PmtInfId : Text;
		DbtrAcct : CashAccount16;
		DbtrAgt : BranchAndFinancialInstitutionIdentification4;
		ChrgsAcct : ?CashAccount16;
		UltmtDbtr : ?PartyIdentification32;
		DbtrAgtAcct : ?CashAccount16;
		NbOfTxs : ?Text;
		PmtTpInf : ?PaymentTypeInformation19;
		PoolgAdjstmntDt : ?Int;
		ChrgBr : ?ChargeBearerType1Code;
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

	public type GroupHeader32 = {
		CtrlSum : ?Float;
		InitgPty : PartyIdentification32;
		Authstn : ?[Authorisation1Choice];

		NbOfTxs : Text;
		MsgId : Text;
		CreDtTm : Int;
		FwdgAgt : ?BranchAndFinancialInstitutionIdentification4;
	};

	public type CustomerCreditTransferInitiationV03 = {
		PmtInf : [PaymentInstructionInformation3];
		GrpHdr : GroupHeader32;
	};

}