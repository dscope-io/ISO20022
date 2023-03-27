module {
	public type QueueTransactionIdentification1 = {
		QId : Text;
		PosInQ : Text;
	};

	public type PaymentInstrument1Code = {
		#BCT;
		#BDT;
		#BKT;
		#CAN;
		#CCP;
		#CCT;
		#CDT;
		#CHK;
		#DCP;
		#RTI;
	};

	public type PaymentOrigin1Choice = {
		XMLMsgNm : ?Text;
		Prtry : ?Text;
		FINMT : ?Text;
		Instrm : ?PaymentInstrument1Code;
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

	public type LongPaymentIdentification2 = {
		PmtMtd : ?PaymentOrigin1Choice;
		InstdAgt : BranchAndFinancialInstitutionIdentification6;
		InstgAgt : BranchAndFinancialInstitutionIdentification6;
		TxId : ?Text;
		UETR : ?Text;
		NtryTp : ?Text;
		IntrBkSttlmDt : Int;
		IntrBkSttlmAmt : Float;
		EndToEndId : ?Text;
	};

	public type ShortPaymentIdentification2 = {
		InstgAgt : BranchAndFinancialInstitutionIdentification6;
		TxId : Text;
		IntrBkSttlmDt : Int;
	};

	public type PaymentIdentification6Choice = {
		QId : ?QueueTransactionIdentification1;
		TxId : ?Text;
		LngBizId : ?LongPaymentIdentification2;
		PrtryId : ?Text;
		ShrtBizId : ?ShortPaymentIdentification2;
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

	public type Priority5Code = {
		#HIGH;
		#LOWW;
		#NORM;
		#URGT;
	};

	public type Priority1Choice = {
		Cd : ?Priority5Code;
		Prtry : ?Text;
	};

	public type Instruction1Code = {
		#PBEN;
		#TFRO;
		#TTIL;
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

	public type PaymentInstruction33 = {
		Tp : ?PaymentType4Choice;
		Prty : ?Priority1Choice;
		Instr : ?Instruction1Code;
		PrcgVldtyTm : ?DateTimePeriod1Choice;
	};

	public type TransactionModification5 = {
		PmtId : PaymentIdentification6Choice;
		NewPmtValSet : PaymentInstruction33;
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

	public type ModifyTransactionV08 = {
		Mod : [TransactionModification5];
		MsgHdr : MessageHeader1;
		SplmtryData : ?[SupplementaryData1];

	};

}