module {
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

	public type FinancialInstitutionIdentification19 = {
		LEI : ?Text;
		BICFI : ?Text;
		Othr : ?GenericFinancialIdentification1;
		ClrSysMmbId : ?ClearingSystemMemberIdentification2;
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

	public type Party43Choice = {
		FIId : ?FinancialInstitutionIdentification19;
		OrgId : ?OrganisationIdentification29;
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

	public type PartyIdentification138 = {
		Id : Party43Choice;
		Nm : Text;
		LglNm : ?Text;
		PstlAdr : ?PostalAddress24;
		CtctDtls : ?Contact4;
		CtryOfRes : ?Text;
	};

	public type BillingBalanceType1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type ActiveOrHistoricCurrencyAndAmount = {
		Ccy : Text;
		value : Float;
	};

	public type AmountAndDirection34 = {
		Amt : ActiveOrHistoricCurrencyAndAmount;
		Sgn : ?Bool;
	};

	public type BillingCurrencyType1Code = {
		#ACCT;
		#PRCG;
		#STLM;
	};

	public type BillingBalance1 = {
		Tp : BillingBalanceType1Choice;
		Val : AmountAndDirection34;
		CcyTp : ?BillingCurrencyType1Code;
	};

	public type BillingStatementStatus1Code = {
		#ORGN;
		#RPLC;
		#TEST;
	};

	public type ServicePaymentMethod1Code = {
		#BCMP;
		#FLAT;
		#FREE;
		#INVS;
		#PVCH;
		#WVED;
	};

	public type BillingChargeMethod1Code = {
		#BBSE;
		#BCHG;
		#DPRC;
		#FCHG;
		#LPRC;
		#MCHG;
		#MXRD;
		#STAM;
		#TIR1;
		#TIR2;
		#TIR3;
		#TIR4;
		#TIR5;
		#TIR6;
		#TIR7;
		#TIR8;
		#TIR9;
		#TPRC;
		#UPRC;
		#ZPRC;
	};

	public type BillingPrice1 = {
		Ccy : ?Text;
		Mtd : ?BillingChargeMethod1Code;
		Rule : ?Text;
		UnitPric : ?AmountAndDirection34;
	};

	public type BillingServicesAmount2 = {
		SttlmAmt : ?AmountAndDirection34;
		HstAmt : AmountAndDirection34;
		PricgAmt : ?AmountAndDirection34;
	};

	public type BillingServicesAmount1 = {
		HstAmt : AmountAndDirection34;
		PricgAmt : ?AmountAndDirection34;
	};

	public type BillingServicesTax1 = {
		Nb : Text;
		Desc : ?Text;
		Rate : Float;
		HstAmt : AmountAndDirection34;
		PricgAmt : ?AmountAndDirection34;
	};

	public type BillingMethod1 = {
		SvcChrgHstAmt : AmountAndDirection34;
		TtlChrg : BillingServicesAmount2;
		SvcTax : BillingServicesAmount1;
		TaxId : [BillingServicesTax1];
	};

	public type BillingMethod2 = {
		SvcChrgHstAmt : AmountAndDirection34;
		SvcTax : BillingServicesAmount1;
		TaxId : [BillingServicesTax1];
	};

	public type BillingServicesTax2 = {
		Nb : Text;
		Desc : ?Text;
		Rate : Float;
		PricgAmt : AmountAndDirection34;
	};

	public type BillingMethod3 = {
		TaxId : [BillingServicesTax2];
		SvcTaxPricAmt : AmountAndDirection34;
	};

	public type BillingMethod1Choice = {
		MtdA : ?BillingMethod1;
		MtdB : ?BillingMethod2;
		MtdD : ?BillingMethod3;
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

	public type BillingSubServiceQualifier1Code = {
		#BILA;
		#LBOX;
		#MACT;
		#SEQN;
		#STOR;
	};

	public type BillingSubServiceQualifier1Choice = {
		Cd : ?BillingSubServiceQualifier1Code;
		Prtry : ?Text;
	};

	public type BillingSubServiceIdentification1 = {
		Id : Text;
		Issr : BillingSubServiceQualifier1Choice;
	};

	public type BillingServiceCommonIdentification1 = {
		Id : Text;
		Issr : Text;
	};

	public type BillingServiceIdentification3 = {
		Id : Text;
		SvcTp : ?Text;
		Desc : Text;
		BkTxCd : ?BankTransactionCodeStructure4;
		SubSvc : ?BillingSubServiceIdentification1;
		CmonCd : ?BillingServiceCommonIdentification1;
	};

	public type BillingServiceParameters3 = {
		Vol : ?Float;
		BkSvc : BillingServiceIdentification3;
	};

	public type ServiceTaxDesignation1Code = {
		#TAXE;
		#XMPT;
		#ZERO;
	};

	public type TaxReason1 = {
		Cd : Text;
		Expltn : Text;
	};

	public type ServiceTaxDesignation1 = {
		Cd : ServiceTaxDesignation1Code;
		Rgn : ?Text;
		TaxRsn : ?[TaxReason1];

	};

	public type BillingService2 = {
		PmtMtd : ServicePaymentMethod1Code;
		BalReqrdAcctAmt : ?AmountAndDirection34;
		Pric : ?BillingPrice1;
		OrgnlChrgPric : AmountAndDirection34;
		TaxClctn : ?BillingMethod1Choice;
		SvcDtl : BillingServiceParameters3;
		OrgnlChrgSttlmAmt : ?AmountAndDirection34;
		TaxDsgnt : ServiceTaxDesignation1;
	};

	public type BillingCompensationType1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type BillingCurrencyType2Code = {
		#ACCT;
		#HOST;
		#PRCG;
		#STLM;
	};

	public type BillingCompensation1 = {
		Tp : BillingCompensationType1Choice;
		Val : AmountAndDirection34;
		CcyTp : ?BillingCurrencyType2Code;
	};

	public type BillingTaxCalculationMethod1Code = {
		#MTDA;
		#MTDB;
		#MTDC;
		#MTDD;
		#NTAX;
		#UDFD;
	};

	public type ResidenceLocation1Choice = {
		Area : ?Text;
		Ctry : ?Text;
	};

	public type AccountTax1 = {
		Rgn : ?Text;
		ClctnMtd : BillingTaxCalculationMethod1Code;
		NonResCtry : ?ResidenceLocation1Choice;
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

	public type AccountLevel1Code = {
		#INTM;
		#SMRY;
	};

	public type ParentCashAccount4 = {
		Id : CashAccount40;
		Lvl : ?AccountLevel1Code;
		Svcr : ?BranchAndFinancialInstitutionIdentification6;
	};

	public type CompensationMethod1Code = {
		#DBTD;
		#DDBT;
		#INVD;
		#NOCP;
	};

	public type AccountLevel2Code = {
		#DETL;
		#INTM;
		#SMRY;
	};

	public type CashAccountCharacteristics4 = {
		Tax : ?AccountTax1;
		DbtAcct : ?AccountIdentification4Choice;
		AcctSvcr : ?BranchAndFinancialInstitutionIdentification6;
		SttlmAdvc : ?Text;
		PrntAcct : ?ParentCashAccount4;
		CompstnMtd : CompensationMethod1Code;
		AcctLvl : AccountLevel2Code;
		DelydDbtDt : ?Int;
		AcctSvcrCtct : Contact4;
		SttlmCcyCd : ?Text;
		CshAcct : CashAccount40;
		HstCcyCd : ?Text;
		AcctBalCcyCd : Text;
	};

	public type CurrencyExchange6 = {
		SrcCcy : Text;
		Desc : ?Text;
		UnitCcy : ?Text;
		TrgtCcy : Text;
		XchgRate : Float;
		Cmnts : ?Text;
		QtnDt : ?Int;
	};

	public type ServiceAdjustmentType1Code = {
		#COMP;
		#NCMP;
	};

	public type BillingServiceAdjustment1 = {
		Tp : ServiceAdjustmentType1Code;
		Amt : AmountAndDirection34;
		AdjstmntId : ?Text;
		ErrDt : ?Int;
		Desc : Text;
		OrgnlChrgAmt : ?AmountAndDirection34;
		PricChng : ?AmountAndDirection34;
		NewVol : ?Float;
		OrgnlPric : ?AmountAndDirection34;
		VolChng : ?Float;
		NewChrgAmt : ?AmountAndDirection34;
		NewPric : ?AmountAndDirection34;
		SubSvc : ?BillingSubServiceIdentification1;
		BalReqrdAmt : ?AmountAndDirection34;
		OrgnlVol : ?Float;
	};

	public type BalanceAdjustmentType1Code = {
		#CLLD;
		#FLOT;
		#LDGR;
	};

	public type BalanceAdjustment1 = {
		Tp : BalanceAdjustmentType1Code;
		ErrDt : ?Int;
		PstngDt : Int;
		Days : ?Float;
		Desc : Text;
		EarngsAdjstmntAmt : ?AmountAndDirection34;
		BalAmt : AmountAndDirection34;
		AvrgAmt : ?AmountAndDirection34;
	};

	public type BillingServicesAmount3 = {
		SrcAmt : AmountAndDirection34;
		HstAmt : AmountAndDirection34;
	};

	public type BillingServicesTax3 = {
		Nb : Text;
		Desc : ?Text;
		Rate : Float;
		TtlTaxAmt : AmountAndDirection34;
	};

	public type TaxCalculation1 = {
		TtlTaxblSvcChrgHstAmt : AmountAndDirection34;
		HstCcy : Text;
		TaxblSvcChrgConvs : [BillingServicesAmount3];
		TaxId : [BillingServicesTax3];
		TtlTax : AmountAndDirection34;
	};

	public type BillingServiceIdentification2 = {
		Id : Text;
		Desc : Text;
		SubSvc : ?BillingSubServiceIdentification1;
	};

	public type BillingServiceParameters2 = {
		Vol : ?Float;
		SvcChrgAmt : AmountAndDirection34;
		BkSvc : BillingServiceIdentification2;
		UnitPric : ?AmountAndDirection34;
	};

	public type BillingMethod4 = {
		TaxClctn : TaxCalculation1;
		SvcDtl : [BillingServiceParameters2];
	};

	public type BillingTaxIdentification2 = {
		VATRegnNb : ?Text;
		TaxRegnNb : ?Text;
		TaxCtct : ?Contact4;
	};

	public type BillingTaxRegion2 = {
		MtdC : ?BillingMethod4;
		PtDt : ?Int;
		SttlmAmt : AmountAndDirection34;
		TaxDueToRgn : AmountAndDirection34;
		RgnNb : Text;
		RgnNm : Text;
		SndgFI : ?BillingTaxIdentification2;
		InvcNb : ?Text;
		CstmrTaxId : Text;
	};

	public type BillingRateIdentification1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type BillingRate1 = {
		Id : BillingRateIdentification1Choice;
		Val : Float;
		DaysInPrd : ?Float;
		DaysInYr : ?Float;
	};

	public type DatePeriod1 = {
		FrDt : ?Int;
		ToDt : Int;
	};

	public type BillingStatement4 = {
		Bal : ?[BillingBalance1];

		Sts : BillingStatementStatus1Code;
		Svc : ?[BillingService2];

		StmtId : Text;
		Compstn : ?[BillingCompensation1];

		AcctChrtcs : CashAccountCharacteristics4;
		CcyXchg : ?[CurrencyExchange6];

		SvcAdjstmnt : ?[BillingServiceAdjustment1];

		BalAdjstmnt : ?[BalanceAdjustment1];

		TaxRgn : ?[BillingTaxRegion2];

		RateData : ?[BillingRate1];

		CreDtTm : Int;
		FrToDt : DatePeriod1;
	};

	public type StatementGroup4 = {
		SndrIndvCtct : ?[Contact4];

		GrpId : Text;
		Rcvr : PartyIdentification138;
		Sndr : PartyIdentification138;
		RcvrIndvCtct : ?[Contact4];

		BllgStmt : [BillingStatement4];
	};

	public type Pagination1 = {
		PgNb : Text;
		LastPgInd : ?Bool;
	};

	public type ReportHeader6 = {
		MsgPgntn : ?Pagination1;
		RptId : Text;
	};

	public type BankServicesBillingStatementV04 = {
		BllgStmtGrp : [StatementGroup4];
		RptHdr : ReportHeader6;
	};

}