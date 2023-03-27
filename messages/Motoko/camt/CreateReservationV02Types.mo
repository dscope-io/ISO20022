module {
	public type MessageHeader1 = {
		MsgId : Text;
		CreDtTm : ?Int;
	};

	public type ReservationType2Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type MarketInfrastructureIdentification1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type SystemIdentification2Choice = {
		Ctry : ?Text;
		MktInfrstrctrId : ?MarketInfrastructureIdentification1Choice;
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

	public type ReservationIdentification3 = {
		Tp : ReservationType2Choice;
		SysId : ?SystemIdentification2Choice;
		AcctOwnr : ?BranchAndFinancialInstitutionIdentification6;
		AcctId : ?AccountIdentification4Choice;
		RsvatnId : ?Text;
	};

	public type ActiveCurrencyAndAmount = {
		Ccy : Text;
		value : Float;
	};

	public type Amount2Choice = {
		AmtWthtCcy : ?Float;
		AmtWthCcy : ?ActiveCurrencyAndAmount;
	};

	public type DateAndDateTime2Choice = {
		Dt : ?Int;
		DtTm : ?Int;
	};

	public type Reservation4 = {
		Amt : Amount2Choice;
		StartDtTm : ?DateAndDateTime2Choice;
	};

	public type SupplementaryDataEnvelope1 = {
		any : Any;
	};

	public type SupplementaryData1 = {
		Envlp : SupplementaryDataEnvelope1;
		PlcAndNm : ?Text;
	};

	public type CreateReservationV02 = {
		MsgHdr : MessageHeader1;
		RsvatnId : ReservationIdentification3;
		ValSet : Reservation4;
		SplmtryData : ?[SupplementaryData1];

	};

}