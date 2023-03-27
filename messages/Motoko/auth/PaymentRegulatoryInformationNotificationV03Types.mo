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

	public type DocumentAmendment1 = {
		CrrctnId : Float;
		OrgnlDocId : ?Text;
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

	public type DocumentIdentification28 = {
		Id : ?Text;
		DtOfIsse : Int;
	};

	public type SupplementaryDataEnvelope1 = {
		any : Any;
	};

	public type SupplementaryData1 = {
		Envlp : SupplementaryDataEnvelope1;
		PlcAndNm : ?Text;
	};

	public type ActiveCurrencyAndAmount = {
		Ccy : Text;
		value : Float;
	};

	public type ProprietaryReference1 = {
		Tp : Text;
		Ref : Text;
	};

	public type CertificateIdentification1 = {
		PmtInfId : ?Text;
		InstrId : ?Text;
		Prtry : ?ProprietaryReference1;
		AcctSvcrRef : ?Text;
		MsgId : ?Text;
		EndToEndId : ?Text;
	};

	public type CertificateReference2 = {
		Dt : ?Int;
		Id : CertificateIdentification1;
	};

	public type TransactionCertificate5 = {
		Amt : ActiveCurrencyAndAmount;
		RfrdDoc : CertificateReference2;
		LclInstrm : Text;
		TxDt : Int;
		TxTp : ?Text;
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

	public type DocumentIdentification35 = {
		Id : ?Text;
		DtOfIsse : ?Int;
	};

	public type ContractRegistrationReference2Choice = {
		RegdCtrctId : ?Text;
		Ctrct : ?DocumentIdentification35;
	};

	public type TransactionCertificateContract2 = {
		TxAmtInCtrctCcy : ?ActiveCurrencyAndAmount;
		XpctdAdvncPmtRtrDt : ?Int;
		CtrctRef : ?ContractRegistrationReference2Choice;
		AddtlInf : ?Text;
		XpctdShipmntDt : ?Int;
	};

	public type TransactionCertificateRecord2 = {
		Tx : TransactionCertificate5;
		Attchmnt : ?[DocumentGeneralInformation5];

		DocSubmitgPrcdr : ?Text;
		Ctrct : ?TransactionCertificateContract2;
		CertRcrdId : Text;
	};

	public type TransactionCertificate4 = {
		Amdmnt : ?DocumentAmendment1;
		Acct : ?CashAccount40;
		Cert : DocumentIdentification28;
		TxId : Text;
		BkAcctDmcltnCtry : ?Text;
		SplmtryData : ?[SupplementaryData1];

		CertRcrd : [TransactionCertificateRecord2];
	};

	public type RegulatoryReportingNotification3 = {
		AcctOwnr : PartyIdentification135;
		AcctSvcr : BranchAndFinancialInstitutionIdentification6;
		TxNtfctnId : Text;
		TxCert : [TransactionCertificate4];
	};

	public type PaymentRegulatoryInformationNotificationV03 = {
		GrpHdr : CurrencyControlHeader5;
		TxNtfctn : [RegulatoryReportingNotification3];
		SplmtryData : ?[SupplementaryData1];

	};

}