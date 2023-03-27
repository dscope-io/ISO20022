module {
	public type MessageHeader1 = {
		MsgId : Text;
		CreDtTm : ?Int;
	};

	public type CurrencyExchangeSearchCriteria1 = {
		SrcCcy : Text;
		TrgtCcy : Text;
	};

	public type CurrencyExchangeCriteria2 = {
		SchCrit : [CurrencyExchangeSearchCriteria1];
		NewQryNm : ?Text;
	};

	public type CurrencyCriteriaDefinition1Choice = {
		NewCrit : ?CurrencyExchangeCriteria2;
		QryNm : ?Text;
	};

	public type QueryType2Code = {
		#ALLL;
		#CHNG;
		#DELD;
		#MODF;
	};

	public type CurrencyQueryDefinition3 = {
		CcyCrit : ?CurrencyCriteriaDefinition1Choice;
		QryTp : ?QueryType2Code;
	};

	public type SupplementaryDataEnvelope1 = {
		any : Any;
	};

	public type SupplementaryData1 = {
		Envlp : SupplementaryDataEnvelope1;
		PlcAndNm : ?Text;
	};

	public type GetCurrencyExchangeRateV04 = {
		MsgHdr : MessageHeader1;
		CcyQryDef : ?CurrencyQueryDefinition3;
		SplmtryData : ?[SupplementaryData1];

	};

}