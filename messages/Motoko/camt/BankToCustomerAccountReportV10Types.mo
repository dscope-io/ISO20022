module {
	public type DateAndDateTime2Choice = {
		Dt : ?Int;
		DtTm : ?Int;
	};

	public type BalanceSubType1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type BalanceType10Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type BalanceType13 = {
		SubTp : ?BalanceSubType1Choice;
		CdOrPrtry : BalanceType10Choice;
	};

	public type ActiveOrHistoricCurrencyAndAmount = {
		Ccy : Text;
		value : Float;
	};

	public type CashAvailabilityDate1Choice = {
		ActlDt : ?Int;
		NbOfDays : ?Text;
	};

	public type CreditDebitCode = {
		#CRDT;
		#DBIT;
	};

	public type CashAvailability1 = {
		Dt : CashAvailabilityDate1Choice;
		Amt : ActiveOrHistoricCurrencyAndAmount;
		CdtDbtInd : CreditDebitCode;
	};

	public type CreditLineType1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type CreditLine3 = {
		Dt : ?DateAndDateTime2Choice;
		Tp : ?CreditLineType1Choice;
		Amt : ?ActiveOrHistoricCurrencyAndAmount;
		Incl : ?Bool;
	};

	public type CashBalance8 = {
		Dt : DateAndDateTime2Choice;
		Tp : BalanceType13;
		Amt : ActiveOrHistoricCurrencyAndAmount;
		Avlbty : ?[CashAvailability1];

		CdtDbtInd : CreditDebitCode;
		CdtLine : ?[CreditLine3];

	};

	public type SequenceRange1 = {
		FrSeq : Text;
		ToSeq : Text;
	};

	public type SequenceRange1Choice = {
		NEQSeq : ?[Text];

		FrSeq : ?Text;
		FrToSeq : ?[SequenceRange1];

		ToSeq : ?Text;
		EQSeq : ?[Text];

	};

	public type ReportingSource1Choice = {
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

	public type EntryStatus1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type CurrencyExchange5 = {
		SrcCcy : Text;
		CtrctId : ?Text;
		UnitCcy : ?Text;
		TrgtCcy : ?Text;
		XchgRate : Float;
		QtnDt : ?Int;
	};

	public type AmountAndCurrencyExchangeDetails3 = {
		Amt : ActiveOrHistoricCurrencyAndAmount;
		CcyXchg : ?CurrencyExchange5;
	};

	public type AmountAndCurrencyExchangeDetails4 = {
		Tp : Text;
		Amt : ActiveOrHistoricCurrencyAndAmount;
		CcyXchg : ?CurrencyExchange5;
	};

	public type AmountAndCurrencyExchange3 = {
		InstdAmt : ?AmountAndCurrencyExchangeDetails3;
		AnncdPstngAmt : ?AmountAndCurrencyExchangeDetails3;
		TxAmt : ?AmountAndCurrencyExchangeDetails3;
		PrtryAmt : ?[AmountAndCurrencyExchangeDetails4];

		CntrValAmt : ?AmountAndCurrencyExchangeDetails3;
	};

	public type BankTransactionCodeStructure6 = {
		Cd : Text;
		SubFmlyCd : Text;
	};

	public type BankTransactionCodeStructure5 = {
		Cd : Text;
		Fmly : BankTransactionCodeStructure6;
	};

	public type ProprietaryBankTransactionCodeStructure1 = {
		Cd : Text;
		Issr : ?Text;
	};

	public type BankTransactionCodeStructure4 = {
		Domn : ?BankTransactionCodeStructure5;
		Prtry : ?ProprietaryBankTransactionCodeStructure1;
	};

	public type MessageIdentification2 = {
		MsgId : ?Text;
		MsgNmId : ?Text;
	};

	public type BatchInformation2 = {
		PmtInfId : ?Text;
		CdtDbtInd : ?CreditDebitCode;
		NbOfTxs : ?Text;
		MsgId : ?Text;
		TtlAmt : ?ActiveOrHistoricCurrencyAndAmount;
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

	public type ProprietaryPrice2 = {
		Tp : Text;
		Pric : ActiveOrHistoricCurrencyAndAmount;
	};

	public type PriceValueType1Code = {
		#DISC;
		#PARV;
		#PREM;
	};

	public type YieldedOrValueType1Choice = {
		Yldd : ?Bool;
		ValTp : ?PriceValueType1Code;
	};

	public type ActiveOrHistoricCurrencyAnd13DecimalAmount = {
		Ccy : Text;
		value : Float;
	};

	public type PriceRateOrAmount3Choice = {
		Amt : ?ActiveOrHistoricCurrencyAnd13DecimalAmount;
		Rate : ?Float;
	};

	public type Price7 = {
		Tp : YieldedOrValueType1Choice;
		Val : PriceRateOrAmount3Choice;
	};

	public type TransactionPrice4Choice = {
		Prtry : ?[ProprietaryPrice2];

		DealPric : ?Price7;
	};

	public type LocalInstrument2Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type Purpose2Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type ProprietaryReference1 = {
		Tp : Text;
		Ref : Text;
	};

	public type TransactionReferences6 = {
		ClrSysRef : ?Text;
		TxId : ?Text;
		UETR : ?Text;
		PmtInfId : ?Text;
		AcctOwnrTxId : ?Text;
		InstrId : ?Text;
		Prtry : ?[ProprietaryReference1];

		MndtId : ?Text;
		AcctSvcrRef : ?Text;
		AcctSvcrTxId : ?Text;
		MsgId : ?Text;
		ChqNb : ?Text;
		EndToEndId : ?Text;
		PrcgId : ?Text;
		MktInfrstrctrTxId : ?Text;
	};

	public type CorporateAction9 = {
		EvtId : Text;
		EvtTp : Text;
	};

	public type FinancialInstrumentQuantity1Choice = {
		AmtsdVal : ?Float;
		Unit : ?Float;
		FaceAmt : ?Float;
	};

	public type OriginalAndCurrentQuantities1 = {
		AmtsdVal : Float;
		FaceAmt : Float;
	};

	public type ProprietaryQuantity1 = {
		Tp : Text;
		Qty : Text;
	};

	public type TransactionQuantities3Choice = {
		Qty : ?FinancialInstrumentQuantity1Choice;
		OrgnlAndCurFaceAmt : ?OriginalAndCurrentQuantities1;
		Prtry : ?ProprietaryQuantity1;
	};

	public type SupplementaryDataEnvelope1 = {
		any : Any;
	};

	public type SupplementaryData1 = {
		Envlp : SupplementaryDataEnvelope1;
		PlcAndNm : ?Text;
	};

	public type ProprietaryDate3 = {
		Dt : DateAndDateTime2Choice;
		Tp : Text;
	};

	public type TransactionDates3 = {
		StartDt : ?Int;
		EndDt : ?Int;
		Prtry : ?[ProprietaryDate3];

		IntrBkSttlmDt : ?Int;
		TradDt : ?Int;
		AccptncDtTm : ?Int;
		TradActvtyCtrctlSttlmDt : ?Int;
		TxDtTm : ?Int;
	};

	public type RemittanceLocationMethod2Code = {
		#EDIC;
		#EMAL;
		#FAXI;
		#POST;
		#SMSM;
		#URID;
	};

	public type NameAndAddress16 = {
		Nm : Text;
		Adr : PostalAddress24;
	};

	public type RemittanceLocationData1 = {
		Mtd : RemittanceLocationMethod2Code;
		PstlAdr : ?NameAndAddress16;
		ElctrncAdr : ?Text;
	};

	public type RemittanceLocation7 = {
		RmtId : ?Text;
		RmtLctnDtls : ?[RemittanceLocationData1];

	};

	public type SequenceType3Code = {
		#FNAL;
		#FRST;
		#OOFF;
		#RCUR;
		#RPRE;
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

	public type PaymentTypeInformation27 = {
		SeqTp : ?SequenceType3Code;
		LclInstrm : ?LocalInstrument2Choice;
		SvcLvl : ?[ServiceLevel8Choice];

		InstrPrty : ?Priority2Code;
		CtgyPurp : ?CategoryPurpose1Choice;
		ClrChanl : ?ClearingChannel2Code;
	};

	public type SecuritiesAccount19 = {
		Id : Text;
		Nm : ?Text;
		Tp : ?GenericIdentification30;
	};

	public type InterestType1Code = {
		#INDY;
		#OVRN;
	};

	public type InterestType1Choice = {
		Cd : ?InterestType1Code;
		Prtry : ?Text;
	};

	public type TaxCharges2 = {
		Id : ?Text;
		Amt : ?ActiveOrHistoricCurrencyAndAmount;
		Rate : ?Float;
	};

	public type RateType4Choice = {
		Othr : ?Text;
		Pctg : ?Float;
	};

	public type AmountRangeBoundary1 = {
		Incl : ?Bool;
		BdryAmt : Float;
	};

	public type FromToAmountRange1 = {
		FrAmt : AmountRangeBoundary1;
		ToAmt : AmountRangeBoundary1;
	};

	public type ImpliedCurrencyAmountRange1Choice = {
		NEQAmt : ?Float;
		FrAmt : ?AmountRangeBoundary1;
		FrToAmt : ?FromToAmountRange1;
		ToAmt : ?AmountRangeBoundary1;
		EQAmt : ?Float;
	};

	public type ActiveOrHistoricCurrencyAndAmountRange2 = {
		Amt : ImpliedCurrencyAmountRange1Choice;
		Ccy : Text;
		CdtDbtInd : ?CreditDebitCode;
	};

	public type Rate4 = {
		Tp : RateType4Choice;
		VldtyRg : ?ActiveOrHistoricCurrencyAndAmountRange2;
	};

	public type DateTimePeriod1 = {
		ToDtTm : Int;
		FrDtTm : Int;
	};

	public type InterestRecord2 = {
		Tp : ?InterestType1Choice;
		Amt : ActiveOrHistoricCurrencyAndAmount;
		Rsn : ?Text;
		Tax : ?TaxCharges2;
		Rate : ?Rate4;
		CdtDbtInd : CreditDebitCode;
		FrToDt : ?DateTimePeriod1;
	};

	public type TransactionInterest4 = {
		Rcrd : ?[InterestRecord2];

		TtlIntrstAndTaxAmt : ?ActiveOrHistoricCurrencyAndAmount;
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

	public type ReturnReason5Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type PaymentReturnReason5 = {
		Rsn : ?ReturnReason5Choice;
		OrgnlBkTxCd : ?BankTransactionCodeStructure4;
		Orgtr : ?PartyIdentification135;
		AddtlInf : ?[Text];

	};

	public type Party40Choice = {
		Agt : ?BranchAndFinancialInstitutionIdentification6;
		Pty : ?PartyIdentification135;
	};

	public type CashAccount40 = {
		Id : ?AccountIdentification4Choice;
		Nm : ?Text;
		Tp : ?CashAccountType2Choice;
		Ccy : ?Text;
		Prxy : ?ProxyAccountIdentification1;
	};

	public type ProprietaryParty5 = {
		Tp : Text;
		Pty : Party40Choice;
	};

	public type TransactionParties9 = {
		Cdtr : ?Party40Choice;
		Dbtr : ?Party40Choice;
		InitgPty : ?Party40Choice;
		DbtrAcct : ?CashAccount40;
		Prtry : ?[ProprietaryParty5];

		CdtrAcct : ?CashAccount40;
		UltmtCdtr : ?Party40Choice;
		UltmtDbtr : ?Party40Choice;
		TradgPty : ?Party40Choice;
	};

	public type ActiveCurrencyAndAmount = {
		Ccy : Text;
		value : Float;
	};

	public type CashDeposit1 = {
		Amt : ActiveCurrencyAndAmount;
		NoteDnmtn : ActiveCurrencyAndAmount;
		NbOfNotes : Text;
	};

	public type UnitOfMeasure1Code = {
		#ACRE;
		#ARES;
		#CELI;
		#CMET;
		#FOOT;
		#GBGA;
		#GBOU;
		#GBPI;
		#GBQA;
		#GRAM;
		#HECT;
		#INCH;
		#KILO;
		#KMET;
		#LITR;
		#METR;
		#MILE;
		#MILI;
		#MMET;
		#PIEC;
		#PUND;
		#SCMT;
		#SMET;
		#SMIL;
		#SQFO;
		#SQIN;
		#SQKI;
		#SQMI;
		#SQYA;
		#TONS;
		#USGA;
		#USOU;
		#USPI;
		#USQA;
		#YARD;
	};

	public type Product2 = {
		UnitOfMeasr : ?UnitOfMeasure1Code;
		AddtlPdctInf : ?Text;
		PdctAmt : ?Float;
		PdctQty : ?Float;
		TaxTp : ?Text;
		PdctCd : Text;
		UnitPric : ?Float;
	};

	public type TransactionIdentifier1 = {
		TxRef : Text;
		TxDtTm : Int;
	};

	public type CardPaymentServiceType2Code = {
		#AGGR;
		#DCCV;
		#GRTT;
		#INSP;
		#LOYT;
		#NRES;
		#PUCO;
		#RECP;
		#SOAF;
		#UNAF;
		#VCAU;
	};

	public type TransactionChannel1Code = {
		#ECOM;
		#MAIL;
		#TLPH;
		#TVPY;
	};

	public type AttendanceContext1Code = {
		#ATTD;
		#SATT;
		#UATT;
	};

	public type TransactionEnvironment1Code = {
		#MERC;
		#PRIV;
		#PUBL;
	};

	public type CardDataReading1Code = {
		#BRCD;
		#CICC;
		#CTLS;
		#DFLE;
		#ECTL;
		#MGST;
		#PHYS;
		#TAGC;
	};

	public type AuthenticationMethod1Code = {
		#BYPS;
		#CPSG;
		#FPIN;
		#MANU;
		#MERC;
		#NPIN;
		#PPSG;
		#SCNL;
		#SCRT;
		#SNCT;
		#UKNW;
	};

	public type AuthenticationEntity1Code = {
		#AGNT;
		#ICCD;
		#MERC;
	};

	public type CardholderAuthentication2 = {
		AuthntcnMtd : AuthenticationMethod1Code;
		AuthntcnNtty : AuthenticationEntity1Code;
	};

	public type PaymentContext3 = {
		CardPres : ?Bool;
		AttndntLang : ?Text;
		CrdhldrPres : ?Bool;
		TxChanl : ?TransactionChannel1Code;
		AttndncCntxt : ?AttendanceContext1Code;
		OnLineCntxt : ?Bool;
		FllbckInd : ?Bool;
		AttndntMsgCpbl : ?Bool;
		TxEnvt : ?TransactionEnvironment1Code;
		CardDataNtryMd : CardDataReading1Code;
		AuthntcnMtd : ?CardholderAuthentication2;
	};

	public type CardIndividualTransaction2 = {
		VldtnDt : ?Int;
		SeqNb : ?Text;
		RePresntmntRsn : ?Text;
		Pdct : ?Product2;
		TxId : ?TransactionIdentifier1;
		ICCRltdData : ?Text;
		SaleRcncltnId : ?Text;
		SaleRefNb : ?Text;
		VldtnSeqNb : ?Text;
		AddtlSvc : ?CardPaymentServiceType2Code;
		PmtCntxt : ?PaymentContext3;
		TxCtgy : ?Text;
	};

	public type CardSequenceNumberRange1 = {
		LastTx : ?Text;
		FrstTx : ?Text;
	};

	public type DateOrDateTimePeriod1Choice = {
		Dt : ?DatePeriod2;
		DtTm : ?DateTimePeriod1;
	};

	public type CardAggregated2 = {
		SeqNbRg : ?CardSequenceNumberRange1;
		SaleRcncltnId : ?Text;
		AddtlSvc : ?CardPaymentServiceType2Code;
		TxCtgy : ?Text;
		TxDtRg : ?DateOrDateTimePeriod1Choice;
	};

	public type CardTransaction3Choice = {
		Indv : ?CardIndividualTransaction2;
		Aggtd : ?CardAggregated2;
	};

	public type PartyType3Code = {
		#ACCP;
		#ACQR;
		#CISS;
		#DLIS;
		#ITAG;
		#MERC;
		#OPOI;
	};

	public type PartyType4Code = {
		#ACCP;
		#ACQR;
		#CISS;
		#ITAG;
		#MERC;
		#TAXH;
	};

	public type GenericIdentification32 = {
		Id : Text;
		Tp : ?PartyType3Code;
		Issr : ?PartyType4Code;
		ShrtNm : ?Text;
	};

	public type OnLineCapability1Code = {
		#OFLN;
		#ONLN;
		#SMON;
	};

	public type CardholderVerificationCapability1Code = {
		#APKI;
		#CHDT;
		#FBIG;
		#FBIO;
		#FCPN;
		#FDSG;
		#FEPN;
		#MNSG;
		#MNVR;
		#NPIN;
		#PKIS;
		#SCEC;
	};

	public type UserInterface2Code = {
		#CDSP;
		#MDSP;
	};

	public type DisplayCapabilities1 = {
		LineWidth : Text;
		NbOfLines : Text;
		DispTp : UserInterface2Code;
	};

	public type PointOfInteractionCapabilities1 = {
		OnLineCpblties : ?OnLineCapability1Code;
		CardRdngCpblties : ?[CardDataReading1Code];

		CrdhldrVrfctnCpblties : ?[CardholderVerificationCapability1Code];

		PrtLineWidth : ?Text;
		DispCpblties : ?[DisplayCapabilities1];

	};

	public type POIComponentType1Code = {
		#CHIT;
		#EMVK;
		#EMVO;
		#MRIT;
		#PEDV;
		#SECM;
		#SOFT;
	};

	public type PointOfInteractionComponent1 = {
		Mdl : ?Text;
		ManfctrId : ?Text;
		SrlNb : ?Text;
		VrsnNb : ?Text;
		ApprvlNb : ?[Text];

		POICmpntTp : POIComponentType1Code;
	};

	public type PointOfInteraction1 = {
		Id : GenericIdentification32;
		SysNm : ?Text;
		GrpId : ?Text;
		Cpblties : ?PointOfInteractionCapabilities1;
		Cmpnt : ?[PointOfInteractionComponent1];

	};

	public type GenericIdentification1 = {
		Id : Text;
		Issr : ?Text;
		SchmeNm : ?Text;
	};

	public type CSCManagement1Code = {
		#BYPS;
		#NCSC;
		#PRST;
		#UNRD;
	};

	public type CardSecurityInformation1 = {
		CSCVal : ?Text;
		CSCMgmt : CSCManagement1Code;
	};

	public type TrackData1 = {
		TrckNb : ?Text;
		TrckVal : Text;
	};

	public type PlainCardData1 = {
		PAN : Text;
		SvcCd : ?Text;
		FctvDt : ?Int;
		CardSeqNb : ?Text;
		CardSctyCd : ?CardSecurityInformation1;
		TrckData : ?[TrackData1];

		XpryDt : Int;
	};

	public type PaymentCard4 = {
		CardBrnd : ?GenericIdentification1;
		CardCtryCd : ?Text;
		AddtlCardData : ?Text;
		PlainCardData : ?PlainCardData1;
	};

	public type CardTransaction18 = {
		Tx : ?CardTransaction3Choice;
		POI : ?PointOfInteraction1;
		Card : ?PaymentCard4;
		PrePdAcct : ?CashAccount40;
	};

	public type IdentificationSource3Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type OtherIdentification1 = {
		Id : Text;
		Tp : IdentificationSource3Choice;
		Sfx : ?Text;
	};

	public type SecurityIdentification19 = {
		Desc : ?Text;
		ISIN : ?Text;
		OthrId : ?[OtherIdentification1];

	};

	public type ProprietaryAgent4 = {
		Tp : Text;
		Agt : BranchAndFinancialInstitutionIdentification6;
	};

	public type TransactionAgents5 = {
		RcvgAgt : ?BranchAndFinancialInstitutionIdentification6;
		InstdAgt : ?BranchAndFinancialInstitutionIdentification6;
		InstgAgt : ?BranchAndFinancialInstitutionIdentification6;
		SttlmPlc : ?BranchAndFinancialInstitutionIdentification6;
		DbtrAgt : ?BranchAndFinancialInstitutionIdentification6;
		IssgAgt : ?BranchAndFinancialInstitutionIdentification6;
		IntrmyAgt1 : ?BranchAndFinancialInstitutionIdentification6;
		IntrmyAgt2 : ?BranchAndFinancialInstitutionIdentification6;
		IntrmyAgt3 : ?BranchAndFinancialInstitutionIdentification6;
		Prtry : ?[ProprietaryAgent4];

		DlvrgAgt : ?BranchAndFinancialInstitutionIdentification6;
		CdtrAgt : ?BranchAndFinancialInstitutionIdentification6;
	};

	public type EntryTransaction12 = {
		Amt : ?ActiveOrHistoricCurrencyAndAmount;
		Tax : ?TaxInformation10;
		RltdPric : ?TransactionPrice4Choice;
		AmtDtls : ?AmountAndCurrencyExchange3;
		LclInstrm : ?LocalInstrument2Choice;
		Purp : ?Purpose2Choice;
		Avlbty : ?[CashAvailability1];

		Refs : ?TransactionReferences6;
		BkTxCd : ?BankTransactionCodeStructure4;
		CorpActn : ?CorporateAction9;
		AddtlTxInf : ?Text;
		CdtDbtInd : ?CreditDebitCode;
		RltdQties : ?[TransactionQuantities3Choice];

		SplmtryData : ?[SupplementaryData1];

		RltdDts : ?TransactionDates3;
		RltdRmtInf : ?[RemittanceLocation7];

		PmtTpInf : ?PaymentTypeInformation27;
		SfkpgAcct : ?SecuritiesAccount19;
		Intrst : ?TransactionInterest4;
		RmtInf : ?RemittanceInformation21;
		Chrgs : ?Charges6;
		RtrInf : ?PaymentReturnReason5;
		RltdPties : ?TransactionParties9;
		CshDpst : ?[CashDeposit1];

		CardTx : ?CardTransaction18;
		FinInstrmId : ?SecurityIdentification19;
		RltdAgts : ?TransactionAgents5;
	};

	public type EntryDetails11 = {
		Btch : ?BatchInformation2;
		TxDtls : ?[EntryTransaction12];

	};

	public type TechnicalInputChannel1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type CardEntry5 = {
		POI : ?PointOfInteraction1;
		Card : ?PaymentCard4;
		AggtdNtry : ?CardAggregated2;
		PrePdAcct : ?CashAccount40;
	};

	public type ReportEntry12 = {
		Amt : ActiveOrHistoricCurrencyAndAmount;
		Sts : EntryStatus1Choice;
		NtryRef : ?Text;
		AmtDtls : ?AmountAndCurrencyExchange3;
		Avlbty : ?[CashAvailability1];

		BkTxCd : BankTransactionCodeStructure4;
		BookgDt : ?DateAndDateTime2Choice;
		ComssnWvrInd : ?Bool;
		CdtDbtInd : CreditDebitCode;
		AddtlInfInd : ?MessageIdentification2;
		AcctSvcrRef : ?Text;
		NtryDtls : ?[EntryDetails11];

		ValDt : ?DateAndDateTime2Choice;
		Intrst : ?TransactionInterest4;
		Chrgs : ?Charges6;
		AddtlNtryInf : ?Text;
		TechInptChanl : ?TechnicalInputChannel1Choice;
		CardTx : ?CardEntry5;
		RvslInd : ?Bool;
	};

	public type Pagination1 = {
		PgNb : Text;
		LastPgInd : ?Bool;
	};

	public type CopyDuplicate1Code = {
		#CODU;
		#COPY;
		#DUPL;
	};

	public type NumberAndSumOfTransactions1 = {
		Sum : ?Float;
		NbOfNtries : ?Text;
	};

	public type AmountAndDirection35 = {
		Amt : Float;
		CdtDbtInd : CreditDebitCode;
	};

	public type TotalsPerBankTransactionCode5 = {
		Dt : ?DateAndDateTime2Choice;
		Sum : ?Float;
		DbtNtries : ?NumberAndSumOfTransactions1;
		Avlbty : ?[CashAvailability1];

		BkTxCd : BankTransactionCodeStructure4;
		FcstInd : ?Bool;
		CdtNtries : ?NumberAndSumOfTransactions1;
		NbOfNtries : ?Text;
		TtlNetNtry : ?AmountAndDirection35;
	};

	public type NumberAndSumOfTransactions4 = {
		Sum : ?Float;
		NbOfNtries : ?Text;
		TtlNetNtry : ?AmountAndDirection35;
	};

	public type TotalTransactions6 = {
		TtlDbtNtries : ?NumberAndSumOfTransactions1;
		TtlNtriesPerBkTxCd : ?[TotalsPerBankTransactionCode5];

		TtlCdtNtries : ?NumberAndSumOfTransactions1;
		TtlNtries : ?NumberAndSumOfTransactions4;
	};

	public type AccountInterest4 = {
		Tp : ?InterestType1Choice;
		Rsn : ?Text;
		Tax : ?TaxCharges2;
		Rate : ?[Rate4];

		FrToDt : ?DateTimePeriod1;
	};

	public type AccountReport31 = {
		Id : Text;
		Bal : ?[CashBalance8];

		ElctrncSeqNb : ?Float;
		RptgSeq : ?SequenceRange1Choice;
		RptgSrc : ?ReportingSource1Choice;
		Acct : CashAccount41;
		Ntry : ?[ReportEntry12];

		RptPgntn : ?Pagination1;
		AddtlRptInf : ?Text;
		CpyDplctInd : ?CopyDuplicate1Code;
		TxsSummry : ?TotalTransactions6;
		CreDtTm : ?Int;
		Intrst : ?[AccountInterest4];

		FrToDt : ?DateTimePeriod1;
		LglSeqNb : ?Float;
		RltdAcct : ?CashAccount40;
	};

	public type OriginalBusinessQuery1 = {
		MsgId : Text;
		CreDtTm : ?Int;
		MsgNmId : ?Text;
	};

	public type GroupHeader81 = {
		MsgRcpt : ?PartyIdentification135;
		MsgPgntn : ?Pagination1;
		OrgnlBizQry : ?OriginalBusinessQuery1;
		MsgId : Text;
		CreDtTm : Int;
		AddtlInf : ?Text;
	};

	public type BankToCustomerAccountReportV10 = {
		Rpt : [AccountReport31];
		GrpHdr : GroupHeader81;
		SplmtryData : ?[SupplementaryData1];

	};

}