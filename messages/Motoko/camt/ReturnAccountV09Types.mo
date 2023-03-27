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

	public type OriginalBusinessQuery1 = {
		MsgId : Text;
		CreDtTm : ?Int;
		MsgNmId : ?Text;
	};

	public type MessageHeader7 = {
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

	public type ErrorHandling3Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type ErrorHandling5 = {
		Err : ErrorHandling3Choice;
		Desc : ?Text;
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

	public type ActiveCurrencyAndAmount = {
		Ccy : Text;
		value : Float;
	};

	public type Amount2Choice = {
		AmtWthtCcy : ?Float;
		AmtWthCcy : ?ActiveCurrencyAndAmount;
	};

	public type CreditDebitCode = {
		#CRDT;
		#DBIT;
	};

	public type Limit5 = {
		Amt : Amount2Choice;
		CdtDbtInd : CreditDebitCode;
	};

	public type StandingOrderType1Code = {
		#PSTO;
		#USTO;
	};

	public type StandingOrderType1Choice = {
		Cd : ?StandingOrderType1Code;
		Prtry : ?GenericIdentification1;
	};

	public type TotalAmountAndCurrency1 = {
		Ccy : ?Text;
		CdtDbtInd : ?CreditDebitCode;
		TtlAmt : Float;
	};

	public type StandingOrderTotalAmount1 = {
		PdgPrdfndOrdr : TotalAmountAndCurrency1;
		SetPrdfndOrdr : TotalAmountAndCurrency1;
		SetStgOrdr : TotalAmountAndCurrency1;
		PdgStgOrdr : TotalAmountAndCurrency1;
	};

	public type CashAccount40 = {
		Id : ?AccountIdentification4Choice;
		Nm : ?Text;
		Tp : ?CashAccountType2Choice;
		Ccy : ?Text;
		Prxy : ?ProxyAccountIdentification1;
	};

	public type EventType1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type ExecutionType1Choice = {
		Tm : ?Int;
		Evt : ?EventType1Choice;
	};

	public type Frequency2Code = {
		#ADHO;
		#DAIL;
		#INDA;
		#MIAN;
		#MNTH;
		#OVNG;
		#QURT;
		#WEEK;
		#YEAR;
	};

	public type DatePeriod3 = {
		FrDt : Int;
		ToDt : ?Int;
	};

	public type StandingOrder9 = {
		Tp : ?StandingOrderType1Choice;
		Amt : Amount2Choice;
		Ccy : ?Text;
		Ref : ?Text;
		AssoctdPoolAcct : ?AccountIdentification4Choice;
		SysMmb : ?BranchAndFinancialInstitutionIdentification6;
		LkSetOrdrSeq : ?Float;
		Cdtr : ?BranchAndFinancialInstitutionIdentification6;
		Dbtr : ?BranchAndFinancialInstitutionIdentification6;
		LkSetId : ?Text;
		TtlsPerStgOrdr : ?StandingOrderTotalAmount1;
		DbtrAcct : ?CashAccount40;
		CdtDbtInd : CreditDebitCode;
		CdtrAcct : ?CashAccount40;
		ExctnTp : ?ExecutionType1Choice;
		Frqcy : ?Frequency2Code;
		ZeroSweepInd : ?Bool;
		VldtyPrd : ?DatePeriod3;
		LkSetOrdrId : ?Text;
		RspnsblPty : ?BranchAndFinancialInstitutionIdentification6;
	};

	public type BalanceType11Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type BalanceStatus1Code = {
		#PDNG;
		#STLD;
	};

	public type DateAndDateTime2Choice = {
		Dt : ?Int;
		DtTm : ?Int;
	};

	public type ProcessingType1Code = {
		#BLCK;
		#COLD;
		#CSDB;
		#CVHD;
		#DLVR;
		#EARM;
		#EFAC;
		#RJCT;
		#RSVT;
	};

	public type ProcessingType1Choice = {
		Cd : ?ProcessingType1Code;
		Prtry : ?Text;
	};

	public type BalanceRestrictionType1 = {
		Tp : GenericIdentification1;
		Desc : ?Text;
		PrcgTp : ?ProcessingType1Choice;
	};

	public type CashBalance13 = {
		Tp : ?BalanceType11Choice;
		Amt : Float;
		Sts : ?BalanceStatus1Code;
		CdtDbtInd : CreditDebitCode;
		ValDt : ?DateAndDateTime2Choice;
		NbOfPmts : ?Float;
		PrcgDt : ?DateAndDateTime2Choice;
		RstrctnTp : ?BalanceRestrictionType1;
	};

	public type SystemBalanceType2Code = {
		#ADJT;
		#ADWR;
		#AIDR;
		#AVLB;
		#BLCK;
		#BLOC;
		#BOOK;
		#BSCC;
		#BSCD;
		#CCPS;
		#CLSG;
		#COHB;
		#COLC;
		#CPBL;
		#CRDT;
		#CRRT;
		#CUSA;
		#CUST;
		#DBIT;
		#DLOD;
		#DOHB;
		#DPBL;
		#DSET;
		#DWRD;
		#EAST;
		#FCOL;
		#FCOU;
		#FORC;
		#FSET;
		#FUND;
		#FUTB;
		#INTM;
		#IRDR;
		#IRLT;
		#LACK;
		#LRLD;
		#LTSF;
		#NOTE;
		#NSET;
		#OPNG;
		#OTCC;
		#OTCG;
		#OTCN;
		#OTHB;
		#PDNG;
		#PIPO;
		#PRAV;
		#PYMT;
		#REJB;
		#REPC;
		#REPD;
		#SAPC;
		#SAPD;
		#SAPP;
		#SCOL;
		#SCOU;
		#THRE;
		#TOHB;
		#TPBL;
		#XCHC;
		#XCHG;
		#XCHN;
		#XCRD;
		#XDBT;
		#XPCD;
	};

	public type BalanceType9Choice = {
		Cd : ?SystemBalanceType2Code;
		Prtry : ?Text;
	};

	public type CashBalance11 = {
		Tp : ?BalanceType9Choice;
		Amt : Float;
		Sts : ?BalanceStatus1Code;
		CdtDbtInd : CreditDebitCode;
		ValDt : ?DateAndDateTime2Choice;
		NbOfPmts : ?Float;
	};

	public type BilateralLimit3 = {
		BilBal : ?[CashBalance11];

		CdtDbtInd : CreditDebitCode;
		LmtAmt : Amount2Choice;
		CtrPtyId : BranchAndFinancialInstitutionIdentification6;
	};

	public type CashAccount42 = {
		Nm : ?Text;
		Tp : ?CashAccountType2Choice;
		Ccy : ?Text;
		Ownr : ?PartyIdentification135;
		Prxy : ?ProxyAccountIdentification1;
		Svcr : ?BranchAndFinancialInstitutionIdentification6;
		CurMulLmt : ?Limit5;
		StgOrdr : ?[StandingOrder9];

		MulBal : ?[CashBalance13];

		CurBilLmt : ?[BilateralLimit3];

	};

	public type AccountOrBusinessError5Choice = {
		BizErr : ?[ErrorHandling5];

		Acct : ?CashAccount42;
	};

	public type AccountReport29 = {
		AcctId : AccountIdentification4Choice;
		AcctOrErr : AccountOrBusinessError5Choice;
	};

	public type AccountOrOperationalError5Choice = {
		AcctRpt : ?[AccountReport29];

		OprlErr : ?[ErrorHandling5];

	};

	public type ReturnAccountV09 = {
		MsgHdr : MessageHeader7;
		SplmtryData : ?[SupplementaryData1];

		RptOrErr : AccountOrOperationalError5Choice;
	};

}