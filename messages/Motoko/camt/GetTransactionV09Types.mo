module {
	public type GenericIdentification1 = {
		Id : Text;
		Issr : ?Text;
		SchmeNm : ?Text;
	};

	public type RequestType4Choice = {
		Enqry : ?Text;
		Prtry : ?GenericIdentification1;
		PmtCtrl : ?Text;
	};

	public type MessageHeader9 = {
		ReqTp : ?RequestType4Choice;
		MsgId : Text;
		CreDtTm : ?Int;
	};

	public type SupplementaryDataEnvelope1 = {
		any : Any;
	};

	public type SupplementaryData1 = {
		Envlp : SupplementaryDataEnvelope1;
		PlcAndNm : ?Text;
	};

	public type DateTimePeriod1 = {
		ToDtTm : Int;
		FrDtTm : Int;
	};

	public type DateTimePeriod1Choice = {
		DtTmRg : ?DateTimePeriod1;
		ToDtTm : ?Int;
		FrDtTm : ?Int;
	};

	public type CashPaymentStatus2Code = {
		#FINL;
		#PDNG;
	};

	public type FinalStatusCode = {
		#CAND;
		#FNLD;
		#RJTD;
		#STLD;
	};

	public type PendingStatus4Code = {
		#ACPD;
		#AUTD;
		#AVLB;
		#INVD;
		#MATD;
		#PCAN;
		#PFST;
		#PSTL;
		#RMLR;
		#SMLR;
		#SRBL;
		#SRML;
		#SSPD;
		#STLE;
		#STLM;
		#UMAC;
		#VALD;
	};

	public type PaymentStatusCodeSearch2Choice = {
		PdgAndFnlSts : ?CashPaymentStatus2Code;
		FnlSts : ?FinalStatusCode;
		PdgSts : ?PendingStatus4Code;
	};

	public type InstructionStatusSearch5 = {
		PmtInstrStsDtTm : ?DateTimePeriod1Choice;
		PrtryStsRsn : ?Text;
		PmtInstrSts : ?PaymentStatusCodeSearch2Choice;
	};

	public type PaymentInstrument1Code = {
		#BCT;
		#BDT;
		#BKT;
		#CAN;
		#CCP;
		#CCT;
		#CDT;
		#CHK;
		#DCP;
		#RTI;
	};

	public type PaymentOrigin1Choice = {
		XMLMsgNm : ?Text;
		Prtry : ?Text;
		FINMT : ?Text;
		Instrm : ?PaymentInstrument1Code;
	};

	public type DatePeriod2 = {
		FrDt : Int;
		ToDt : Int;
	};

	public type DatePeriodSearch1Choice = {
		NEQDt : ?Int;
		EQDt : ?Int;
		FrDt : ?Int;
		ToDt : ?Int;
		FrToDt : ?DatePeriod2;
	};

	public type DateAndDateTimeSearch3Choice = {
		DtTmSch : ?DateTimePeriod1Choice;
		DtSch : ?DatePeriodSearch1Choice;
	};

	public type Priority5Code = {
		#HIGH;
		#LOWW;
		#NORM;
		#URGT;
	};

	public type Priority1Choice = {
		Cd : ?Priority5Code;
		Prtry : ?Text;
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

	public type CreditDebitCode = {
		#CRDT;
		#DBIT;
	};

	public type ImpliedCurrencyAndAmountRange1 = {
		Amt : ImpliedCurrencyAmountRange1Choice;
		CdtDbtInd : ?CreditDebitCode;
	};

	public type ActiveOrHistoricCurrencyAndAmountRange2 = {
		Amt : ImpliedCurrencyAmountRange1Choice;
		Ccy : Text;
		CdtDbtInd : ?CreditDebitCode;
	};

	public type ActiveOrHistoricAmountRange2Choice = {
		ImpldCcyAndAmtRg : ?ImpliedCurrencyAndAmountRange1;
		CcyAndAmtRg : ?ActiveOrHistoricCurrencyAndAmountRange2;
	};

	public type Instruction1Code = {
		#PBEN;
		#TFRO;
		#TTIL;
	};

	public type QueueTransactionIdentification1 = {
		QId : Text;
		PosInQ : Text;
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

	public type LongPaymentIdentification2 = {
		PmtMtd : ?PaymentOrigin1Choice;
		InstdAgt : BranchAndFinancialInstitutionIdentification6;
		InstgAgt : BranchAndFinancialInstitutionIdentification6;
		TxId : ?Text;
		UETR : ?Text;
		NtryTp : ?Text;
		IntrBkSttlmDt : Int;
		IntrBkSttlmAmt : Float;
		EndToEndId : ?Text;
	};

	public type ShortPaymentIdentification2 = {
		InstgAgt : BranchAndFinancialInstitutionIdentification6;
		TxId : Text;
		IntrBkSttlmDt : Int;
	};

	public type PaymentIdentification6Choice = {
		QId : ?QueueTransactionIdentification1;
		TxId : ?Text;
		LngBizId : ?LongPaymentIdentification2;
		PrtryId : ?Text;
		ShrtBizId : ?ShortPaymentIdentification2;
	};

	public type PaymentType3Code = {
		#BAL;
		#BCK;
		#CBH;
		#CBP;
		#CBS;
		#CLS;
		#CTR;
		#DPG;
		#DPH;
		#DPN;
		#DPP;
		#DPS;
		#EXP;
		#LIQ;
		#LMT;
		#LOA;
		#LOR;
		#MGL;
		#OND;
		#STF;
		#TCH;
		#TCP;
		#TCS;
		#TRP;
	};

	public type PaymentType4Choice = {
		Cd : ?PaymentType3Code;
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

	public type PaymentTransactionParty3 = {
		Cdtr : ?Party40Choice;
		Dbtr : ?Party40Choice;
		InstdAgt : ?BranchAndFinancialInstitutionIdentification6;
		InstgAgt : ?BranchAndFinancialInstitutionIdentification6;
		DbtrAgt : ?BranchAndFinancialInstitutionIdentification6;
		IntrmyAgt1 : ?BranchAndFinancialInstitutionIdentification6;
		IntrmyAgt2 : ?BranchAndFinancialInstitutionIdentification6;
		IntrmyAgt3 : ?BranchAndFinancialInstitutionIdentification6;
		UltmtCdtr : ?Party40Choice;
		UltmtDbtr : ?Party40Choice;
		InstgRmbrsmntAgt : ?BranchAndFinancialInstitutionIdentification6;
		InstdRmbrsmntAgt : ?BranchAndFinancialInstitutionIdentification6;
		CdtrAgt : ?BranchAndFinancialInstitutionIdentification6;
	};

	public type ActiveCurrencyAndAmountRange3 = {
		Amt : ImpliedCurrencyAmountRange1Choice;
		Ccy : Text;
		CdtDbtInd : ?CreditDebitCode;
	};

	public type ActiveAmountRange3Choice = {
		ImpldCcyAndAmtRg : ?ImpliedCurrencyAndAmountRange1;
		CcyAndAmtRg : ?ActiveCurrencyAndAmountRange3;
	};

	public type PaymentSearch8 = {
		Sts : ?[InstructionStatusSearch5];

		PmtMtd : ?[PaymentOrigin1Choice];

		ReqdExctnDt : ?[DateAndDateTimeSearch3Choice];

		Prty : ?[Priority1Choice];

		InstdAmt : ?[ActiveOrHistoricAmountRange2Choice];

		TxId : ?[Text];

		CdtDbtInd : ?CreditDebitCode;
		Instr : ?[Instruction1Code];

		InstdAmtCcy : ?[Text];

		PmtId : ?[PaymentIdentification6Choice];

		PmtTp : ?[PaymentType4Choice];

		Pties : ?PaymentTransactionParty3;
		IntrBkSttlmDt : ?[Int];

		PrcgVldtyTm : ?[DateTimePeriod1Choice];

		MsgId : ?[Text];

		IntrBkSttlmAmt : ?[ActiveAmountRange3Choice];

		EndToEndId : ?[Text];

		IntrBkSttlmAmtCcy : ?[Text];

	};

	public type ClearingSystemIdentification3Choice = {
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

	public type SystemSearch4 = {
		SysId : ?[ClearingSystemIdentification3Choice];

		Ctry : ?Text;
		AcctId : ?AccountIdentification4Choice;
		MmbId : ?[BranchAndFinancialInstitutionIdentification6];

	};

	public type EntryStatus1Code = {
		#BOOK;
		#FUTR;
		#PDNG;
	};

	public type AccountIdentificationSearchCriteria2Choice = {
		EQ : ?AccountIdentification4Choice;
		CTTxt : ?Text;
		NCTTxt : ?Text;
	};

	public type CashAccountEntrySearch7 = {
		NtryAmt : ?[ActiveOrHistoricAmountRange2Choice];

		NtrySts : ?[EntryStatus1Code];

		AcctOwnr : ?PartyIdentification135;
		AcctSvcr : ?BranchAndFinancialInstitutionIdentification6;
		AcctId : ?[AccountIdentificationSearchCriteria2Choice];

		NtryDt : ?[DateAndDateTimeSearch3Choice];

		CdtDbtInd : ?CreditDebitCode;
		NtryAmtCcy : ?[Text];

	};

	public type TransactionSearchCriteria9 = {
		PmtSch : ?PaymentSearch8;
		PmtFr : ?[SystemSearch4];

		PmtTo : ?[SystemSearch4];

		AcctNtrySch : ?CashAccountEntrySearch7;
	};

	public type SystemReturnCriteria2 = {
		CtryIdInd : ?Bool;
		MmbIdInd : ?Bool;
		AcctIdInd : ?Bool;
		SysIdInd : ?Bool;
	};

	public type InstructionStatusReturnCriteria1 = {
		PmtInstrStsDtTmInd : ?Bool;
		PmtInstrStsInd : ?Bool;
		PmtInstrStsRsnInd : ?Bool;
	};

	public type PaymentReturnCriteria4 = {
		InstrCpyInd : ?Bool;
		InstgRmbrsmntAgtInd : ?Bool;
		IntrmyInd : ?Bool;
		InstrInd : ?Bool;
		CdtDbtInd : ?Bool;
		DbtrInd : ?Bool;
		IntrBkSttlmDtInd : ?Bool;
		ReqdExctnDtInd : ?Bool;
		InstdAmtInd : ?Bool;
		MsgIdInd : ?Bool;
		InstdRmbrsmntAgtInd : ?Bool;
		EndToEndIdInd : ?Bool;
		PmtMTInd : ?Bool;
		PmtTpInd : ?Bool;
		PrtyInd : ?Bool;
		PurpInd : ?Bool;
		CdtrAgtInd : ?Bool;
		InstrStsRtrCrit : ?InstructionStatusReturnCriteria1;
		DbtrAgtInd : ?Bool;
		TxIdInd : ?Bool;
		CdtrInd : ?Bool;
		PmtMtdInd : ?Bool;
		PrcgVldtyTmInd : ?Bool;
		IntrBkSttlmAmtInd : ?Bool;
	};

	public type AccountCashEntryReturnCriteria3 = {
		NtryAmtInd : ?Bool;
		AcctCcyInd : ?Bool;
		NtryRefInd : ?Bool;
		AcctSvcrInd : ?Bool;
		NtryDtInd : ?Bool;
		NtryStsInd : ?Bool;
		AcctOwnrInd : ?Bool;
		AcctTpInd : ?Bool;
	};

	public type TransactionReturnCriteria5 = {
		PmtToRtrCrit : ?SystemReturnCriteria2;
		PmtFrRtrCrit : ?SystemReturnCriteria2;
		PmtRtrCrit : ?PaymentReturnCriteria4;
		AcctCshNtryRtrCrit : ?AccountCashEntryReturnCriteria3;
	};

	public type ReportIndicator1Code = {
		#PRPR;
		#STND;
	};

	public type TransactionCriteria9 = {
		SchCrit : ?[TransactionSearchCriteria9];

		NewQryNm : ?Text;
		RtrCrit : ?TransactionReturnCriteria5;
		StmtRpt : ?ReportIndicator1Code;
	};

	public type TransactionCriteria6Choice = {
		NewCrit : ?TransactionCriteria9;
		QryNm : ?Text;
	};

	public type QueryType2Code = {
		#ALLL;
		#CHNG;
		#DELD;
		#MODF;
	};

	public type TransactionQuery6 = {
		TxCrit : ?TransactionCriteria6Choice;
		QryTp : ?QueryType2Code;
	};

	public type GetTransactionV09 = {
		MsgHdr : MessageHeader9;
		SplmtryData : ?[SupplementaryData1];

		TxQryDef : ?TransactionQuery6;
	};

}