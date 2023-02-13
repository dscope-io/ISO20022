module {
	public type ReversalReason4Choice = {
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

	public type PaymentReversalReason9 = {
		Rsn : ?ReversalReason4Choice;
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

	public type Party40Choice = {
		Agt : ?BranchAndFinancialInstitutionIdentification6;
		Pty : ?PartyIdentification135;
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

	public type SupplementaryDataEnvelope1 = {
		any : Any;
	};

	public type SupplementaryData1 = {
		Envlp : SupplementaryDataEnvelope1;
		PlcAndNm : ?Text;
	};

	public type ChargeBearerType1Code = {
		#CRED;
		#DEBT;
		#SHAR;
		#SLEV;
	};

	public type PaymentTransaction134 = {
		OrgnlTxRef : ?OriginalTransactionReference35;
		RvslId : ?Text;
		OrgnlInstrId : ?Text;
		OrgnlEndToEndId : ?Text;
		RvslRsnInf : ?[PaymentReversalReason9];

		RvsdInstdAmt : ?ActiveOrHistoricCurrencyAndAmount;
		OrgnlInstdAmt : ?ActiveOrHistoricCurrencyAndAmount;
		SplmtryData : ?[SupplementaryData1];

		OrgnlUETR : ?Text;
		ChrgBr : ?ChargeBearerType1Code;
	};

	public type OriginalPaymentInstruction41 = {
		RvslPmtInfId : ?Text;
		BtchBookg : ?Bool;
		RvslRsnInf : ?[PaymentReversalReason9];

		OrgnlNbOfTxs : ?Text;
		OrgnlPmtInfId : Text;
		PmtInfRvsl : ?Bool;
		TxInf : ?[PaymentTransaction134];

		OrgnlCtrlSum : ?Float;
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

	public type GroupHeader88 = {
		CtrlSum : ?Float;
		InitgPty : ?PartyIdentification135;
		DbtrAgt : ?BranchAndFinancialInstitutionIdentification6;
		Authstn : ?[Authorisation1Choice];

		NbOfTxs : Text;
		MsgId : Text;
		CreDtTm : Int;
		FwdgAgt : ?BranchAndFinancialInstitutionIdentification6;
		GrpRvsl : ?Bool;
		CdtrAgt : ?BranchAndFinancialInstitutionIdentification6;
	};

	public type OriginalGroupHeader16 = {
		RvslRsnInf : ?[PaymentReversalReason9];

		OrgnlCreDtTm : ?Int;
		OrgnlMsgNmId : Text;
		OrgnlMsgId : Text;
	};

	public type CustomerPaymentReversalV11 = {
		OrgnlPmtInfAndRvsl : ?[OriginalPaymentInstruction41];

		GrpHdr : GroupHeader88;
		SplmtryData : ?[SupplementaryData1];

		OrgnlGrpInf : OriginalGroupHeader16;
	};

}