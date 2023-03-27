module {
	public type SupplementaryDataEnvelope1 = {
		any : Any;
	};

	public type SupplementaryData1 = {
		Envlp : SupplementaryDataEnvelope1;
		PlcAndNm : ?Text;
	};

	public type SwitchType1Code = {
		#FULL;
		#PART;
	};

	public type ResponseDetails1 = {
		RspnCd : Text;
		AddtlDtls : ?Text;
	};

	public type SwitchStatus1Code = {
		#ACPT;
		#BTRQ;
		#BTRS;
		#COMP;
		#REDE;
		#REDT;
		#REJT;
		#REQU;
		#TMTN;
	};

	public type BalanceTransferWindow1Code = {
		#DAYH;
		#EARL;
	};

	public type AccountSwitchDetails1 = {
		SwtchDt : ?Int;
		SwtchTp : SwitchType1Code;
		Rspn : ?[ResponseDetails1];

		UnqRefNb : Text;
		SwtchSts : ?SwitchStatus1Code;
		RtgUnqRefNb : Text;
		BalTrfWndw : ?BalanceTransferWindow1Code;
		SwtchRcvdDtTm : ?Int;
	};

	public type MessageIdentification1 = {
		Id : Text;
		CreDtTm : Int;
	};

	public type AccountSwitchPaymentResponseV02 = {
		SplmtryData : ?[SupplementaryData1];

		AcctSwtchDtls : AccountSwitchDetails1;
		MsgId : MessageIdentification1;
	};

}