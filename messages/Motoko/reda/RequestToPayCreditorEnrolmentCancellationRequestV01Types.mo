module {
	public type OrganisationIdentificationSchemeName1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type GenericOrganisationIdentification1 = {
		Id : Text;
		Issr : ?Text;
		SchmeNm : ?OrganisationIdentificationSchemeName1Choice;
	};

	public type OrganisationIdentification37 = {
		LEI : ?Text;
		Othr : ?[GenericOrganisationIdentification1];

		AnyBIC : ?Text;
		EmailAdr : ?Text;
	};

	public type DateAndPlaceOfBirth1 = {
		CityOfBirth : Text;
		PrvcOfBirth : ?Text;
		BirthDt : Int;
		CtryOfBirth : Text;
	};

	public type PersonIdentificationSchemeName1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type GenericPersonIdentification1 = {
		Id : Text;
		Issr : ?Text;
		SchmeNm : ?PersonIdentificationSchemeName1Choice;
	};

	public type PersonIdentification17 = {
		DtAndPlcOfBirth : ?DateAndPlaceOfBirth1;
		Othr : ?[GenericPersonIdentification1];

		EmailAdr : ?Text;
	};

	public type Party49Choice = {
		OrgId : ?OrganisationIdentification37;
		PrvtId : ?PersonIdentification17;
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

	public type NamePrefix2Code = {
		#DOCT;
		#MADM;
		#MIKS;
		#MISS;
		#MIST;
	};

	public type OtherContact1 = {
		Id : ?Text;
		ChanlTp : Text;
	};

	public type PreferredContactMethod1Code = {
		#CELL;
		#FAXX;
		#LETT;
		#MAIL;
		#PHON;
	};

	public type Contact4 = {
		Nm : ?Text;
		JobTitl : ?Text;
		PhneNb : ?Text;
		NmPrfx : ?NamePrefix2Code;
		Dept : ?Text;
		Othr : ?[OtherContact1];

		EmailPurp : ?Text;
		PrefrdMtd : ?PreferredContactMethod1Code;
		FaxNb : ?Text;
		MobNb : ?Text;
		EmailAdr : ?Text;
		Rspnsblty : ?Text;
	};

	public type RTPPartyIdentification1 = {
		Id : ?Party49Choice;
		Nm : ?Text;
		PstlAdr : ?PostalAddress24;
		CtctDtls : ?Contact4;
		CtryOfRes : ?Text;
	};

	public type EnrolmentHeader2 = {
		MsgRcpt : ?RTPPartyIdentification1;
		InitgPty : RTPPartyIdentification1;
		MsgId : Text;
		CreDtTm : Int;
		MsgOrgtr : ?RTPPartyIdentification1;
	};

	public type CreditorEnrolmentCancellationReason1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type CreditorEnrolmentCancellationReason2 = {
		Rsn : CreditorEnrolmentCancellationReason1Choice;
		Orgtr : ?RTPPartyIdentification1;
		AddtlInf : ?[Text];

	};

	public type OriginalBusinessInstruction1 = {
		MsgId : Text;
		CreDtTm : ?Int;
		MsgNmId : ?Text;
	};

	public type SupplementaryDataEnvelope1 = {
		any : Any;
	};

	public type SupplementaryData1 = {
		Envlp : SupplementaryDataEnvelope1;
		PlcAndNm : ?Text;
	};

	public type DateAndDateTime2Choice = {
		Dt : ?Int;
		DtTm : ?Int;
	};

	public type Visibilty1 = {
		StartDt : ?DateAndDateTime2Choice;
		EndDt : ?DateAndDateTime2Choice;
		LtdVsblty : ?Bool;
	};

	public type CreditorServiceEnrolment1 = {
		CdtrSvcActvtnLk : ?Text;
		SvcActvtnAllwd : ?Bool;
		EnrlmntEndDt : ?DateAndDateTime2Choice;
		SvcDescLk : ?Text;
		EnrlmntStartDt : ?DateAndDateTime2Choice;
		Vsblty : ?Visibilty1;
	};

	public type byte[] = {
	};

	public type CreditorEnrolment3 = {
		Enrlmnt : CreditorServiceEnrolment1;
		Cdtr : RTPPartyIdentification1;
		CdtrTradgNm : ?Text;
		CdtrLogo : ?[byte[]];

		MrchntCtgyCd : Text;
		UltmtCdtr : ?RTPPartyIdentification1;
	};

	public type OriginalEnrolment2Choice = {
		OrgnlCdtrId : ?Party49Choice;
		OrgnlEnrlmntData : ?CreditorEnrolment3;
	};

	public type CreditorEnrolmentCancellation2 = {
		CxlRsn : ?CreditorEnrolmentCancellationReason2;
		OrgnlBizInstr : ?OriginalBusinessInstruction1;
		SplmtryData : ?[SupplementaryData1];

		OrgnlEnrlmnt : OriginalEnrolment2Choice;
	};

	public type RequestToPayCreditorEnrolmentCancellationRequestV01 = {
		Hdr : EnrolmentHeader2;
		CxlData : [CreditorEnrolmentCancellation2];
		SplmtryData : ?[SupplementaryData1];

	};

}