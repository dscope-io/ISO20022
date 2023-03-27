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

	public type ActivationHeader2 = {
		MsgRcpt : ?RTPPartyIdentification1;
		InitgPty : RTPPartyIdentification1;
		MsgId : Text;
		CreDtTm : Int;
		MsgOrgtr : ?RTPPartyIdentification1;
	};

	public type SupplementaryDataEnvelope1 = {
		any : Any;
	};

	public type SupplementaryData1 = {
		Envlp : SupplementaryDataEnvelope1;
		PlcAndNm : ?Text;
	};

	public type PresentmentType1Code = {
		#FULL;
		#PAYD;
	};

	public type ElectronicInvoice1 = {
		PresntmntTp : PresentmentType1Code;
	};

	public type DateAndDateTime2Choice = {
		Dt : ?Int;
		DtTm : ?Int;
	};

	public type GenericIdentification1 = {
		Id : Text;
		Issr : ?Text;
		SchmeNm : ?Text;
	};

	public type DocumentFormat2Choice = {
		Cd : ?Text;
		Prtry : ?GenericIdentification1;
	};

	public type DocumentType1Choice = {
		Cd : ?Text;
		Prtry : ?GenericIdentification1;
	};

	public type ContractReference1 = {
		Tp : ?DocumentType1Choice;
		Ref : Text;
	};

	public type DebtorActivation4 = {
		StartDt : ?DateAndDateTime2Choice;
		EndDt : ?DateAndDateTime2Choice;
		DbtrActvtnId : ?Text;
		Cdtr : ?RTPPartyIdentification1;
		Dbtr : ?RTPPartyIdentification1;
		ActvtnReqDlvryPty : ?RTPPartyIdentification1;
		UltmtCdtr : ?RTPPartyIdentification1;
		UltmtDbtr : ?RTPPartyIdentification1;
		CtrctFrmtTp : ?[DocumentFormat2Choice];

		CtrctRef : ?[ContractReference1];

		DdctdActvtnCd : ?Text;
		CstmrId : ?[Party49Choice];

		DispNm : ?Text;
		DbtrSolPrvdr : ?RTPPartyIdentification1;
	};

	public type DebtorActivationAmendment4 = {
		ElctrncInvcData : ?ElectronicInvoice1;
		DbtrActvtn : ?DebtorActivation4;
	};

	public type OriginalBusinessInstruction1 = {
		MsgId : Text;
		CreDtTm : ?Int;
		MsgNmId : ?Text;
	};

	public type DebtorActivationAmendmentReason1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type DebtorActivationAmendmentReason2 = {
		Rsn : DebtorActivationAmendmentReason1Choice;
		Orgtr : ?RTPPartyIdentification1;
		AddtlInf : ?[Text];

	};

	public type DebtorActivation3 = {
		StartDt : ?DateAndDateTime2Choice;
		EndDt : ?DateAndDateTime2Choice;
		DbtrActvtnId : ?Text;
		Cdtr : RTPPartyIdentification1;
		Dbtr : RTPPartyIdentification1;
		ActvtnReqDlvryPty : ?RTPPartyIdentification1;
		UltmtCdtr : ?RTPPartyIdentification1;
		UltmtDbtr : ?RTPPartyIdentification1;
		CtrctFrmtTp : ?[DocumentFormat2Choice];

		CtrctRef : ?[ContractReference1];

		DdctdActvtnCd : ?Text;
		CstmrId : ?[Party49Choice];

		DispNm : ?Text;
		DbtrSolPrvdr : RTPPartyIdentification1;
	};

	public type OriginalActivation2Choice = {
		OrgnlDbtrId : ?Party49Choice;
		OrgnlActvtnData : ?DebtorActivation3;
	};

	public type DebtorActivationAmendment3 = {
		Amdmnt : DebtorActivationAmendment4;
		OrgnlBizInstr : ?OriginalBusinessInstruction1;
		AmdmntRsn : ?DebtorActivationAmendmentReason2;
		SplmtryData : ?[SupplementaryData1];

		OrgnlActvtn : OriginalActivation2Choice;
	};

	public type RequestToPayDebtorActivationAmendmentRequestV01 = {
		Hdr : ActivationHeader2;
		SplmtryData : ?[SupplementaryData1];

		AmdmntData : [DebtorActivationAmendment3];
	};

}