module {
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

	public type GroupHeader92 = {
		CtrlSum : ?Float;
		InstdAgt : ?BranchAndFinancialInstitutionIdentification6;
		InstgAgt : ?BranchAndFinancialInstitutionIdentification6;
		NbOfTxs : Text;
		MsgId : Text;
		CreDtTm : Int;
	};

	public type SupplementaryDataEnvelope1 = {
		any : Any;
	};

	public type SupplementaryData1 = {
		Envlp : SupplementaryDataEnvelope1;
		PlcAndNm : ?Text;
	};

	public type InstructionForCreditorAgent3 = {
		Cd : ?Text;
		InstrInf : ?Text;
	};

	public type AccountSchemeName1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type GenericAccountIdentification1 = {
		Id : Text;
		Issr : ?Text;
		SchmeNm : ?AccountSchemeName1Choice;
	};

	public type AccountIdentification4Choice = {
		IBAN : ?Text;
		Othr : ?GenericAccountIdentification1;
	};

	public type CashAccountType2Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type ProxyAccountType1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type ProxyAccountIdentification1 = {
		Id : Text;
		Tp : ?ProxyAccountType1Choice;
	};

	public type CashAccount40 = {
		Id : ?AccountIdentification4Choice;
		Nm : ?Text;
		Tp : ?CashAccountType2Choice;
		Ccy : ?Text;
		Prxy : ?ProxyAccountIdentification1;
	};

	public type LocalInstrument2Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type ServiceLevel8Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type Priority2Code = {
		#HIGH;
		#NORM;
	};

	public type CategoryPurpose1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type ClearingChannel2Code = {
		#BOOK;
		#MPNS;
		#RTGS;
		#RTNS;
	};

	public type PaymentTypeInformation28 = {
		LclInstrm : ?LocalInstrument2Choice;
		SvcLvl : ?[ServiceLevel8Choice];

		InstrPrty : ?Priority2Code;
		CtgyPurp : ?CategoryPurpose1Choice;
		ClrChanl : ?ClearingChannel2Code;
	};

	public type ActiveCurrencyAndAmount = {
		Ccy : Text;
		value : Float;
	};

	public type Purpose2Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type Priority3Code = {
		#HIGH;
		#NORM;
		#URGT;
	};

	public type PaymentIdentification13 = {
		ClrSysRef : ?Text;
		TxId : ?Text;
		UETR : ?Text;
		InstrId : ?Text;
		EndToEndId : Text;
	};

	public type SettlementTimeRequest2 = {
		RjctTm : ?Int;
		FrTm : ?Int;
		TillTm : ?Int;
		CLSTm : ?Int;
	};

	public type RemittanceInformation2 = {
		Ustrd : ?[Text];

	};

	public type SettlementDateTimeIndication1 = {
		DbtDtTm : ?Int;
		CdtDtTm : ?Int;
	};

	public type DirectDebitTransactionInformation27 = {
		Dbtr : BranchAndFinancialInstitutionIdentification6;
		Purp : ?Purpose2Choice;
		DbtrAcct : ?CashAccount40;
		SttlmPrty : ?Priority3Code;
		DbtrAgt : ?BranchAndFinancialInstitutionIdentification6;
		PmtId : PaymentIdentification13;
		IntrBkSttlmDt : ?Int;
		InstrForDbtrAgt : ?Text;
		UltmtDbtr : ?BranchAndFinancialInstitutionIdentification6;
		DbtrAgtAcct : ?CashAccount40;
		PmtTpInf : ?PaymentTypeInformation28;
		SttlmTmReq : ?SettlementTimeRequest2;
		IntrBkSttlmAmt : ActiveCurrencyAndAmount;
		RmtInf : ?RemittanceInformation2;
		SttlmTmIndctn : ?SettlementDateTimeIndication1;
	};

	public type CreditTransferTransaction53 = {
		InstrForCdtrAgt : ?[InstructionForCreditorAgent3];

		Cdtr : BranchAndFinancialInstitutionIdentification6;
		InstdAgt : ?BranchAndFinancialInstitutionIdentification6;
		InstgAgt : ?BranchAndFinancialInstitutionIdentification6;
		BtchBookg : ?Bool;
		IntrmyAgt1Acct : ?CashAccount40;
		IntrmyAgt1 : ?BranchAndFinancialInstitutionIdentification6;
		IntrmyAgt2 : ?BranchAndFinancialInstitutionIdentification6;
		IntrmyAgt3 : ?BranchAndFinancialInstitutionIdentification6;
		IntrBkSttlmDt : ?Int;
		CdtrAcct : ?CashAccount40;
		IntrmyAgt3Acct : ?CashAccount40;
		SplmtryData : ?[SupplementaryData1];

		UltmtCdtr : ?BranchAndFinancialInstitutionIdentification6;
		CdtrAgtAcct : ?CashAccount40;
		PmtTpInf : ?PaymentTypeInformation28;
		TtlIntrBkSttlmAmt : ?ActiveCurrencyAndAmount;
		IntrmyAgt2Acct : ?CashAccount40;
		CdtId : Text;
		CdtrAgt : ?BranchAndFinancialInstitutionIdentification6;
		DrctDbtTxInf : [DirectDebitTransactionInformation27];
		SttlmTmIndctn : ?SettlementDateTimeIndication1;
	};

	public type FinancialInstitutionDirectDebitV05 = {
		GrpHdr : GroupHeader92;
		SplmtryData : ?[SupplementaryData1];

		CdtInstr : [CreditTransferTransaction53];
	};

}