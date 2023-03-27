module {
	public type Pagination1 = {
		PgNb : Text;
		LastPgInd : ?Bool;
	};

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

	public type OriginalBusinessQuery1 = {
		MsgId : Text;
		CreDtTm : ?Int;
		MsgNmId : ?Text;
	};

	public type MessageHeader8 = {
		MsgPgntn : ?Pagination1;
		ReqTp : ?RequestType4Choice;
		OrgnlBizQry : ?OriginalBusinessQuery1;
		MsgId : Text;
		CreDtTm : ?Int;
		QryNm : ?Text;
	};

	public type SupplementaryDataEnvelope1 = {
		any : Any;
	};

	public type SupplementaryData1 = {
		Envlp : SupplementaryDataEnvelope1;
		PlcAndNm : ?Text;
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

	public type DateAndDateTime2Choice = {
		Dt : ?Int;
		DtTm : ?Int;
	};

	public type CreditDebitCode = {
		#CRDT;
		#DBIT;
	};

	public type MarketInfrastructureIdentification1Choice = {
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

	public type System2 = {
		SysId : ?MarketInfrastructureIdentification1Choice;
		Ctry : ?Text;
		AcctId : ?AccountIdentification4Choice;
		MmbId : ?BranchAndFinancialInstitutionIdentification6;
	};

	public type FinalStatus1Code = {
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

	public type PaymentStatusCode6Choice = {
		Fnl : ?FinalStatus1Code;
		Pdg : ?PendingStatus4Code;
		Sttlm : ?Text;
		RTGS : ?Text;
		Prtry : ?Text;
	};

	public type UnmatchedStatusReason1Code = {
		#CADE;
		#CHAR;
		#CLAT;
		#CMIS;
		#CPCA;
		#DDAT;
		#DDEA;
		#DELN;
		#DEPT;
		#DMON;
		#DQUA;
		#DSEC;
		#DTRA;
		#DTRD;
		#FORF;
		#FRAP;
		#ICAG;
		#ICUS;
		#IEXE;
		#IIND;
		#LATE;
		#NCRR;
		#NMAS;
		#PHYS;
		#PLCE;
		#PODU;
		#REGD;
		#REPA;
		#REPO;
		#REPP;
		#RERT;
		#RSPR;
		#RTGS;
		#SAFE;
		#SETR;
		#TERM;
		#VASU;
	};

	public type CancelledStatusReason1Code = {
		#CANI;
		#CANS;
		#CSUB;
	};

	public type PendingFailingSettlement1Code = {
		#AWMO;
		#AWSH;
		#BATC;
		#BENO;
		#BLOC;
		#BYIY;
		#CAIS;
		#CANR;
		#CERT;
		#CHAS;
		#CLAC;
		#CLAT;
		#CMON;
		#COLL;
		#CPEC;
		#CYCL;
		#DEPO;
		#DKNY;
		#DOCC;
		#DOCY;
		#FLIM;
		#GLOB;
		#GUAD;
		#INCA;
		#LAAW;
		#LACK;
		#LALO;
		#LATE;
		#LINK;
		#MINO;
		#MLAT;
		#MONY;
		#MUNO;
		#NCON;
		#NEWI;
		#NOFX;
		#OBJT;
		#PART;
		#PHSE;
		#PREA;
		#REFS;
		#SBLO;
		#SDUT;
		#STCD;
		#YCOL;
	};

	public type SuspendedStatusReason1Code = {
		#SUBS;
		#SUBY;
	};

	public type ProprietaryStatusJustification2 = {
		Rsn : Text;
		PrtryStsRsn : Text;
	};

	public type PendingSettlement2Code = {
		#AWMO;
		#AWSH;
		#BATC;
		#BLOC;
		#CAIS;
		#CHAS;
		#CLAC;
		#CMON;
		#COLL;
		#CPEC;
		#CYCL;
		#DEPO;
		#DOCC;
		#DOCY;
		#FLIM;
		#FUTU;
		#GLOB;
		#GUAD;
		#INCA;
		#LACK;
		#LALO;
		#LINK;
		#MINO;
		#MONY;
		#MUNO;
		#NCON;
		#NEWI;
		#NMAS;
		#NOFX;
		#PART;
		#PCAP;
		#PHSE;
		#PREA;
		#REFS;
		#REFU;
		#SBLO;
		#SDUT;
		#TAMM;
		#YCOL;
	};

	public type PaymentStatusReason1Choice = {
		Umtchd : ?UnmatchedStatusReason1Code;
		Canc : ?CancelledStatusReason1Code;
		PdgFlngSttlm : ?PendingFailingSettlement1Code;
		Sspd : ?SuspendedStatusReason1Code;
		PrtryRjctn : ?ProprietaryStatusJustification2;
		Prtry : ?Text;
		PdgSttlm : ?PendingSettlement2Code;
	};

	public type PaymentStatus6 = {
		Cd : ?PaymentStatusCode6Choice;
		Rsn : ?[PaymentStatusReason1Choice];

		DtTm : ?DateAndDateTime2Choice;
	};

	public type PaymentCommon5 = {
		PmtMtd : ?PaymentOrigin1Choice;
		ReqdExctnDt : ?DateAndDateTime2Choice;
		NtryDt : ?DateAndDateTime2Choice;
		CdtDbtInd : ?CreditDebitCode;
		PmtFr : ?System2;
		PmtTo : ?System2;
		CmonSts : ?[PaymentStatus6];

	};

	public type NumberAndSumOfTransactions2 = {
		Sum : ?Float;
		CdtDbtInd : ?CreditDebitCode;
		TtlNetNtryAmt : ?Float;
		NbOfNtries : ?Text;
	};

	public type QueueTransactionIdentification1 = {
		QId : Text;
		PosInQ : Text;
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

	public type ActiveOrHistoricCurrencyAndAmount = {
		Ccy : Text;
		value : Float;
	};

	public type Amount3Choice = {
		AmtWthtCcy : ?Float;
		AmtWthCcy : ?ActiveOrHistoricCurrencyAndAmount;
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

	public type DateTimePeriod1 = {
		ToDtTm : Int;
		FrDtTm : Int;
	};

	public type DateTimePeriod1Choice = {
		DtTmRg : ?DateTimePeriod1;
		ToDtTm : ?Int;
		FrDtTm : ?Int;
	};

	public type ActiveCurrencyAndAmount = {
		Ccy : Text;
		value : Float;
	};

	public type Amount2Choice = {
		AmtWthtCcy : ?Float;
		AmtWthCcy : ?ActiveCurrencyAndAmount;
	};

	public type PaymentInstruction32 = {
		Tp : ?PaymentType4Choice;
		Sts : ?[PaymentStatus6];

		PmtMtd : ?PaymentOrigin1Choice;
		ReqdExctnDt : ?DateAndDateTime2Choice;
		Prty : ?Priority1Choice;
		Purp : ?Text;
		InstdAmt : ?Amount3Choice;
		TxId : ?Text;
		InstrCpy : ?Text;
		Pties : ?PaymentTransactionParty3;
		IntrBkSttlmDt : ?Int;
		PrcgVldtyTm : ?DateTimePeriod1Choice;
		MsgId : ?Text;
		IntrBkSttlmAmt : ?Amount2Choice;
		GnrtdOrdr : ?Bool;
		EndToEndId : ?Text;
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

	public type CashAccount41 = {
		Id : ?AccountIdentification4Choice;
		Nm : ?Text;
		Tp : ?CashAccountType2Choice;
		Ccy : ?Text;
		Ownr : ?PartyIdentification135;
		Prxy : ?ProxyAccountIdentification1;
		Svcr : ?BranchAndFinancialInstitutionIdentification6;
	};

	public type EntryStatus1Code = {
		#BOOK;
		#FUTR;
		#PDNG;
	};

	public type CashEntry2 = {
		Dt : ?DateAndDateTime2Choice;
		Id : ?Text;
		Amt : ?ActiveCurrencyAndAmount;
		Sts : ?EntryStatus1Code;
		StmtId : ?Text;
		AcctSvcrRef : ?Float;
		AddtlNtryInf : ?[Text];

	};

	public type CashAccountAndEntry4 = {
		Acct : CashAccount41;
		Ntry : ?CashEntry2;
	};

	public type SecuritiesTransactionReferences1 = {
		AcctOwnrTxId : ?Text;
		AcctSvcrTxId : ?Text;
		PrcgId : ?Text;
		MktInfrstrctrTxId : ?Text;
	};

	public type Transaction74 = {
		Pmt : ?PaymentInstruction32;
		AcctNtry : ?CashAccountAndEntry4;
		CdtDbtInd : ?CreditDebitCode;
		PmtFr : ?System2;
		PmtTo : ?System2;
		SctiesTxRefs : ?SecuritiesTransactionReferences1;
	};

	public type ErrorHandling3Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type ErrorHandling5 = {
		Err : ErrorHandling3Choice;
		Desc : ?Text;
	};

	public type TransactionOrError5Choice = {
		Tx : ?Transaction74;
		BizErr : ?[ErrorHandling5];

	};

	public type TransactionReport6 = {
		PmtId : PaymentIdentification6Choice;
		TxOrErr : TransactionOrError5Choice;
	};

	public type Transactions9 = {
		PmtCmonInf : ?PaymentCommon5;
		TxsSummry : ?NumberAndSumOfTransactions2;
		TxRpt : [TransactionReport6];
	};

	public type TransactionReportOrError5Choice = {
		BizRpt : ?Transactions9;
		OprlErr : ?[ErrorHandling5];

	};

	public type ReturnTransactionV09 = {
		MsgHdr : MessageHeader8;
		SplmtryData : ?[SupplementaryData1];

		RptOrErr : TransactionReportOrError5Choice;
	};

}