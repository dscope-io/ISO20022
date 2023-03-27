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

	public type SupplementaryDataEnvelope1 = {
		any : Any;
	};

	public type SupplementaryData1 = {
		Envlp : SupplementaryDataEnvelope1;
		PlcAndNm : ?Text;
	};

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

	public type RequestHandling1 = {
		StsCd : Text;
		Desc : ?Text;
	};

	public type OriginalMessageAndIssuer1 = {
		OrgtrNm : ?Text;
		MsgId : Text;
		MsgNmId : ?Text;
	};

	public type Receipt3 = {
		OrgnlPmtId : ?PaymentIdentification6Choice;
		ReqHdlg : ?[RequestHandling1];

		OrgnlMsgId : OriginalMessageAndIssuer1;
	};

	public type ReceiptV05 = {
		MsgHdr : MessageHeader9;
		SplmtryData : ?[SupplementaryData1];

		RctDtls : [Receipt3];
	};

}