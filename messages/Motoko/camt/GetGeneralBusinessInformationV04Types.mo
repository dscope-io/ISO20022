module {
	public type MessageHeader1 = {
		MsgId : Text;
		CreDtTm : ?Int;
	};

	public type Priority1Code = {
		#HIGH;
		#LOWW;
		#NORM;
	};

	public type InformationQualifierType1 = {
		Prty : ?Priority1Code;
		IsFrmtd : ?Bool;
	};

	public type CharacterSearch1Choice = {
		CT : ?Text;
		EQ : ?Text;
		NCT : ?Text;
		NEQ : ?Text;
	};

	public type GeneralBusinessInformationSearchCriteria1 = {
		Ref : ?[Text];

		Qlfr : ?[InformationQualifierType1];

		Sbjt : ?[CharacterSearch1Choice];

	};

	public type GeneralBusinessInformationReturnCriteria1 = {
		QlfrInd : ?Bool;
		SbjtDtlsInd : ?Bool;
		SbjtInd : ?Bool;
	};

	public type BusinessInformationCriteria1 = {
		SchCrit : ?[GeneralBusinessInformationSearchCriteria1];

		NewQryNm : ?Text;
		RtrCrit : ?GeneralBusinessInformationReturnCriteria1;
	};

	public type GeneralBusinessInformationCriteriaDefinition1Choice = {
		NewCrit : ?BusinessInformationCriteria1;
		QryNm : ?Text;
	};

	public type QueryType2Code = {
		#ALLL;
		#CHNG;
		#DELD;
		#MODF;
	};

	public type BusinessInformationQueryDefinition3 = {
		GnlBizInfCrit : ?GeneralBusinessInformationCriteriaDefinition1Choice;
		QryTp : ?QueryType2Code;
	};

	public type SupplementaryDataEnvelope1 = {
		any : Any;
	};

	public type SupplementaryData1 = {
		Envlp : SupplementaryDataEnvelope1;
		PlcAndNm : ?Text;
	};

	public type GetGeneralBusinessInformationV04 = {
		MsgHdr : MessageHeader1;
		GnlBizInfQryDef : ?BusinessInformationQueryDefinition3;
		SplmtryData : ?[SupplementaryData1];

	};

}