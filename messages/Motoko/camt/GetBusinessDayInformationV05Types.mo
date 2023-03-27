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

	public type SystemEventType2Code = {
		#CRCO;
		#CUSC;
		#ESTF;
		#EUCO;
		#EUSU;
		#FIRE;
		#IBKC;
		#LTDC;
		#LTGC;
		#LTNC;
		#LVCC;
		#LVCO;
		#LVRT;
		#LWSU;
		#NPCT;
		#PCOT;
		#RECC;
		#REOP;
		#SSSC;
		#STDY;
		#STSU;
		#SYSC;
	};

	public type SystemEventType2Choice = {
		Cd : ?SystemEventType2Code;
		Prtry : ?GenericIdentification1;
	};

	public type MarketInfrastructureIdentification1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type SystemIdentification2Choice = {
		Ctry : ?Text;
		MktInfrstrctrId : ?MarketInfrastructureIdentification1Choice;
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

	public type BusinessDaySearchCriteria2 = {
		EvtTp : ?SystemEventType2Choice;
		SysDt : ?Int;
		SysId : ?[SystemIdentification2Choice];

		SysCcy : ?[Text];

		ClsrPrd : ?DateTimePeriod1Choice;
	};

	public type BusinessDayReturnCriteria2 = {
		SysCcyInd : ?Bool;
		SysStsInd : ?Bool;
		ClsrPrdInd : ?Bool;
		EvtTpInd : ?Bool;
		SysDtInd : ?Bool;
		EvtInd : ?Bool;
		SsnPrdInd : ?Bool;
	};

	public type BusinessDayCriteria2 = {
		SchCrit : ?[BusinessDaySearchCriteria2];

		NewQryNm : ?Text;
		RtrCrit : ?BusinessDayReturnCriteria2;
	};

	public type BusinessDayCriteria3Choice = {
		NewCrit : ?BusinessDayCriteria2;
		QryNm : ?Text;
	};

	public type QueryType2Code = {
		#ALLL;
		#CHNG;
		#DELD;
		#MODF;
	};

	public type BusinessDayQuery2 = {
		Crit : ?BusinessDayCriteria3Choice;
		QryTp : ?QueryType2Code;
	};

	public type SupplementaryDataEnvelope1 = {
		any : Any;
	};

	public type SupplementaryData1 = {
		Envlp : SupplementaryDataEnvelope1;
		PlcAndNm : ?Text;
	};

	public type GetBusinessDayInformationV05 = {
		MsgHdr : MessageHeader9;
		BizDayInfQryDef : ?BusinessDayQuery2;
		SplmtryData : ?[SupplementaryData1];

	};

}