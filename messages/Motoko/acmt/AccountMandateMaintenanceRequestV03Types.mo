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

	public type byte[] = {
	};

	public type Modification1Code = {
		#ADDD;
		#DELE;
		#MODI;
		#NOCH;
	};

	public type PartyAndCertificate5 = {
		Pty : PartyIdentification135;
		Cert : ?[byte[]];

		ModCd : ?Modification1Code;
	};

	public type Group3 = {
		Pty : [PartyAndCertificate5];
		GrpId : Text;
		ModCd : ?Modification1Code;
	};

	public type SkipPayload = {
		any : Any;
	};

	public type PartyAndSignature3 = {
		Pty : PartyIdentification135;
		Sgntr : SkipPayload;
	};

	public type ActiveCurrencyAndAmount = {
		Ccy : Text;
		value : Float;
	};

	public type MaximumAmountByPeriod1 = {
		NbOfDays : Text;
		MaxAmt : ActiveCurrencyAndAmount;
	};

	public type FixedAmountOrUnlimited1Choice = {
		Amt : ?ActiveCurrencyAndAmount;
		NotLtd : ?Text;
	};

	public type Authorisation2 = {
		MaxAmtByPrd : ?[MaximumAmountByPeriod1];

		MaxAmtByBlkSubmissn : ?FixedAmountOrUnlimited1Choice;
		MaxAmtByTx : ?FixedAmountOrUnlimited1Choice;
	};

	public type PartyAndCertificate4 = {
		Pty : PartyIdentification135;
		Cert : ?[byte[]];

	};

	public type PartyOrGroup2Choice = {
		Pty : ?PartyAndCertificate4;
		GrpId : ?Text;
	};

	public type PartyAndAuthorisation5 = {
		Authstn : Authorisation2;
		SgntrOrdr : ?Text;
		ModCd : ?Modification1Code;
		PtyOrGrp : PartyOrGroup2Choice;
	};

	public type CommunicationMethod3Code = {
		#EMAL;
		#FAXI;
		#FILE;
		#ONLI;
		#PHON;
		#POST;
	};

	public type Channel2Choice = {
		Cd : ?CommunicationMethod3Code;
		Prtry : ?Text;
	};

	public type BankTransactionCodeStructure6 = {
		Cd : Text;
		SubFmlyCd : Text;
	};

	public type BankTransactionCodeStructure5 = {
		Cd : Text;
		Fmly : BankTransactionCodeStructure6;
	};

	public type ProprietaryBankTransactionCodeStructure1 = {
		Cd : Text;
		Issr : ?Text;
	};

	public type BankTransactionCodeStructure4 = {
		Domn : ?BankTransactionCodeStructure5;
		Prtry : ?ProprietaryBankTransactionCodeStructure1;
	};

	public type OperationMandate5 = {
		Id : Text;
		StartDt : ?Int;
		EndDt : ?Int;
		MndtHldr : ?[PartyAndAuthorisation5];

		SgntrOrdrInd : ?Bool;
		AplblChanl : [Channel2Choice];
		BkOpr : [BankTransactionCodeStructure4];
		ReqrdSgntrNb : Text;
		ModCd : ?Modification1Code;
	};

	public type MessageIdentification1 = {
		Id : Text;
		CreDtTm : Int;
	};

	public type References4 = {
		PrcId : MessageIdentification1;
		MsgId : MessageIdentification1;
		AttchdDocNm : ?[Text];

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

	public type AccountForAction1 = {
		Id : AccountIdentification4Choice;
		Ccy : Text;
	};

	public type SupplementaryDataEnvelope1 = {
		any : Any;
	};

	public type SupplementaryData1 = {
		Envlp : SupplementaryDataEnvelope1;
		PlcAndNm : ?Text;
	};

	public type ContractDocument1 = {
		Ref : Text;
		SgnOffDt : ?Int;
		Vrsn : ?Text;
	};

	public type AccountContract2 = {
		UrgcyFlg : ?Bool;
		TrgtClsgDt : ?Int;
		TrgtGoLiveDt : ?Int;
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

	public type Organisation34 = {
		FullLglNm : ?Text;
		OrgId : OrganisationIdentification29;
	};

	public type AdditionalInformation5 = {
		Inf : [Text];
	};

	public type AccountMandateMaintenanceRequestV03 = {
		Fr : ?OrganisationIdentification29;
		Grp : ?[Group3];

		DgtlSgntr : ?[PartyAndSignature3];

		Mndt : [OperationMandate5];
		Refs : References4;
		AcctId : [AccountForAction1];
		SplmtryData : ?[SupplementaryData1];

		UndrlygMstrAgrmt : ?ContractDocument1;
		CtrctDts : ?AccountContract2;
		AcctSvcrId : BranchAndFinancialInstitutionIdentification6;
		OrgId : Organisation34;
		AddtlMsgInf : ?AdditionalInformation5;
	};

}