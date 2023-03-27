module {
	public type ActiveCurrencyAndAmount = {
		Ccy : Text;
		value : Float;
	};

	public type GroupHeader102 = {
		CtrlSum : ?Float;
		NbOfChrgsRcrds : Text;
		TtlChrgsAmt : ?ActiveCurrencyAndAmount;
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

	public type GenericIdentification3 = {
		Id : Text;
		Issr : ?Text;
	};

	public type ChargeType3Choice = {
		Cd : ?Text;
		Prtry : ?GenericIdentification3;
	};

	public type CreditDebitCode = {
		#CRDT;
		#DBIT;
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

	public type DateAndDateTime2Choice = {
		Dt : ?Int;
		DtTm : ?Int;
	};

	public type InstructionForInstructedAgent1 = {
		Cd : ?Text;
		InstrInf : ?Text;
	};

	public type ProprietaryReference1 = {
		Tp : Text;
		Ref : Text;
	};

	public type TransactionReferences7 = {
		ClrSysRef : ?Text;
		TxId : ?Text;
		UETR : ?Text;
		PmtInfId : ?Text;
		AcctOwnrTxId : ?Text;
		InstrId : ?Text;
		Prtry : ?[ProprietaryReference1];

		MndtId : ?Text;
		AcctSvcrRef : ?Text;
		AcctSvcrTxId : ?Text;
		MsgId : ?Text;
		ChqNb : ?Text;
		EndToEndId : ?Text;
		PrcgId : ?Text;
		MktInfrstrctrTxId : ?Text;
		MsgNmId : ?Text;
	};

	public type ChargesRecord4 = {
		Tp : ?ChargeType3Choice;
		Amt : ActiveCurrencyAndAmount;
		CdtDbtInd : ?CreditDebitCode;
		DbtrAgt : ?BranchAndFinancialInstitutionIdentification6;
		ChrgsAcct : CashAccount40;
		ChrgsRcrdId : ?Text;
		DbtrAgtAcct : ?CashAccount40;
		ChrgsAcctOwnr : ?BranchAndFinancialInstitutionIdentification6;
		ValDt : ?DateAndDateTime2Choice;
		AddtlInf : ?Text;
		InstrForInstdAgt : ?InstructionForInstructedAgent1;
		UndrlygTx : [TransactionReferences7];
	};

	public type ChargesPaymentNotificationV01 = {
		GrpHdr : GroupHeader102;
		SplmtryData : ?[SupplementaryData1];

		Chrgs : [ChargesRecord4];
	};

}