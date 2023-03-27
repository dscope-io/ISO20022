module {
	public type MessageHeader1 = {
		MsgId : Text;
		CreDtTm : ?Int;
	};

	public type PaymentRole1Code = {
		#BKMG;
		#LMMG;
		#LQMG;
		#PYMG;
		#REDR;
		#STMG;
	};

	public type StructuredLongPostalAddress1 = {
		Flr : ?Text;
		POB : ?Text;
		StrtBldgId : ?Text;
		DstrctNm : ?Text;
		Ctry : Text;
		Stat : ?Text;
		StrtNm : ?Text;
		RgnId : ?Text;
		TwnNm : Text;
		BldgNm : ?Text;
		CtyId : ?Text;
		PstCdId : Text;
	};

	public type LongPostalAddress1Choice = {
		Strd : ?StructuredLongPostalAddress1;
		Ustrd : ?Text;
	};

	public type CommunicationAddress8 = {
		PstlAdr : LongPostalAddress1Choice;
		PhneNb : Text;
		FaxNb : ?Text;
		EmailAdr : ?Text;
	};

	public type ContactIdentificationAndAddress1 = {
		Nm : ?Text;
		Role : PaymentRole1Code;
		ComAdr : CommunicationAddress8;
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

	public type Member6 = {
		CtctRef : ?[ContactIdentificationAndAddress1];

		MmbRtrAdr : ?[MemberIdentification3Choice];

		ComAdr : ?CommunicationAddress8;
	};

	public type SupplementaryDataEnvelope1 = {
		any : Any;
	};

	public type SupplementaryData1 = {
		Envlp : SupplementaryDataEnvelope1;
		PlcAndNm : ?Text;
	};

	public type CreateMemberV01 = {
		MsgHdr : MessageHeader1;
		ValSet : Member6;
		SplmtryData : ?[SupplementaryData1];

		MmbId : MemberIdentification3Choice;
	};

}