module {
	public type DocumentAmendment1 = {
		CrrctnId : Float;
		OrgnlDocId : ?Text;
	};

	public type DocumentIdentification28 = {
		Id : ?Text;
		DtOfIsse : Int;
	};

	public type OrganisationIdentificationSchemeName1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type GenericOrganisationIdentification1 = {
		Id : Text;
		Issr : ?Text;
		SchmeNm : ?OrganisationIdentificationSchemeName1Choice;
	};

	public type OrganisationIdentification29 = {
		LEI : ?Text;
		Othr : ?[GenericOrganisationIdentification1];

		AnyBIC : ?Text;
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

	public type PersonIdentification13 = {
		DtAndPlcOfBirth : ?DateAndPlaceOfBirth1;
		Othr : ?[GenericPersonIdentification1];

	};

	public type Party38Choice = {
		OrgId : ?OrganisationIdentification29;
		PrvtId : ?PersonIdentification13;
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

	public type PartyIdentification135 = {
		Id : ?Party38Choice;
		Nm : ?Text;
		PstlAdr : ?PostalAddress24;
		CtctDtls : ?Contact4;
		CtryOfRes : ?Text;
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

	public type DocumentEntryAmendment1 = {
		CrrctgNtryNb : Float;
		OrgnlDoc : DocumentIdentification28;
	};

	public type SignatureEnvelopeReference = {
		any : Any;
	};

	public type byte[] = {
	};

	public type BinaryFile1 = {
		MIMETp : ?Text;
		NcodgTp : ?Text;
		InclBinryObjct : ?[byte[]];

		CharSet : ?Text;
	};

	public type DocumentGeneralInformation5 = {
		URL : ?Text;
		SndrRcvrSeqId : ?Text;
		DocNb : Text;
		DocNm : ?Text;
		DocTp : Text;
		LkFileHash : ?SignatureEnvelopeReference;
		AttchdBinryFile : BinaryFile1;
		IsseDt : ?Int;
	};

	public type ActiveCurrencyAndAmount = {
		Ccy : Text;
		value : Float;
	};

	public type ShipmentCondition1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type ShipmentAttribute2 = {
		CtryOfCntrPty : ?Text;
		XpctdDt : ?Int;
		Conds : ?ShipmentCondition1Choice;
	};

	public type DocumentIdentification22 = {
		Id : Text;
		DtOfIsse : ?Int;
	};

	public type SupportingDocumentEntry2 = {
		NtryAmdmntId : ?DocumentEntryAmendment1;
		Attchmnt : ?[DocumentGeneralInformation5];

		MtrtyData : ?Text;
		TtlAmtAftrShipmnt : ?ActiveCurrencyAndAmount;
		TtlAmtAftrShipmntInCtrctCcy : ?ActiveCurrencyAndAmount;
		ShipmntAttrbts : ShipmentAttribute2;
		TtlAmtInCtrctCcy : ?ActiveCurrencyAndAmount;
		NtryId : Text;
		DocTp : Text;
		TtlAmt : ?ActiveCurrencyAndAmount;
		AddtlInf : ?Text;
		OrgnlDoc : DocumentIdentification22;
	};

	public type SupplementaryDataEnvelope1 = {
		any : Any;
	};

	public type SupplementaryData1 = {
		Envlp : SupplementaryDataEnvelope1;
		PlcAndNm : ?Text;
	};

	public type DocumentIdentification35 = {
		Id : ?Text;
		DtOfIsse : ?Int;
	};

	public type ContractRegistrationReference2Choice = {
		RegdCtrctId : ?Text;
		Ctrct : ?DocumentIdentification35;
	};

	public type SupportingDocument3 = {
		Amdmnt : ?DocumentAmendment1;
		SpprtgDocId : Text;
		Cert : DocumentIdentification28;
		AcctOwnr : PartyIdentification135;
		AcctSvcr : BranchAndFinancialInstitutionIdentification6;
		Ntry : [SupportingDocumentEntry2];
		SplmtryData : ?[SupplementaryData1];

		CtrctRef : ContractRegistrationReference2Choice;
		OrgnlReqId : ?Text;
	};

	public type Party40Choice = {
		Agt : ?BranchAndFinancialInstitutionIdentification6;
		Pty : ?PartyIdentification135;
	};

	public type CurrencyControlHeader5 = {
		InitgPty : Party40Choice;
		MsgId : Text;
		CreDtTm : Int;
		FwdgAgt : ?BranchAndFinancialInstitutionIdentification6;
		NbOfItms : Text;
	};

	public type CurrencyControlSupportingDocumentDeliveryV03 = {
		SpprtgDoc : [SupportingDocument3];
		GrpHdr : CurrencyControlHeader5;
		SplmtryData : ?[SupplementaryData1];

	};

}