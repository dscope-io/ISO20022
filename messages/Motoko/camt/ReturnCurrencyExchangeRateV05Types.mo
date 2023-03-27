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

	public type ErrorHandling1Code = {
		#X020;
		#X030;
		#X050;
	};

	public type ErrorHandling1Choice = {
		Cd : ?ErrorHandling1Code;
		Prtry : ?Text;
	};

	public type ErrorHandling3 = {
		Err : ErrorHandling1Choice;
		Desc : ?Text;
	};

	public type CurrencySourceTarget1 = {
		SrcCcy : Text;
		TrgtCcy : Text;
	};

	public type ExchangeRateOrPercentage1Choice = {
		Pctg : ?Float;
		Rate : ?Float;
	};

	public type CurrencyExchange20 = {
		LwLmt : ?ExchangeRateOrPercentage1Choice;
		HghLmt : ?ExchangeRateOrPercentage1Choice;
		QtdCcy : Text;
		XchgRate : Float;
		QtnDt : Int;
	};

	public type ExchangeRateReportOrError4Choice = {
		BizErr : ?[ErrorHandling3];

		CcyXchg : ?CurrencyExchange20;
	};

	public type CurrencyExchangeReport4 = {
		CcyRef : CurrencySourceTarget1;
		CcyXchgOrErr : ExchangeRateReportOrError4Choice;
	};

	public type ExchangeRateReportOrError3Choice = {
		OprlErr : ?[ErrorHandling3];

		CcyXchgRpt : ?[CurrencyExchangeReport4];

	};

	public type ReturnCurrencyExchangeRateV05 = {
		MsgHdr : MessageHeader7;
		SplmtryData : ?[SupplementaryData1];

		RptOrErr : ExchangeRateReportOrError3Choice;
	};

}