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

	public type ErrorHandling3Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type ErrorHandling5 = {
		Err : ErrorHandling3Choice;
		Desc : ?Text;
	};

	public type ActiveCurrencyAndAmount = {
		Ccy : Text;
		value : Float;
	};

	public type Amount2Choice = {
		AmtWthtCcy : ?Float;
		AmtWthCcy : ?ActiveCurrencyAndAmount;
	};

	public type ReservationStatus1Code = {
		#BLKD;
		#DELD;
		#DISA;
		#ENAB;
		#REQD;
	};

	public type ReservationStatus1Choice = {
		Cd : ?ReservationStatus1Code;
		Prtry : ?Text;
	};

	public type DateAndDateTime2Choice = {
		Dt : ?Int;
		DtTm : ?Int;
	};

	public type Reservation3 = {
		Amt : Amount2Choice;
		Sts : ?ReservationStatus1Choice;
		StartDtTm : ?DateAndDateTime2Choice;
	};

	public type ReservationOrError9Choice = {
		BizErr : ?[ErrorHandling5];

		Rsvatn : ?Reservation3;
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

	public type ReservationReport7 = {
		RsvatnOrErr : ReservationOrError9Choice;
		RsvatnId : ReservationIdentification3;
	};

	public type CurrentAndDefaultReservation5 = {
		CurRsvatn : ?[ReservationReport7];

		DfltRsvatn : ?[ReservationReport7];

	};

	public type ReservationOrError10Choice = {
		BizRpt : ?CurrentAndDefaultReservation5;
		OprlErr : ?[ErrorHandling5];

	};

	public type ReturnReservationV07 = {
		MsgHdr : MessageHeader7;
		SplmtryData : ?[SupplementaryData1];

		RptOrErr : ReservationOrError10Choice;
	};

}