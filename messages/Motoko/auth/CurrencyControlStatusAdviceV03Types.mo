module {
	public type StatisticalReportingStatus1Code = {
		#ACPT;
		#ACTC;
		#CRPT;
		#INCF;
		#PART;
		#PDNG;
		#RCVD;
		#RJCT;
		#RMDR;
	};

	public type StatusReason6Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type ValidationRuleSchemeName1Choice = {
		Cd : ?Text;
		Prtry : ?Text;
	};

	public type GenericValidationRuleIdentification1 = {
		Id : Text;
		Desc : ?Text;
		Issr : ?Text;
		SchmeNm : ?ValidationRuleSchemeName1Choice;
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

	public type ValidationStatusReason2 = {
		Rsn : ?StatusReason6Choice;
		VldtnRule : ?[GenericValidationRuleIdentification1];

		Orgtr : ?PartyIdentification135;
		AddtlInf : ?[Text];

	};

	public type DocumentIdentification28 = {
		Id : ?Text;
		DtOfIsse : Int;
	};

	public type CurrencyControlRecordStatus2 = {
		Sts : StatisticalReportingStatus1Code;
		RcrdId : Text;
		StsDtTm : ?Int;
		StsRsn : ?[ValidationStatusReason2];

		DocId : ?DocumentIdentification28;
	};

	public type CurrencyControlPackageStatus2 = {
		Sts : StatisticalReportingStatus1Code;
		PackgId : Text;
		StsDtTm : ?Int;
		StsRsn : ?[ValidationStatusReason2];

		RcrdSts : ?[CurrencyControlRecordStatus2];

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

	public type CurrencyControlHeader6 = {
		RcvgPty : PartyIdentification135;
		RegnAgt : BranchAndFinancialInstitutionIdentification6;
		MsgId : Text;
		CreDtTm : Int;
		NbOfItms : Text;
	};

	public type Period2 = {
		FrDt : Int;
		ToDt : Int;
	};

	public type Period4Choice = {
		Dt : ?Int;
		FrDt : ?Int;
		ToDt : ?Int;
		FrDtToDt : ?Period2;
	};

	public type TaxExemptionReasonFormat1Choice = {
		Strd : ?Text;
		Ustrd : ?Text;
	};

	public type TaxParty4 = {
		RegnId : ?Text;
		TaxXmptnRsn : ?[TaxExemptionReasonFormat1Choice];

		TaxId : ?Text;
		TaxTp : ?Text;
	};

	public type LegalOrganisation2 = {
		Id : ?Text;
		Nm : ?Text;
		RegnDt : ?Int;
		EstblishmtDt : ?Int;
	};

	public type TradeParty5 = {
		PtyId : PartyIdentification135;
		TaxPty : ?[TaxParty4];

		LglOrg : ?LegalOrganisation2;
	};

	public type Party40Choice = {
		Agt : ?BranchAndFinancialInstitutionIdentification6;
		Pty : ?PartyIdentification135;
	};

	public type OriginalMessage5 = {
		OrgnlCreDtTm : ?Int;
		OrgnlSndr : ?Party40Choice;
		OrgnlMsgNmId : Text;
		OrgnlMsgId : Text;
	};

	public type CurrencyControlGroupStatus2 = {
		Sts : ?StatisticalReportingStatus1Code;
		RptgPrd : ?Period4Choice;
		RptgPty : TradeParty5;
		StsDtTm : ?Int;
		StsRsn : ?[ValidationStatusReason2];

		RegnAgt : BranchAndFinancialInstitutionIdentification6;
		OrgnlRefs : OriginalMessage5;
	};

	public type SupplementaryDataEnvelope1 = {
		any : Any;
	};

	public type SupplementaryData1 = {
		Envlp : SupplementaryDataEnvelope1;
		PlcAndNm : ?Text;
	};

	public type CurrencyControlStatusAdviceV03 = {
		PackgSts : ?[CurrencyControlPackageStatus2];

		GrpHdr : CurrencyControlHeader6;
		GrpSts : [CurrencyControlGroupStatus2];
		SplmtryData : ?[SupplementaryData1];

	};

}