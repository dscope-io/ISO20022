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

	public type MarketInfrastructureIdentification1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type SystemIdentification2Choice = {
		Ctry : ?Text;
		MktInfrstrctrId : ?MarketInfrastructureIdentification1Choice;
	};

	public type DateAndDateTime2Choice = {
		Dt : ?Int;
		DtTm : ?Int;
	};

	public type SystemStatus2Code = {
		#ACTV;
		#CLSD;
		#CLSG;
		#SUSP;
	};

	public type SystemStatus2Choice = {
		Cd : ?SystemStatus2Code;
		Prtry : ?GenericIdentification1;
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

	public type SystemStatus3 = {
		Sts : SystemStatus2Choice;
		VldtyTm : ?DateTimePeriod1Choice;
	};

	public type SystemEventType4Choice = {
		Cd : ?Text;
		Prtry : ?GenericIdentification1;
	};

	public type SystemEvent3 = {
		Tp : SystemEventType4Choice;
		StartTm : ?Int;
		EndTm : ?Int;
		SchdldTm : Int;
		FctvTm : ?Int;
	};

	public type SystemClosureReason1Code = {
		#ADTW;
		#BHOL;
		#NOOP;
		#RCVR;
		#SMTN;
	};

	public type ClosureReason2Choice = {
		Cd : ?SystemClosureReason1Code;
		Prtry : ?Text;
	};

	public type SystemClosure2 = {
		Prd : ?DateTimePeriod1Choice;
		Rsn : ClosureReason2Choice;
	};

	public type TimePeriod1 = {
		FrTm : Int;
		ToTm : Int;
	};

	public type SystemAvailabilityAndEvents3 = {
		Evt : ?[SystemEvent3];

		SysCcy : ?Text;
		ClsrInf : ?[SystemClosure2];

		SsnPrd : ?TimePeriod1;
	};

	public type BusinessDay9 = {
		SysDt : ?DateAndDateTime2Choice;
		SysSts : ?SystemStatus3;
		SysInfPerCcy : ?[SystemAvailabilityAndEvents3];

	};

	public type ErrorHandling3Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type ErrorHandling5 = {
		Err : ErrorHandling3Choice;
		Desc : ?Text;
	};

	public type BusinessDayReportOrError10Choice = {
		BizDayInf : ?BusinessDay9;
		BizErr : ?[ErrorHandling5];

	};

	public type BusinessDay8 = {
		SysId : [SystemIdentification2Choice];
		BizDayOrErr : BusinessDayReportOrError10Choice;
	};

	public type BusinessDayReportOrError9Choice = {
		BizRpt : ?[BusinessDay8];

		OprlErr : ?[ErrorHandling5];

	};

	public type ReturnBusinessDayInformationV07 = {
		MsgHdr : MessageHeader7;
		SplmtryData : ?[SupplementaryData1];

		RptOrErr : BusinessDayReportOrError9Choice;
	};

}