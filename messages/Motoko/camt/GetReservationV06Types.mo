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

	public type ReservationType2Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type ReservationSearchCriteria4 = {
		SysId : ?SystemIdentification2Choice;
		AcctOwnr : ?BranchAndFinancialInstitutionIdentification6;
		AcctId : ?AccountIdentification4Choice;
		DfltRsvatnTp : ?[ReservationType2Choice];

		CurRsvatnTp : ?[ReservationType2Choice];

	};

	public type ReservationReturnCriteria1 = {
		StsInd : ?Bool;
		StartDtTmInd : ?Bool;
	};

	public type ReservationCriteria5 = {
		SchCrit : ?[ReservationSearchCriteria4];

		NewQryNm : ?Text;
		RtrCrit : ?ReservationReturnCriteria1;
	};

	public type ReservationCriteria4Choice = {
		NewCrit : ?ReservationCriteria5;
		QryNm : ?Text;
	};

	public type QueryType2Code = {
		#ALLL;
		#CHNG;
		#DELD;
		#MODF;
	};

	public type ReservationQuery4 = {
		RsvatnCrit : ?ReservationCriteria4Choice;
		QryTp : ?QueryType2Code;
	};

	public type GetReservationV06 = {
		MsgHdr : MessageHeader9;
		SplmtryData : ?[SupplementaryData1];

		RsvatnQryDef : ?ReservationQuery4;
	};

}