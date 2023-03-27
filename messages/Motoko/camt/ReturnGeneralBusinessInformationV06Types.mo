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

	public type Priority1Code = {
		#HIGH;
		#LOWW;
		#NORM;
	};

	public type InformationQualifierType1 = {
		Prty : ?Priority1Code;
		IsFrmtd : ?Bool;
	};

	public type GeneralBusinessInformation1 = {
		Qlfr : ?InformationQualifierType1;
		Sbjt : ?Text;
		SbjtDtls : ?Text;
	};

	public type ErrorHandling3Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type ErrorHandling5 = {
		Err : ErrorHandling3Choice;
		Desc : ?Text;
	};

	public type GeneralBusinessOrError8Choice = {
		GnlBiz : ?GeneralBusinessInformation1;
		BizErr : ?[ErrorHandling5];

	};

	public type GeneralBusinessReport6 = {
		BizInfRef : Text;
		GnlBizOrErr : GeneralBusinessOrError8Choice;
	};

	public type GeneralBusinessOrError7Choice = {
		BizRpt : ?[GeneralBusinessReport6];

		OprlErr : ?[ErrorHandling5];

	};

	public type ReturnGeneralBusinessInformationV06 = {
		MsgHdr : MessageHeader7;
		SplmtryData : ?[SupplementaryData1];

		RptOrErr : GeneralBusinessOrError7Choice;
	};

}