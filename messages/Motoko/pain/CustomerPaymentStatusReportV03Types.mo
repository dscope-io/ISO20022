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

	public type GroupHeader36 = {
		InitgPty : ?PartyIdentification32;
		DbtrAgt : ?BranchAndFinancialInstitutionIdentification4;
		MsgId : Text;
		CreDtTm : Int;
		FwdgAgt : ?BranchAndFinancialInstitutionIdentification4;
		CdtrAgt : ?BranchAndFinancialInstitutionIdentification4;
	};

	public type StatusReason6Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type StatusReasonInformation8 = {
		Rsn : ?StatusReason6Choice;
		Orgtr : ?PartyIdentification32;
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

	public type AmountType3Choice = {
		InstdAmt : ?ActiveOrHistoricCurrencyAndAmount;
		EqvtAmt : ?EquivalentAmount2;
	};

	public type PaymentMethod4Code = {
		#DD;
		#CHK;
		#TRA;
		#TRF;
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

	public type ClearingSystemIdentification3Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type SettlementInformation13 = {
		SttlmMtd : SettlementMethod1Code;
		SttlmAcct : ?CashAccount16;
		ClrSys : ?ClearingSystemIdentification3Choice;
		InstdRmbrsmntAgtAcct : ?CashAccount16;
		InstgRmbrsmntAgt : ?BranchAndFinancialInstitutionIdentification4;
		InstgRmbrsmntAgtAcct : ?CashAccount16;
		InstdRmbrsmntAgt : ?BranchAndFinancialInstitutionIdentification4;
		ThrdRmbrsmntAgtAcct : ?CashAccount16;
		ThrdRmbrsmntAgt : ?BranchAndFinancialInstitutionIdentification4;
	};

	public type Frequency1Code = {
		#ADHO;
		#DAIL;
		#INDA;
		#MIAN;
		#MNTH;
		#QURT;
		#WEEK;
		#YEAR;
	};

	public type AmendmentInformationDetails6 = {
		OrgnlDbtrAgt : ?BranchAndFinancialInstitutionIdentification4;
		OrgnlFnlColltnDt : ?Int;
		OrgnlCdtrAgtAcct : ?CashAccount16;
		OrgnlDbtrAgtAcct : ?CashAccount16;
		OrgnlDbtrAcct : ?CashAccount16;
		OrgnlDbtr : ?PartyIdentification32;
		OrgnlCdtrAgt : ?BranchAndFinancialInstitutionIdentification4;
		OrgnlMndtId : ?Text;
		OrgnlFrqcy : ?Frequency1Code;
		OrgnlCdtrSchmeId : ?PartyIdentification32;
	};

	public type MandateRelatedInformation6 = {
		ElctrncSgntr : ?Text;
		AmdmntInfDtls : ?AmendmentInformationDetails6;
		AmdmntInd : ?Bool;
		MndtId : ?Text;
		FnlColltnDt : ?Int;
		Frqcy : ?Frequency1Code;
		DtOfSgntr : ?Int;
		FrstColltnDt : ?Int;
	};

	public type SequenceType1Code = {
		#FNAL;
		#FRST;
		#OOFF;
		#RCUR;
	};

	public type LocalInstrument2Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type ServiceLevel8Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type Priority2Code = {
		#HIGH;
		#NORM;
	};

	public type CategoryPurpose1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type ClearingChannel2Code = {
		#BOOK;
		#MPNS;
		#RTGS;
		#RTNS;
	};

	public type PaymentTypeInformation22 = {
		SeqTp : ?SequenceType1Code;
		LclInstrm : ?LocalInstrument2Choice;
		SvcLvl : ?ServiceLevel8Choice;
		InstrPrty : ?Priority2Code;
		CtgyPurp : ?CategoryPurpose1Choice;
		ClrChanl : ?ClearingChannel2Code;
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

	public type OriginalTransactionReference13 = {
		Amt : ?AmountType3Choice;
		PmtMtd : ?PaymentMethod4Code;
		ReqdExctnDt : ?Int;
		CdtrSchmeId : ?PartyIdentification32;
		Cdtr : ?PartyIdentification32;
		Dbtr : ?PartyIdentification32;
		SttlmInf : ?SettlementInformation13;
		MndtRltdInf : ?MandateRelatedInformation6;
		DbtrAcct : ?CashAccount16;
		DbtrAgt : ?BranchAndFinancialInstitutionIdentification4;
		IntrBkSttlmDt : ?Int;
		CdtrAcct : ?CashAccount16;
		UltmtCdtr : ?PartyIdentification32;
		UltmtDbtr : ?PartyIdentification32;
		CdtrAgtAcct : ?CashAccount16;
		DbtrAgtAcct : ?CashAccount16;
		PmtTpInf : ?PaymentTypeInformation22;
		IntrBkSttlmAmt : ?ActiveOrHistoricCurrencyAndAmount;
		RmtInf : ?RemittanceInformation5;
		ReqdColltnDt : ?Int;
		CdtrAgt : ?BranchAndFinancialInstitutionIdentification4;
	};

	public type ChargesInformation5 = {
		Amt : ActiveOrHistoricCurrencyAndAmount;
		Pty : BranchAndFinancialInstitutionIdentification4;
	};

	public type TransactionIndividualStatus3Code = {
		#ACCP;
		#ACSC;
		#ACSP;
		#ACTC;
		#ACWC;
		#PDNG;
		#RJCT;
	};

	public type PaymentTransactionInformation25 = {
		ClrSysRef : ?Text;
		OrgnlTxRef : ?OriginalTransactionReference13;
		ChrgsInf : ?[ChargesInformation5];

		StsId : ?Text;
		OrgnlInstrId : ?Text;
		OrgnlEndToEndId : ?Text;
		StsRsnInf : ?[StatusReasonInformation8];

		AcctSvcrRef : ?Text;
		TxSts : ?TransactionIndividualStatus3Code;
		AccptncDtTm : ?Int;
	};

	public type TransactionGroupStatus3Code = {
		#ACCP;
		#ACSC;
		#ACSP;
		#ACTC;
		#ACWC;
		#PART;
		#PDNG;
		#RCVD;
		#RJCT;
	};

	public type NumberOfTransactionsPerStatus3 = {
		DtldNbOfTxs : Text;
		DtldSts : TransactionIndividualStatus3Code;
		DtldCtrlSum : ?Float;
	};

	public type OriginalPaymentInformation1 = {
		StsRsnInf : ?[StatusReasonInformation8];

		TxInfAndSts : ?[PaymentTransactionInformation25];

		OrgnlNbOfTxs : ?Text;
		OrgnlPmtInfId : Text;
		PmtInfSts : ?TransactionGroupStatus3Code;
		NbOfTxsPerSts : ?[NumberOfTransactionsPerStatus3];

		OrgnlCtrlSum : ?Float;
	};

	public type OriginalGroupInformation20 = {
		StsRsnInf : ?[StatusReasonInformation8];

		GrpSts : ?TransactionGroupStatus3Code;
		OrgnlNbOfTxs : ?Text;
		OrgnlCreDtTm : ?Int;
		OrgnlMsgNmId : Text;
		NbOfTxsPerSts : ?[NumberOfTransactionsPerStatus3];

		OrgnlMsgId : Text;
		OrgnlCtrlSum : ?Float;
	};

	public type CustomerPaymentStatusReportV03 = {
		GrpHdr : GroupHeader36;
		OrgnlPmtInfAndSts : ?[OriginalPaymentInformation1];

		OrgnlGrpInfAndSts : OriginalGroupInformation20;
	};

}