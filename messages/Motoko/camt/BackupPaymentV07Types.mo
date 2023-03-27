module {
	public type MarketInfrastructureIdentification1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type SystemIdentification2Choice = {
		Ctry : ?Text;
		MktInfrstrctrId : ?MarketInfrastructureIdentification1Choice;
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

	public type MemberIdentification3Choice = {
		BICFI : ?Text;
		Othr : ?GenericFinancialIdentification1;
		ClrSysMmbId : ?ClearingSystemMemberIdentification2;
	};

	public type SystemMember3 = {
		SysId : ?SystemIdentification2Choice;
		MmbId : MemberIdentification3Choice;
	};

	public type ActiveCurrencyAndAmount = {
		Ccy : Text;
		value : Float;
	};

	public type Amount2Choice = {
		AmtWthtCcy : ?Float;
		AmtWthCcy : ?ActiveCurrencyAndAmount;
	};

	public type PaymentType3Code = {
		#BAL;
		#BCK;
		#CBH;
		#CBP;
		#CBS;
		#CLS;
		#CTR;
		#DPG;
		#DPH;
		#DPN;
		#DPP;
		#DPS;
		#EXP;
		#LIQ;
		#LMT;
		#LOA;
		#LOR;
		#MGL;
		#OND;
		#STF;
		#TCH;
		#TCP;
		#TCS;
		#TRP;
	};

	public type PaymentType4Choice = {
		Cd : ?PaymentType3Code;
		Prtry : ?Text;
	};

	public type PaymentInstruction13 = {
		PmtTp : ?PaymentType4Choice;
		ReqdExctnDtTm : ?Int;
	};

	public type MessageHeader1 = {
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

	public type BackupPaymentV07 = {
		Cdtr : SystemMember3;
		TrfdAmt : Amount2Choice;
		InstrInf : ?PaymentInstruction13;
		MsgHdr : MessageHeader1;
		DbtrAgt : ?SystemMember3;
		SplmtryData : ?[SupplementaryData1];

		CdtrAgt : ?SystemMember3;
		OrgnlMsgId : ?MessageHeader1;
	};

}