module {
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

	public type MarketInfrastructureIdentification1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type SystemIdentification2Choice = {
		Ctry : ?Text;
		MktInfrstrctrId : ?MarketInfrastructureIdentification1Choice;
	};

	public type Period2 = {
		FrDt : Int;
		ToDt : Int;
	};

	public type DateAndPeriod2Choice = {
		Dt : ?Int;
		Prd : ?Period2;
		FrDt : ?Int;
		ToDt : ?Int;
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

	public type ActiveCurrencyAndAmountRange3 = {
		Amt : ImpliedCurrencyAmountRange1Choice;
		Ccy : Text;
		CdtDbtInd : ?CreditDebitCode;
	};

	public type ActiveAmountRange3Choice = {
		ImpldCcyAndAmtRg : ?ImpliedCurrencyAndAmountRange1;
		CcyAndAmtRg : ?ActiveCurrencyAndAmountRange3;
	};

	public type PercentageRangeBoundary1 = {
		Incl : ?Bool;
		BdryRate : Float;
	};

	public type FromToPercentageRange1 = {
		Fr : PercentageRangeBoundary1;
		To : PercentageRangeBoundary1;
	};

	public type PercentageRange1Choice = {
		EQ : ?Float;
		Fr : ?PercentageRangeBoundary1;
		To : ?PercentageRangeBoundary1;
		NEQ : ?Float;
		FrTo : ?FromToPercentageRange1;
	};

	public type LimitType3Code = {
		#ACOL;
		#BILI;
		#DIDB;
		#DISC;
		#EXGT;
		#GLBL;
		#INBI;
		#MAND;
		#MULT;
		#NELI;
		#SPLC;
		#SPLF;
		#TDLC;
		#TDLF;
		#UCDT;
	};

	public type LimitType1Choice = {
		Cd : ?LimitType3Code;
		Prtry : ?Text;
	};

	public type LimitSearchCriteria6 = {
		BilLmtCtrPtyId : ?[BranchAndFinancialInstitutionIdentification6];

		SysId : ?SystemIdentification2Choice;
		LmtVldAsOfDt : ?DateAndPeriod2Choice;
		AcctOwnr : ?BranchAndFinancialInstitutionIdentification6;
		AcctId : ?AccountIdentification4Choice;
		LmtAmt : ?ActiveAmountRange3Choice;
		LmtCcy : ?Text;
		UsdAmt : ?ActiveAmountRange3Choice;
		UsdPctg : ?PercentageRange1Choice;
		CurLmtTp : ?[LimitType1Choice];

		DfltLmtTp : ?[LimitType1Choice];

	};

	public type LimitReturnCriteria2 = {
		UsdAmtInd : ?Bool;
		StsInd : ?Bool;
		StartDtTmInd : ?Bool;
		UsdPctgInd : ?Bool;
	};

	public type LimitCriteria6 = {
		SchCrit : ?[LimitSearchCriteria6];

		NewQryNm : ?Text;
		RtrCrit : ?LimitReturnCriteria2;
	};

	public type LimitCriteria6Choice = {
		NewCrit : ?LimitCriteria6;
		QryNm : ?Text;
	};

	public type QueryType2Code = {
		#ALLL;
		#CHNG;
		#DELD;
		#MODF;
	};

	public type LimitQuery4 = {
		LmtCrit : ?LimitCriteria6Choice;
		QryTp : ?QueryType2Code;
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

	public type GetLimitV07 = {
		LmtQryDef : ?LimitQuery4;
		MsgHdr : MessageHeader9;
		SplmtryData : ?[SupplementaryData1];

	};

}