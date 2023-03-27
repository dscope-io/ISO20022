module {
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

	public type ProxyAccountType1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type ProxyAccountIdentification1 = {
		Id : Text;
		Tp : ?ProxyAccountType1Choice;
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

	public type CashAccount41 = {
		Id : ?AccountIdentification4Choice;
		Nm : ?Text;
		Tp : ?CashAccountType2Choice;
		Ccy : ?Text;
		Ownr : ?PartyIdentification135;
		Prxy : ?ProxyAccountIdentification1;
		Svcr : ?BranchAndFinancialInstitutionIdentification6;
	};

	public type ActiveCurrencyAndAmount = {
		Ccy : Text;
		value : Float;
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

	public type ActiveOrHistoricCurrencyAndAmount = {
		Ccy : Text;
		value : Float;
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

	public type TaxInformation10 = {
		Dt : ?Int;
		Mtd : ?Text;
		SeqNb : ?Float;
		Cdtr : ?TaxParty1;
		Dbtr : ?TaxParty2;
		AdmstnZone : ?Text;
		Rcrd : ?[TaxRecord3];

		TtlTaxAmt : ?ActiveOrHistoricCurrencyAndAmount;
		RefNb : ?Text;
		TtlTaxblBaseAmt : ?ActiveOrHistoricCurrencyAndAmount;
	};

	public type InstructionForCreditorAgent3 = {
		Cd : ?Text;
		InstrInf : ?Text;
	};

	public type Purpose2Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type PaymentIdentification6 = {
		UETR : ?Text;
		InstrId : ?Text;
		EndToEndId : Text;
	};

	public type Priority2Code = {
		#HIGH;
		#NORM;
	};

	public type NameAndAddress16 = {
		Nm : Text;
		Adr : PostalAddress24;
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

	public type Cheque11 = {
		Sgntr : ?[Text];

		ChqMtrtyDt : ?Int;
		RgnlClrZone : ?Text;
		PrtLctn : ?Text;
		InstrPrty : ?Priority2Code;
		DlvrTo : ?NameAndAddress16;
		ChqFr : ?NameAndAddress16;
		ChqNb : ?Text;
		ChqTp : ?ChequeType2Code;
		DlvryMtd : ?ChequeDeliveryMethod1Choice;
		FrmsCd : ?Text;
		MemoFld : ?[Text];

	};

	public type TransferInstruction1 = {
		Cd : Text;
		StartDt : ?Int;
		Desc : ?Text;
		Prtry : ?Text;
		TrfInd : ?Bool;
		StartDtTm : ?Int;
	};

	public type CashAccount40 = {
		Id : ?AccountIdentification4Choice;
		Nm : ?Text;
		Tp : ?CashAccountType2Choice;
		Ccy : ?Text;
		Prxy : ?ProxyAccountIdentification1;
	};

	public type RemittanceLocationMethod2Code = {
		#EDIC;
		#EMAL;
		#FAXI;
		#POST;
		#SMSM;
		#URID;
	};

	public type RemittanceLocation6 = {
		RmtLctnElctrncAdr : ?Text;
		RmtLctnMtd : ?RemittanceLocationMethod2Code;
		RmtId : ?Text;
		RmtLctnPstlAdr : ?NameAndAddress16;
	};

	public type EndPoint1Choice = {
		LastPmtDt : ?Int;
		NbOfPmts : ?Text;
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

	public type BusinessDayConvention1Code = {
		#FWNG;
		#PREC;
	};

	public type Frequency1 = {
		Seq : ?Text;
		StartDt : Int;
		EndPtChc : EndPoint1Choice;
		ReqdFrqcyPttrn : ?Frequency37Choice;
		NonWorkgDayAdjstmnt : ?BusinessDayConvention1Code;
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

	public type PaymentTypeInformation26 = {
		LclInstrm : ?LocalInstrument2Choice;
		SvcLvl : ?[ServiceLevel8Choice];

		InstrPrty : ?Priority2Code;
		CtgyPurp : ?CategoryPurpose1Choice;
	};

	public type TaxRateMarker1Code = {
		#ALIT;
		#ALPR;
		#GRSS;
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

	public type CreditTransferTransaction51 = {
		Amt : ActiveCurrencyAndAmount;
		Tax : ?TaxInformation10;
		InstrForCdtrAgt : ?[InstructionForCreditorAgent3];

		Cdtr : ?PartyIdentification135;
		Purp : ?Purpose2Choice;
		IntrmyAgt1 : ?BranchAndFinancialInstitutionIdentification6;
		IntrmyAgt2 : ?BranchAndFinancialInstitutionIdentification6;
		IntrmyAgt3 : ?BranchAndFinancialInstitutionIdentification6;
		PmtId : PaymentIdentification6;
		ChqInstr : ?Cheque11;
		TrfInstr : ?TransferInstruction1;
		CdtrAcct : ?CashAccount40;
		UltmtCdtr : ?PartyIdentification135;
		UltmtDbtr : ?PartyIdentification135;
		RltdRmtInf : ?[RemittanceLocation6];

		Frqcy : ?Frequency1;
		PmtTpInf : ?PaymentTypeInformation26;
		TaxRateMrkr : ?TaxRateMarker1Code;
		RmtInf : ?RemittanceInformation21;
		RgltryRptg : ?[RegulatoryReporting3];

		CdtrAgt : BranchAndFinancialInstitutionIdentification6;
		ChrgBr : ?ChargeBearerType1Code;
	};

	public type SettlementMethod4Choice = {
		Cdt : ?CreditTransferTransaction51;
		Dbt : ?CreditTransferTransaction51;
	};

	public type BalanceTransferReference1 = {
		BalTrfRef : Text;
	};

	public type BalanceTransferFundingLimit1 = {
		CcyAmt : ActiveCurrencyAndAmount;
	};

	public type BalanceTransfer4 = {
		BalTrfMtd : ?SettlementMethod4Choice;
		BalTrfRef : ?BalanceTransferReference1;
		BalTrfFndgLmt : ?BalanceTransferFundingLimit1;
	};

	public type SupplementaryDataEnvelope1 = {
		any : Any;
	};

	public type SupplementaryData1 = {
		Envlp : SupplementaryDataEnvelope1;
		PlcAndNm : ?Text;
	};

	public type SwitchType1Code = {
		#FULL;
		#PART;
	};

	public type ResponseDetails1 = {
		RspnCd : Text;
		AddtlDtls : ?Text;
	};

	public type SwitchStatus1Code = {
		#ACPT;
		#BTRQ;
		#BTRS;
		#COMP;
		#REDE;
		#REDT;
		#REJT;
		#REQU;
		#TMTN;
	};

	public type BalanceTransferWindow1Code = {
		#DAYH;
		#EARL;
	};

	public type AccountSwitchDetails1 = {
		SwtchDt : ?Int;
		SwtchTp : SwitchType1Code;
		Rspn : ?[ResponseDetails1];

		UnqRefNb : Text;
		SwtchSts : ?SwitchStatus1Code;
		RtgUnqRefNb : Text;
		BalTrfWndw : ?BalanceTransferWindow1Code;
		SwtchRcvdDtTm : ?Int;
	};

	public type MessageIdentification1 = {
		Id : Text;
		CreDtTm : Int;
	};

	public type OrganisationLegalStatus1Code = {
		#CHAR;
		#CICC;
		#CIOC;
		#GENP;
		#IAPS;
		#LIMP;
		#LLPP;
		#PCLC;
		#PCLG;
		#PCLS;
		#SOLE;
		#UNLC;
		#UNLT;
	};

	public type Organisation35 = {
		RprtvOffcr : ?[PartyIdentification135];

		MainMndtHldr : ?[PartyIdentification135];

		BizAdr : ?PostalAddress24;
		RegnDt : ?Int;
		RegnNb : ?Text;
		Sndr : ?[PartyIdentification135];

		OrgLglSts : ?OrganisationLegalStatus1Code;
		TaxtnCtry : ?Text;
		TaxtnIdNb : ?Text;
		TradgNm : ?Text;
		RegnCtry : ?Text;
		BrdRsltnInd : ?Bool;
		OprlAdr : ?PostalAddress24;
		FullLglNm : Text;
		EstblishdDt : ?Int;
		TrsrMgr : ?PartyIdentification135;
		CtryOfOpr : ?Text;
		LglAdr : ?PostalAddress24;
	};

	public type CommunicationAddress3 = {
		Mob : ?Text;
		Email : ?Text;
		TlxAdr : ?Text;
		Phne : ?Text;
		URLAdr : ?Text;
		FaxNb : ?Text;
	};

	public type Gender1Code = {
		#FEMA;
		#MALE;
	};

	public type ResidentialStatus1Code = {
		#NRES;
		#PRES;
		#RESI;
	};

	public type CountryAndResidentialStatusType1 = {
		Ctry : Text;
		ResdtlSts : ResidentialStatus1Code;
	};

	public type CitizenshipInformation1 = {
		StartDt : ?Int;
		EndDt : ?Int;
		Ntlty : Text;
		MnrInd : ?Bool;
	};

	public type PersonIdentificationType5Code = {
		#AREG;
		#CPFA;
		#DRLC;
		#EMID;
		#GUNL;
		#IDCD;
		#NRIN;
		#OTHR;
		#PASS;
		#POCD;
		#SOCS;
		#SRSA;
	};

	public type GenericIdentification47 = {
		Id : Text;
		Issr : Text;
		SchmeNm : ?Text;
	};

	public type OtherIdentification1Choice = {
		Cd : ?PersonIdentificationType5Code;
		Prtry : ?GenericIdentification47;
	};

	public type GenericIdentification44 = {
		Id : Text;
		Tp : OtherIdentification1Choice;
		Issr : ?Text;
		IsseDt : ?Int;
		XpryDt : ?Int;
	};

	public type IndividualPersonNameLong2 = {
		Nm : ?Text;
		StartDt : ?Int;
		EndDt : ?Int;
		NmPrfx : ?NamePrefix2Code;
		GvnNm : ?Text;
		NmSfx : ?Text;
		Srnm : Text;
		MddlNm : ?Text;
		Initls : ?Text;
	};

	public type IndividualPerson36 = {
		PmryComAdr : ?CommunicationAddress3;
		PstlAdr : ?[PostalAddress24];

		CityOfBirth : ?Text;
		PrvcOfBirth : ?Text;
		Gndr : ?Gender1Code;
		Lang : ?Text;
		TaxtnCtry : ?Text;
		ScndryComAdr : ?CommunicationAddress3;
		CtryAndResdtlSts : ?CountryAndResidentialStatusType1;
		CtznshInf : ?[CitizenshipInformation1];

		SclSctyNb : ?Text;
		BirthDt : ?Int;
		OthrId : ?[GenericIdentification44];

		CtryOfBirth : ?Text;
		CurNm : IndividualPersonNameLong2;
		OthrDtls : ?[TransferInstruction1];

		PrvsNm : ?[IndividualPersonNameLong2];

	};

	public type NewAccount3 = {
		Org : ?Organisation35;
		Acct : CashAccount41;
		AcctPty : [IndividualPerson36];
	};

	public type AccountSwitchInformationRequestV04 = {
		OdAcct : CashAccount41;
		BalTrf : ?[BalanceTransfer4];

		SplmtryData : ?[SupplementaryData1];

		AcctSwtchDtls : AccountSwitchDetails1;
		MsgId : MessageIdentification1;
		NewAcct : NewAccount3;
	};

}