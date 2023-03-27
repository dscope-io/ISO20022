module {
	public type ModificationStatusReason1Choice = {
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

	public type Case5 = {
		Id : Text;
		Cretr : Party40Choice;
		ReopCaseIndctn : ?Bool;
	};

	public type InvestigationStatus5Choice = {
		RjctdMod : ?[ModificationStatusReason1Choice];

		Conf : ?Text;
		DplctOf : ?Case5;
		AssgnmtCxlConf : ?Bool;
	};

	public type CaseAssignment5 = {
		Id : Text;
		Assgne : Party40Choice;
		Assgnr : Party40Choice;
		CreDtTm : Int;
	};

	public type CancellationStatusReason3Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type CancellationStatusReason4 = {
		Rsn : ?CancellationStatusReason3Choice;
		Orgtr : ?PartyIdentification135;
		AddtlInf : ?[Text];

	};

	public type ActiveOrHistoricCurrencyAndAmount = {
		Ccy : Text;
		value : Float;
	};

	public type EquivalentAmount2 = {
		Amt : ActiveOrHistoricCurrencyAndAmount;
		CcyOfTrf : Text;
	};

	public type AmountType4Choice = {
		InstdAmt : ?ActiveOrHistoricCurrencyAndAmount;
		EqvtAmt : ?EquivalentAmount2;
	};

	public type PaymentMethod4Code = {
		#DD;
		#CHK;
		#TRA;
		#TRF;
	};

	public type DateAndDateTime2Choice = {
		Dt : ?Int;
		DtTm : ?Int;
	};

	public type Purpose2Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type SettlementMethod1Code = {
		#CLRG;
		#COVE;
		#INDA;
		#INGA;
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

	public type ClearingSystemIdentification3Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type SettlementInstruction11 = {
		SttlmMtd : SettlementMethod1Code;
		SttlmAcct : ?CashAccount40;
		ClrSys : ?ClearingSystemIdentification3Choice;
		InstdRmbrsmntAgtAcct : ?CashAccount40;
		InstgRmbrsmntAgt : ?BranchAndFinancialInstitutionIdentification6;
		InstgRmbrsmntAgtAcct : ?CashAccount40;
		InstdRmbrsmntAgt : ?BranchAndFinancialInstitutionIdentification6;
		ThrdRmbrsmntAgtAcct : ?CashAccount40;
		ThrdRmbrsmntAgt : ?BranchAndFinancialInstitutionIdentification6;
	};

	public type MandateSetupReason1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
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

	public type AmendmentInformationDetails14 = {
		OrgnlTrckgDays : ?Text;
		OrgnlDbtrAgt : ?BranchAndFinancialInstitutionIdentification6;
		OrgnlFnlColltnDt : ?Int;
		OrgnlCdtrAgtAcct : ?CashAccount40;
		OrgnlDbtrAgtAcct : ?CashAccount40;
		OrgnlDbtrAcct : ?CashAccount40;
		OrgnlDbtr : ?PartyIdentification135;
		OrgnlCdtrAgt : ?BranchAndFinancialInstitutionIdentification6;
		OrgnlMndtId : ?Text;
		OrgnlFrqcy : ?Frequency36Choice;
		OrgnlRsn : ?MandateSetupReason1Choice;
		OrgnlCdtrSchmeId : ?PartyIdentification135;
	};

	public type MandateRelatedInformation15 = {
		Rsn : ?MandateSetupReason1Choice;
		ElctrncSgntr : ?Text;
		TrckgDays : ?Text;
		AmdmntInfDtls : ?AmendmentInformationDetails14;
		AmdmntInd : ?Bool;
		MndtId : ?Text;
		FnlColltnDt : ?Int;
		Frqcy : ?Frequency36Choice;
		DtOfSgntr : ?Int;
		FrstColltnDt : ?Int;
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

	public type byte[] = {
	};

	public type CreditTransferMandateData1 = {
		Tp : ?MandateTypeInformation2;
		Rsn : ?MandateSetupReason1Choice;
		ElctrncSgntr : ?[byte[]];

		FnlPmtDt : ?Int;
		DtOfVrfctn : ?Int;
		MndtId : ?Text;
		FrstPmtDt : ?Int;
		Frqcy : ?Frequency36Choice;
		DtOfSgntr : ?Int;
	};

	public type MandateRelatedData2Choice = {
		DrctDbtMndt : ?MandateRelatedInformation15;
		CdtTrfMndt : ?CreditTransferMandateData1;
	};

	public type SequenceType3Code = {
		#FNAL;
		#FRST;
		#OOFF;
		#RCUR;
		#RPRE;
	};

	public type Priority2Code = {
		#HIGH;
		#NORM;
	};

	public type ClearingChannel2Code = {
		#BOOK;
		#MPNS;
		#RTGS;
		#RTNS;
	};

	public type PaymentTypeInformation27 = {
		SeqTp : ?SequenceType3Code;
		LclInstrm : ?LocalInstrument2Choice;
		SvcLvl : ?[ServiceLevel8Choice];

		InstrPrty : ?Priority2Code;
		CtgyPurp : ?CategoryPurpose1Choice;
		ClrChanl : ?ClearingChannel2Code;
	};

	public type GarnishmentType1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type GarnishmentType1 = {
		Issr : ?Text;
		CdOrPrtry : GarnishmentType1Choice;
	};

	public type Garnishment3 = {
		Dt : ?Int;
		Tp : GarnishmentType1;
		GrnshmtAdmstr : ?PartyIdentification135;
		RefNb : ?Text;
		MplyeeTermntnInd : ?Bool;
		FmlyMdclInsrncInd : ?Bool;
		Grnshee : ?PartyIdentification135;
		RmtdAmt : ?ActiveOrHistoricCurrencyAndAmount;
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

	public type DiscountAmountType1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type DiscountAmountAndType1 = {
		Tp : ?DiscountAmountType1Choice;
		Amt : ActiveOrHistoricCurrencyAndAmount;
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

	public type TaxAmountType1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type TaxAmountAndType1 = {
		Tp : ?TaxAmountType1Choice;
		Amt : ActiveOrHistoricCurrencyAndAmount;
	};

	public type RemittanceAmount2 = {
		DscntApldAmt : ?[DiscountAmountAndType1];

		DuePyblAmt : ?ActiveOrHistoricCurrencyAndAmount;
		AdjstmntAmtAndRsn : ?[DocumentAdjustment1];

		CdtNoteAmt : ?ActiveOrHistoricCurrencyAndAmount;
		TaxAmt : ?[TaxAmountAndType1];

		RmtdAmt : ?ActiveOrHistoricCurrencyAndAmount;
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

	public type DocumentLineType1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type DocumentLineType1 = {
		Issr : ?Text;
		CdOrPrtry : DocumentLineType1Choice;
	};

	public type DocumentLineIdentification1 = {
		Nb : ?Text;
		Tp : ?DocumentLineType1;
		RltdDt : ?Int;
	};

	public type RemittanceAmount3 = {
		DscntApldAmt : ?[DiscountAmountAndType1];

		DuePyblAmt : ?ActiveOrHistoricCurrencyAndAmount;
		AdjstmntAmtAndRsn : ?[DocumentAdjustment1];

		CdtNoteAmt : ?ActiveOrHistoricCurrencyAndAmount;
		TaxAmt : ?[TaxAmountAndType1];

		RmtdAmt : ?ActiveOrHistoricCurrencyAndAmount;
	};

	public type DocumentLineInformation1 = {
		Id : [DocumentLineIdentification1];
		Amt : ?RemittanceAmount3;
		Desc : ?Text;
	};

	public type ReferredDocumentInformation7 = {
		Nb : ?Text;
		Tp : ?ReferredDocumentType4;
		RltdDt : ?Int;
		LineDtls : ?[DocumentLineInformation1];

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

	public type DatePeriod2 = {
		FrDt : Int;
		ToDt : Int;
	};

	public type TaxPeriod3 = {
		Tp : ?TaxRecordPeriod1Code;
		Yr : ?Int;
		FrToDt : ?DatePeriod2;
	};

	public type TaxRecordDetails3 = {
		Amt : ActiveOrHistoricCurrencyAndAmount;
		Prd : ?TaxPeriod3;
	};

	public type TaxAmount3 = {
		Dtls : ?[TaxRecordDetails3];

		Rate : ?Float;
		TaxblBaseAmt : ?ActiveOrHistoricCurrencyAndAmount;
		TtlAmt : ?ActiveOrHistoricCurrencyAndAmount;
	};

	public type TaxRecord3 = {
		Tp : ?Text;
		Prd : ?TaxPeriod3;
		Ctgy : ?Text;
		CertId : ?Text;
		DbtrSts : ?Text;
		TaxAmt : ?TaxAmount3;
		AddtlInf : ?Text;
		CtgyDtls : ?Text;
		FrmsCd : ?Text;
	};

	public type TaxData1 = {
		Dt : ?Int;
		Mtd : ?Text;
		SeqNb : ?Float;
		Cdtr : ?TaxParty1;
		Dbtr : ?TaxParty2;
		AdmstnZone : ?Text;
		Rcrd : ?[TaxRecord3];

		TtlTaxAmt : ?ActiveOrHistoricCurrencyAndAmount;
		RefNb : ?Text;
		UltmtDbtr : ?TaxParty2;
		TtlTaxblBaseAmt : ?ActiveOrHistoricCurrencyAndAmount;
	};

	public type StructuredRemittanceInformation17 = {
		GrnshmtRmt : ?Garnishment3;
		Invcr : ?PartyIdentification135;
		CdtrRefInf : ?CreditorReferenceInformation2;
		AddtlRmtInf : ?[Text];

		RfrdDocAmt : ?RemittanceAmount2;
		RfrdDocInf : ?[ReferredDocumentInformation7];

		TaxRmt : ?TaxData1;
		Invcee : ?PartyIdentification135;
	};

	public type RemittanceInformation21 = {
		Strd : ?[StructuredRemittanceInformation17];

		Ustrd : ?[Text];

	};

	public type OriginalTransactionReference35 = {
		Amt : ?AmountType4Choice;
		PmtMtd : ?PaymentMethod4Code;
		ReqdExctnDt : ?DateAndDateTime2Choice;
		CdtrSchmeId : ?PartyIdentification135;
		Cdtr : ?Party40Choice;
		Dbtr : ?Party40Choice;
		Purp : ?Purpose2Choice;
		SttlmInf : ?SettlementInstruction11;
		MndtRltdInf : ?MandateRelatedData2Choice;
		DbtrAcct : ?CashAccount40;
		DbtrAgt : ?BranchAndFinancialInstitutionIdentification6;
		IntrBkSttlmDt : ?Int;
		CdtrAcct : ?CashAccount40;
		UltmtCdtr : ?Party40Choice;
		UltmtDbtr : ?Party40Choice;
		CdtrAgtAcct : ?CashAccount40;
		DbtrAgtAcct : ?CashAccount40;
		PmtTpInf : ?PaymentTypeInformation27;
		IntrBkSttlmAmt : ?ActiveOrHistoricCurrencyAndAmount;
		RmtInf : ?RemittanceInformation21;
		ReqdColltnDt : ?Int;
		CdtrAgt : ?BranchAndFinancialInstitutionIdentification6;
	};

	public type CancellationIndividualStatus1Code = {
		#ACCR;
		#PDCR;
		#RJCR;
	};

	public type OriginalGroupInformation29 = {
		OrgnlCreDtTm : ?Int;
		OrgnlMsgNmId : Text;
		OrgnlMsgId : Text;
	};

	public type ActiveCurrencyAndAmount = {
		Ccy : Text;
		value : Float;
	};

	public type CompensationReason1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type Compensation4 = {
		Amt : ActiveCurrencyAndAmount;
		Rsn : CompensationReason1Choice;
		DbtrAgt : BranchAndFinancialInstitutionIdentification6;
		CdtrAgtAcct : ?CashAccount40;
		DbtrAgtAcct : ?CashAccount40;
		CdtrAgt : BranchAndFinancialInstitutionIdentification6;
	};

	public type Charges9 = {
		Agt : BranchAndFinancialInstitutionIdentification6;
		Amt : ActiveOrHistoricCurrencyAndAmount;
		AgtAcct : ?CashAccount40;
	};

	public type ResolutionData3 = {
		TxId : ?Text;
		UETR : ?Text;
		Compstn : ?Compensation4;
		IntrBkSttlmDt : ?Int;
		IntrBkSttlmAmt : ?ActiveOrHistoricCurrencyAndAmount;
		Chrgs : ?[Charges9];

		EndToEndId : ?Text;
		ClrChanl : ?ClearingChannel2Code;
	};

	public type PaymentTransaction138 = {
		CxlStsRsnInf : ?[CancellationStatusReason4];

		OrgnlTxRef : ?OriginalTransactionReference35;
		OrgnlClrSysRef : ?Text;
		OrgnlInstrId : ?Text;
		OrgnlEndToEndId : ?Text;
		TxCxlSts : ?CancellationIndividualStatus1Code;
		Assgne : ?Party40Choice;
		Assgnr : ?Party40Choice;
		OrgnlIntrBkSttlmAmt : ?ActiveOrHistoricCurrencyAndAmount;
		OrgnlIntrBkSttlmDt : ?Int;
		OrgnlTxId : ?Text;
		OrgnlUETR : ?Text;
		OrgnlGrpInf : ?OriginalGroupInformation29;
		CxlStsId : ?Text;
		RslvdCase : ?Case5;
		RsltnRltdInf : ?ResolutionData3;
	};

	public type GroupCancellationStatus1Code = {
		#ACCR;
		#PACR;
		#PDCR;
		#RJCR;
	};

	public type NumberOfCancellationsPerStatus1 = {
		DtldNbOfTxs : Text;
		DtldSts : CancellationIndividualStatus1Code;
		DtldCtrlSum : ?Float;
	};

	public type PaymentTransaction139 = {
		CxlStsRsnInf : ?[CancellationStatusReason4];

		OrgnlTxRef : ?OriginalTransactionReference35;
		OrgnlInstrId : ?Text;
		OrgnlEndToEndId : ?Text;
		UETR : ?Text;
		TxCxlSts : ?CancellationIndividualStatus1Code;
		OrgnlInstdAmt : ?ActiveOrHistoricCurrencyAndAmount;
		CxlStsId : ?Text;
		RslvdCase : ?Case5;
		OrgnlReqdExctnDt : ?DateAndDateTime2Choice;
		OrgnlReqdColltnDt : ?Int;
	};

	public type OriginalPaymentInstruction43 = {
		PmtInfCxlSts : ?GroupCancellationStatus1Code;
		CxlStsRsnInf : ?[CancellationStatusReason4];

		NbOfTxsPerCxlSts : ?[NumberOfCancellationsPerStatus1];

		TxInfAndSts : ?[PaymentTransaction139];

		OrgnlNbOfTxs : ?Text;
		OrgnlPmtInfCxlId : ?Text;
		OrgnlPmtInfId : Text;
		OrgnlGrpInf : ?OriginalGroupInformation29;
		RslvdCase : ?Case5;
		OrgnlCtrlSum : ?Float;
	};

	public type TransactionIndividualStatus1Code = {
		#ACCP;
		#ACCR;
		#ACSC;
		#ACSP;
		#ACTC;
		#ACWC;
		#PDNG;
		#RJCT;
	};

	public type NumberOfTransactionsPerStatus1 = {
		DtldNbOfTxs : Text;
		DtldSts : TransactionIndividualStatus1Code;
		DtldCtrlSum : ?Float;
	};

	public type OriginalGroupHeader14 = {
		CxlStsRsnInf : ?[CancellationStatusReason4];

		NbOfTxsPerCxlSts : ?[NumberOfTransactionsPerStatus1];

		OrgnlGrpCxlId : ?Text;
		GrpCxlSts : ?GroupCancellationStatus1Code;
		OrgnlNbOfTxs : ?Text;
		OrgnlCreDtTm : ?Int;
		RslvdCase : ?Case5;
		OrgnlMsgNmId : Text;
		OrgnlMsgId : Text;
		OrgnlCtrlSum : ?Float;
	};

	public type UnderlyingTransaction29 = {
		TxInfAndSts : ?[PaymentTransaction138];

		OrgnlPmtInfAndSts : ?[OriginalPaymentInstruction43];

		OrgnlGrpInfAndSts : ?OriginalGroupHeader14;
	};

	public type ClaimNonReceipt2 = {
		DtPrcd : Int;
		OrgnlNxtAgt : ?BranchAndFinancialInstitutionIdentification6;
	};

	public type ClaimNonReceiptRejectReason1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type ClaimNonReceipt2Choice = {
		Accptd : ?ClaimNonReceipt2;
		Rjctd : ?ClaimNonReceiptRejectReason1Choice;
	};

	public type CorrectiveGroupInformation1 = {
		MsgId : Text;
		CreDtTm : ?Int;
		MsgNmId : Text;
	};

	public type CorrectivePaymentInitiation5 = {
		ReqdExctnDt : ?DateAndDateTime2Choice;
		InstdAmt : ActiveOrHistoricCurrencyAndAmount;
		UETR : ?Text;
		PmtInfId : ?Text;
		GrpHdr : ?CorrectiveGroupInformation1;
		InstrId : ?Text;
		ReqdColltnDt : ?Int;
		EndToEndId : ?Text;
	};

	public type CorrectiveInterbankTransaction3 = {
		TxId : ?Text;
		UETR : ?Text;
		GrpHdr : ?CorrectiveGroupInformation1;
		InstrId : ?Text;
		IntrBkSttlmDt : Int;
		IntrBkSttlmAmt : ActiveOrHistoricCurrencyAndAmount;
		EndToEndId : ?Text;
	};

	public type CorrectiveTransaction5Choice = {
		Initn : ?CorrectivePaymentInitiation5;
		IntrBk : ?CorrectiveInterbankTransaction3;
	};

	public type SupplementaryDataEnvelope1 = {
		any : Any;
	};

	public type SupplementaryData1 = {
		Envlp : SupplementaryDataEnvelope1;
		PlcAndNm : ?Text;
	};

	public type ModificationStatusReason2 = {
		Rsn : ?ModificationStatusReason1Choice;
		Orgtr : ?PartyIdentification135;
		AddtlInf : ?[Text];

	};

	public type PaymentTransaction132 = {
		OrgnlTxRef : ?OriginalTransactionReference35;
		ModStsRsnInf : ?[ModificationStatusReason2];

		OrgnlClrSysRef : ?Text;
		OrgnlInstrId : ?Text;
		OrgnlEndToEndId : ?Text;
		ModStsId : ?Text;
		Assgne : ?Party40Choice;
		Assgnr : ?Party40Choice;
		OrgnlIntrBkSttlmAmt : ?ActiveOrHistoricCurrencyAndAmount;
		OrgnlPmtInfId : ?Text;
		OrgnlIntrBkSttlmDt : ?Int;
		OrgnlTxId : ?Text;
		OrgnlUETR : ?Text;
		OrgnlGrpInf : OriginalGroupInformation29;
		RslvdCase : ?Case5;
		RsltnRltdInf : ?ResolutionData3;
	};

	public type ChargeBearerType1Code = {
		#CRED;
		#DEBT;
		#SHAR;
		#SLEV;
	};

	public type GenericIdentification3 = {
		Id : Text;
		Issr : ?Text;
	};

	public type ChargeType3Choice = {
		Cd : ?Text;
		Prtry : ?GenericIdentification3;
	};

	public type TaxCharges2 = {
		Id : ?Text;
		Amt : ?ActiveOrHistoricCurrencyAndAmount;
		Rate : ?Float;
	};

	public type ChargesRecord3 = {
		Br : ?ChargeBearerType1Code;
		Tp : ?ChargeType3Choice;
		Agt : ?BranchAndFinancialInstitutionIdentification6;
		Amt : ActiveOrHistoricCurrencyAndAmount;
		Tax : ?TaxCharges2;
		Rate : ?Float;
		CdtDbtInd : ?CreditDebitCode;
		ChrgInclInd : ?Bool;
	};

	public type Charges6 = {
		TtlChrgsAndTaxAmt : ?ActiveOrHistoricCurrencyAndAmount;
		Rcrd : ?[ChargesRecord3];

	};

	public type StatementResolutionEntry4 = {
		Purp : ?Purpose2Choice;
		UETR : ?Text;
		AcctSvcrRef : ?Text;
		OrgnlStmtId : ?Text;
		OrgnlGrpInf : ?OriginalGroupInformation29;
		CrrctdAmt : ?ActiveOrHistoricCurrencyAndAmount;
		Chrgs : ?[Charges6];

	};

	public type ResolutionOfInvestigationV11 = {
		Sts : InvestigationStatus5Choice;
		Assgnmt : CaseAssignment5;
		CxlDtls : ?[UnderlyingTransaction29];

		ClmNonRctDtls : ?ClaimNonReceipt2Choice;
		CrrctnTx : ?CorrectiveTransaction5Choice;
		SplmtryData : ?[SupplementaryData1];

		ModDtls : ?PaymentTransaction132;
		RslvdCase : ?Case5;
		RsltnRltdInf : ?ResolutionData3;
		StmtDtls : ?StatementResolutionEntry4;
	};

}