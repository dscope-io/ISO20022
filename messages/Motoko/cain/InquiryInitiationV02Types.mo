module {
	public type PartyType17Code = {
		#ACQP;
		#ACQR;
		#AGNT;
		#CISP;
		#CISS;
		#OTHN;
		#OTHP;
	};

	public type PartyType18Code = {
		#ACQR;
		#AGNT;
		#CISS;
		#CSCH;
	};

	public type GenericIdentification183 = {
		Id : Text;
		Tp : ?PartyType17Code;
		Ctry : ?Text;
		ShrtNm : ?Text;
		Assgnr : ?PartyType18Code;
		OthrTp : ?Text;
	};

	public type AdditionalData1 = {
		Tp : ?Text;
		Val : ?Text;
	};

	public type Traceability9 = {
		TracDtTmOut : ?Int;
		RlayId : GenericIdentification183;
		TracDtTmIn : ?Int;
	};

	public type byte[] = {
	};

	public type BatchManagementInformation1 = {
		MsgChcksmInptVal : ?[byte[]];

		MsgSeqNb : ?Text;
		BtchId : Text;
		ColltnId : ?Text;
	};

	public type MessageFunction17Code = {
		#ADVC;
		#NOTI;
		#REQU;
	};

	public type Header60 = {
		InitgPty : GenericIdentification183;
		TracData : ?[AdditionalData1];

		Tracblt : ?[Traceability9];

		XchgId : ?Text;
		RcptPty : ?GenericIdentification183;
		ReTrnsmssnCntr : ?Text;
		CreDtTm : Int;
		PrtcolVrsn : Text;
		BtchMgmtInf : ?BatchManagementInformation1;
		MsgFctn : MessageFunction17Code;
	};

	public type Amount15 = {
		Amt : Float;
		Ccy : ?Text;
		FctvXchgRate : ?Float;
		ConvsDt : ?Int;
		ConvsTm : ?Int;
	};

	public type TransactionLifeCycleIdentification1 = {
		Id : Text;
		PresntmntSeqNb : ?Text;
		PresntmntSeqCnt : ?Text;
		AuthntcnTkn : ?Text;
		AuthstnSeqNb : ?Text;
	};

	public type TransactionIdentification18 = {
		LclDt : ?Int;
		LclTm : ?Int;
		AcqrrRefNb : ?Text;
		LifeCyclSpprtInd : ?Text;
		AcqrrRefData : ?Text;
		CardIssrRefData : ?Text;
		RtrvlRefNb : Text;
		TmZone : ?Text;
		TxRef : ?Text;
		LifeCyclTracIdData : ?TransactionLifeCycleIdentification1;
		TrnsmssnDtTm : ?Int;
		LifeCyclTracIdMssng : ?Text;
		SysTracAudtNb : Text;
	};

	public type AccountDetails3 = {
		AcctId : ?Text;
		AcctNm : ?Text;
		AcctTp : ?Text;
	};

	public type SpecialProgrammeDetails1 = {
		Nm : ?Text;
		Val : ?Text;
	};

	public type SpecialProgrammeQualification1 = {
		Dtl : ?[SpecialProgrammeDetails1];

		Prgrmm : ?Text;
	};

	public type CreditDebit3Code = {
		#CRDT;
		#DBIT;
	};

	public type Amount17 = {
		Amt : Float;
		Ccy : ?Text;
		CdtDbt : ?CreditDebit3Code;
	};

	public type AdditionalAmounts3 = {
		Tp : Text;
		Amt : Amount17;
		Desc : ?Text;
		OthrTp : ?Text;
		AddtlData : ?[AdditionalData1];

	};

	public type TypeOfAmount21Code = {
		#CSIF;
		#FEEA;
		#FEEP;
		#INTC;
		#MNIF;
		#MXIF;
		#OTHN;
		#OTHP;
	};

	public type FeeAmount3 = {
		Amt : Float;
		Ccy : ?Text;
		FctvXchgRate : ?Float;
		CdtDbt : ?CreditDebit3Code;
		ConvsDt : ?Int;
		ConvsTm : ?Int;
	};

	public type AdditionalFee2 = {
		Tp : TypeOfAmount21Code;
		FeePrgm : ?Text;
		Desc : ?Text;
		FeeAmt : FeeAmount3;
		OthrTp : ?Text;
		FeeDscrptr : ?Text;
		AddtlData : ?[AdditionalData1];

		FeeRcncltnAmt : ?FeeAmount3;
	};

	public type AdditionalServiceType2Code = {
		#BALC;
		#CACT;
		#CSHB;
		#DCCV;
		#INTP;
		#INTT;
		#LOYT;
		#OTHN;
		#OTHP;
		#PRST;
	};

	public type AdditionalServiceResult1Code = {
		#NOPF;
		#NOSP;
		#OTHN;
		#OTHP;
		#PERF;
	};

	public type AdditionalService2 = {
		Tp : AdditionalServiceType2Code;
		Rslt : ?AdditionalServiceResult1Code;
		SvcDtl : ?[AdditionalData1];

		OthrTp : ?Text;
		OthrRslt : ?Text;
	};

	public type DetailAmount2Code = {
		#OTHN;
		#OTHP;
		#SRCH;
	};

	public type Amount16 = {
		Amt : Float;
		CdtDbt : ?CreditDebit3Code;
	};

	public type DetailedAmount23 = {
		Tp : DetailAmount2Code;
		Amt : Amount16;
		Desc : ?Text;
		OthrTp : ?Text;
	};

	public type Transaction131 = {
		AltrnMsgRsn : ?[Text];

		RcncltnAmt : ?Amount15;
		TxId : TransactionIdentification18;
		TxTp : Text;
		AcctFr : ?AccountDetails3;
		MsgRsn : ?[Text];

		SpclPrgrmmQlfctn : ?[SpecialProgrammeQualification1];

		TxCcy : ?Text;
		TxSubTp : ?Text;
		AddtlAmt : ?[AdditionalAmounts3];

		AddtlFee : ?[AdditionalFee2];

		AddtlSvc : ?[AdditionalService2];

		TxDesc : ?Text;
		DtldAmt : ?[DetailedAmount23];

		AddtlData : ?[AdditionalData1];

	};

	public type InstalmentAmountDetailsType2Code = {
		#AFCO;
		#EXPN;
		#FEES;
		#FUNA;
		#INSU;
		#INTR;
		#OTHC;
		#OTHN;
		#OTHP;
		#PRNC;
		#RQST;
		#TAXX;
	};

	public type InstalmentAmountDetails2 = {
		Tp : ?InstalmentAmountDetailsType2Code;
		Amt : ?Amount16;
		SubTp : ?Text;
		Pctg : ?Float;
		OthrTp : ?Text;
	};

	public type Frequency18Code = {
		#DAIL;
		#FRTN;
		#MIAN;
		#MNTH;
		#QURT;
		#TEND;
		#TWWK;
		#WEEK;
		#YEAR;
	};

	public type GracePeriodUnitType1Code = {
		#DAYS;
		#MNTH;
		#OTHN;
		#OTHP;
		#PMTS;
		#WEKS;
	};

	public type GracePeriod2 = {
		Tm : ?Text;
		CstmrSelctdGracePrd : ?Bool;
		OthrUnitTp : ?Text;
		UnitTp : ?GracePeriodUnitType1Code;
	};

	public type PlanOwner1Code = {
		#ACCP;
		#ACQR;
		#ISSR;
		#OTHN;
		#OTHP;
	};

	public type InterestRate1Code = {
		#GSRT;
		#NTRT;
		#OTHN;
		#OTHP;
	};

	public type InstalmentPeriod1Code = {
		#ANNU;
		#MNTH;
	};

	public type InterestRateDetails2 = {
		Tp : ?InterestRate1Code;
		Prd : ?InstalmentPeriod1Code;
		Rate : Float;
		OthrTp : ?Text;
	};

	public type Plan2 = {
		DfrrdInstlmtInd : ?Bool;
		AmtDtls : ?[InstalmentAmountDetails2];

		InstlmtCcy : ?Text;
		TtlNbOfPmts : ?Float;
		PrdUnit : ?Frequency18Code;
		PlanId : ?Text;
		GracePrd : ?GracePeriod2;
		FrstAmt : ?Float;
		NrmlPmtAmt : ?Float;
		OthrPlanOwnr : ?Text;
		FrstPmtDt : ?Int;
		InstlmtPmtTp : ?Text;
		PlanOwnr : ?PlanOwner1Code;
		NbOfPrds : ?Float;
		GrdTtlAmt : ?Float;
		AddtlData : ?[AdditionalData1];

		IntrstRate : ?[InterestRateDetails2];

	};

	public type Instalment4 = {
		PmtSeqNb : ?Float;
		Plan : ?[Plan2];

	};

	public type AddendumData5 = {
		Instlmt : ?Instalment4;
		AddtlData : ?[AdditionalData1];

	};

	public type ContentType3Code = {
		#EVLP;
		#IFSE;
	};

	public type KEKIdentifier6 = {
		SeqNb : ?Float;
		DerivtnId : ?[byte[]];

		KeyId : Text;
		KeyVrsn : ?Text;
	};

	public type Algorithm13Code = {
		#DKP9;
		#E3DC;
		#EA2C;
		#EA5C;
		#EA9C;
		#UKA1;
		#UKPT;
	};

	public type BytePadding1Code = {
		#LNGT;
		#NUL8;
		#NULG;
		#NULL;
		#RAND;
	};

	public type EncryptionFormat3Code = {
		#CBCE;
		#CTCE;
		#TR31;
		#TR34;
	};

	public type Parameter14 = {
		BPddg : ?BytePadding1Code;
		InitlstnVctr : ?[byte[]];

		NcrptnFrmt : ?EncryptionFormat3Code;
	};

	public type AlgorithmIdentification28 = {
		Algo : Algorithm13Code;
		Param : ?Parameter14;
	};

	public type KEK6 = {
		Vrsn : ?Float;
		KEKId : KEKIdentifier6;
		NcrptdKey : ?[byte[]];

		KeyNcrptnAlgo : AlgorithmIdentification28;
	};

	public type AttributeType1Code = {
		#CATT;
		#CNAT;
		#LATT;
		#OATT;
		#OUAT;
	};

	public type RelativeDistinguishedName1 = {
		AttrVal : Text;
		AttrTp : AttributeType1Code;
	};

	public type CertificateIssuer1 = {
		RltvDstngshdNm : [RelativeDistinguishedName1];
	};

	public type IssuerAndSerialNumber1 = {
		SrlNb : [byte[]];
		Issr : CertificateIssuer1;
	};

	public type KEKIdentifier2 = {
		SeqNb : ?Float;
		DerivtnId : ?[byte[]];

		KeyId : Text;
		KeyVrsn : Text;
	};

	public type Recipient5Choice = {
		IssrAndSrlNb : ?IssuerAndSerialNumber1;
		KeyIdr : ?KEKIdentifier2;
	};

	public type Algorithm7Code = {
		#ERSA;
		#RSAO;
	};

	public type Algorithm8Code = {
		#MGF1;
	};

	public type Algorithm5Code = {
		#HS25;
		#HS38;
		#HS51;
	};

	public type AlgorithmIdentification26 = {
		Algo : Algorithm8Code;
		Param : ?Algorithm5Code;
	};

	public type Algorithm20Code = {
		#HS25;
		#HS38;
		#HS51;
	};

	public type Parameter13 = {
		MskGnrtrAlgo : ?AlgorithmIdentification26;
		DgstAlgo : ?Algorithm20Code;
	};

	public type AlgorithmIdentification27 = {
		Algo : Algorithm7Code;
		Param : ?Parameter13;
	};

	public type KeyTransport6 = {
		RcptId : Recipient5Choice;
		Vrsn : ?Float;
		NcrptdKey : [byte[]];
		KeyNcrptnAlgo : AlgorithmIdentification27;
	};

	public type Recipient7Choice = {
		KEK : ?KEK6;
		KeyTrnsprt : ?KeyTransport6;
		KeyIdr : ?KEKIdentifier6;
	};

	public type ContentType2Code = {
		#AUTH;
		#DATA;
		#DGST;
		#EVLP;
		#SIGN;
	};

	public type Algorithm23Code = {
		#E36C;
		#E36R;
		#E3DC;
		#E3DR;
		#EA2C;
		#EA2R;
		#EA5C;
		#EA5R;
		#EA9C;
		#EA9R;
		#SD5C;
	};

	public type Parameter7 = {
		BPddg : ?BytePadding1Code;
		InitlstnVctr : ?[byte[]];

	};

	public type AlgorithmIdentification25 = {
		Algo : Algorithm23Code;
		Param : ?Parameter7;
	};

	public type EncryptedDataFormat1Code = {
		#ASCI;
		#BINF;
		#EBCD;
		#HEXF;
		#OTHN;
		#OTHP;
	};

	public type EncryptedData1Choice = {
		BinryData : ?[byte[]];

		HexBinryVal : ?Text;
	};

	public type EncryptedDataElement1 = {
		Id : ?Text;
		OthrClearTxtDataFrmt : ?Text;
		OthrId : ?Text;
		ClearTxtDataFrmt : ?EncryptedDataFormat1Code;
		NcrptdData : EncryptedData1Choice;
	};

	public type EncryptedContent5 = {
		CnttTp : ContentType2Code;
		CnttNcrptnAlgo : AlgorithmIdentification25;
		NcrptdDataElmt : [EncryptedDataElement1];
	};

	public type EnvelopedData6 = {
		Rcpt : [Recipient7Choice];
		Vrsn : ?Float;
		NcrptdCntt : ?EncryptedContent5;
	};

	public type EncryptedData1 = {
		Algo : ?Text;
		Ctrl : ?Text;
		KeyIndx : ?Text;
		KeyLngth : ?Text;
		KeySetIdr : ?Text;
		PddgMtd : ?Text;
		DrvdInf : ?Text;
		NcrptdDataElmt : [EncryptedDataElement1];
		NcrptdDataFrmt : ?Text;
		KeyPrtcn : ?Text;
	};

	public type ProtectedData1 = {
		CnttTp : ContentType3Code;
		EnvlpdData : ?EnvelopedData6;
		NcrptdData : ?EncryptedData1;
	};

	public type ProtectionMethod1Code = {
		#OTHN;
		#OTHP;
		#SELM;
		#SNCL;
		#SOFT;
		#TEEN;
	};

	public type StorageLocation1Code = {
		#CAWL;
		#DVCE;
		#ISWL;
		#ONFL;
		#OTHN;
		#OTHP;
		#TPWL;
	};

	public type Token2 = {
		PmtTkn : ?Text;
		PrtcnMtd : ?ProtectionMethod1Code;
		TknAssrncMtd : ?Text;
		TknInittdInd : ?Bool;
		StorgLctn : ?StorageLocation1Code;
		TknAssrncData : ?Text;
		OthrStorgLctn : ?Text;
		OthrPrtcnMtd : ?Text;
		TknRqstrId : ?Text;
		AddtlData : ?[AdditionalData1];

		TknXpryDt : ?Int;
	};

	public type TerminalType1Code = {
		#ATMT;
		#MPOS;
		#OTHN;
		#OTHP;
		#POST;
	};

	public type PointOfInteractionComponentIdentification3 = {
		Id : ?Text;
		SrlNb : ?Text;
		ItmNb : ?Text;
		PrvdrId : ?Text;
	};

	public type POIComponentType5Code = {
		#APLI;
		#APPR;
		#AQPP;
		#CRTF;
		#DRVR;
		#DVCE;
		#EMVK;
		#EMVO;
		#MDWR;
		#MRPR;
		#OPST;
		#SACP;
		#SAPR;
		#SCPR;
		#SECM;
		#SERV;
		#TERM;
		#TLPR;
		#TMSP;
	};

	public type POIComponentStatus1Code = {
		#DACT;
		#OPER;
		#OUTD;
		#WAIT;
	};

	public type PointOfInteractionComponentStatus3 = {
		Sts : ?POIComponentStatus1Code;
		VrsnNb : ?Text;
		XpryDt : ?Int;
	};

	public type GenericIdentification48 = {
		Id : Text;
		Issr : Text;
		Vrsn : Text;
	};

	public type PartyType7Code = {
		#ACQR;
		#ITAG;
		#PCPT;
		#SALE;
		#TMGT;
	};

	public type POICommunicationType2Code = {
		#BLTH;
		#ETHR;
		#GPRS;
		#GSMF;
		#PSTN;
		#RS23;
		#USBD;
		#USBH;
		#WIFI;
		#WT2G;
		#WT3G;
		#WT4G;
		#WT5G;
	};

	public type CommunicationCharacteristics3 = {
		RmotPty : [PartyType7Code];
		Actv : ?Bool;
		ComTp : POICommunicationType2Code;
	};

	public type MemoryUnit1Code = {
		#BYTE;
		#EXAB;
		#GIGA;
		#KILO;
		#MEGA;
		#PETA;
		#TERA;
	};

	public type MemoryCharacteristics1 = {
		Id : Text;
		Unit : MemoryUnit1Code;
		TtlSz : Float;
		FreeSz : Float;
	};

	public type CryptographicKeyType3Code = {
		#AES2;
		#AES5;
		#AES9;
		#DKP9;
		#EDE3;
		#EDE4;
	};

	public type KeyUsage1Code = {
		#DCPT;
		#DDEC;
		#DENC;
		#ENCR;
		#KEYD;
		#KEYG;
		#KEYI;
		#KEYX;
		#MACG;
		#MACV;
		#PIND;
		#PINE;
		#PINV;
		#SIGG;
		#SUGV;
		#TRNI;
		#TRNX;
	};

	public type GenericInformation1 = {
		Nm : Text;
		Val : ?Text;
	};

	public type Algorithm19Code = {
		#ECC1;
		#ECC2;
		#ECC3;
		#ECC4;
		#ECC5;
		#ECP2;
		#ECP3;
		#ECP5;
		#ERS1;
		#ERS2;
		#ERS3;
		#RPSS;
	};

	public type Algorithm11Code = {
		#HS01;
		#HS25;
		#HS38;
		#HS51;
	};

	public type Parameter5 = {
		DgstAlgo : ?Algorithm11Code;
	};

	public type AlgorithmIdentification12 = {
		Algo : Algorithm8Code;
		Param : ?Parameter5;
	};

	public type Algorithm16Code = {
		#HS01;
		#HS25;
		#HS38;
		#HS51;
		#SH31;
		#SH32;
		#SH33;
		#SH35;
		#SHK1;
		#SHK2;
	};

	public type Parameter11 = {
		SaltLngth : Float;
		TrlrFld : ?Float;
		MskGnrtrAlgo : AlgorithmIdentification12;
		DgstAlgo : Algorithm16Code;
	};

	public type AlgorithmIdentification20 = {
		Algo : Algorithm19Code;
		Param : ?Parameter11;
	};

	public type AlgorithmIdentification21 = {
		Algo : Algorithm16Code;
	};

	public type Signer4 = {
		Sgntr : [byte[]];
		SgndAttrbts : ?[GenericInformation1];

		Vrsn : ?Float;
		SgntrAlgo : AlgorithmIdentification20;
		SgnrId : ?Recipient5Choice;
		DgstAlgo : AlgorithmIdentification21;
	};

	public type EncapsulatedContent3 = {
		Cntt : ?[byte[]];

		CnttTp : ContentType2Code;
	};

	public type SignedData5 = {
		Cert : ?[byte[]];

		Sgnr : ?[Signer4];

		Vrsn : ?Float;
		NcpsltdCntt : ?EncapsulatedContent3;
		DgstAlgo : ?[AlgorithmIdentification21];

	};

	public type Algorithm18Code = {
		#DA12;
		#DA19;
		#DA25;
		#DKP9;
		#E36C;
		#E36R;
		#E3DC;
		#E3DR;
		#EA2C;
		#EA2R;
		#EA5C;
		#EA5R;
		#EA9C;
		#EA9R;
		#N108;
		#SD5C;
		#UKA1;
		#UKPT;
	};

	public type EncryptionFormat2Code = {
		#I238;
		#TR31;
		#TR34;
	};

	public type Parameter12 = {
		BPddg : ?BytePadding1Code;
		InitlstnVctr : ?[byte[]];

		NcrptnFrmt : ?EncryptionFormat2Code;
	};

	public type AlgorithmIdentification23 = {
		Algo : Algorithm18Code;
		Param : ?Parameter12;
	};

	public type KEK5 = {
		Vrsn : ?Float;
		KEKId : KEKIdentifier2;
		NcrptdKey : [byte[]];
		KeyNcrptnAlgo : AlgorithmIdentification23;
	};

	public type Parameter9 = {
		DgstAlgo : ?Algorithm16Code;
	};

	public type AlgorithmIdentification18 = {
		Algo : Algorithm8Code;
		Param : ?Parameter9;
	};

	public type Parameter10 = {
		NcrptnFrmt : ?EncryptionFormat2Code;
		MskGnrtrAlgo : ?AlgorithmIdentification18;
		DgstAlgo : ?Algorithm16Code;
	};

	public type AlgorithmIdentification19 = {
		Algo : Algorithm7Code;
		Param : ?Parameter10;
	};

	public type KeyTransport5 = {
		RcptId : Recipient5Choice;
		Vrsn : ?Float;
		NcrptdKey : [byte[]];
		KeyNcrptnAlgo : AlgorithmIdentification19;
	};

	public type Recipient6Choice = {
		KEK : ?KEK5;
		KeyTrnsprt : ?KeyTransport5;
		KeyIdr : ?KEKIdentifier2;
	};

	public type Algorithm17Code = {
		#CCA1;
		#CCA2;
		#CCA3;
		#CM31;
		#CM32;
		#CM33;
		#CMA1;
		#CMA2;
		#CMA5;
		#CMA9;
		#MACC;
		#MCC1;
		#MCCS;
		#MCS3;
	};

	public type AlgorithmIdentification22 = {
		Algo : Algorithm17Code;
		Param : ?Parameter7;
	};

	public type AuthenticatedData5 = {
		MAC : [byte[]];
		Rcpt : [Recipient6Choice];
		Vrsn : ?Float;
		MACAlgo : AlgorithmIdentification22;
		NcpsltdCntt : EncapsulatedContent3;
	};

	public type DigestedData5 = {
		Dgst : [byte[]];
		Vrsn : ?Float;
		NcpsltdCntt : EncapsulatedContent3;
		DgstAlgo : AlgorithmIdentification21;
	};

	public type OriginatorInformation1 = {
		Cert : ?[byte[]];

	};

	public type AlgorithmIdentification24 = {
		Algo : Algorithm18Code;
		Param : ?Parameter12;
	};

	public type EncryptedContent4 = {
		CnttTp : ContentType2Code;
		CnttNcrptnAlgo : ?AlgorithmIdentification24;
		NcrptdData : [byte[]];
	};

	public type EnvelopedData5 = {
		Rcpt : [Recipient6Choice];
		Vrsn : ?Float;
		OrgtrInf : ?OriginatorInformation1;
		NcrptdCntt : ?EncryptedContent4;
	};

	public type ContentInformationType19 = {
		SgndData : ?SignedData5;
		AuthntcdData : ?AuthenticatedData5;
		CnttTp : ContentType2Code;
		DgstdData : ?DigestedData5;
		EnvlpdData : ?EnvelopedData5;
	};

	public type CryptographicKey13 = {
		Id : Text;
		Tp : ?CryptographicKeyType3Code;
		Fctn : ?[KeyUsage1Code];

		Vrsn : Text;
		ActvtnDt : ?Int;
		KeyChckVal : ?[byte[]];

		AddtlId : ?[byte[]];

		KeyVal : ?ContentInformationType19;
		AddtlMgmtInf : ?[GenericInformation1];

		DeactvtnDt : ?Int;
	};

	public type PointOfInteractionComponentCharacteristics4 = {
		Com : ?[CommunicationCharacteristics3];

		Mmry : ?[MemoryCharacteristics1];

		SctyAccsMdls : ?Float;
		SbcbrIdntyMdls : ?Float;
		SctyElmt : ?[CryptographicKey13];

	};

	public type PointOfInteractionComponent13 = {
		Id : PointOfInteractionComponentIdentification3;
		Tp : POIComponentType5Code;
		Sts : ?PointOfInteractionComponentStatus3;
		StdCmplc : ?[GenericIdentification48];

		Assmnt : ?[PointOfInteractionComponentIdentification3];

		Chrtcs : ?PointOfInteractionComponentCharacteristics4;
	};

	public type TerminalIdentification3 = {
		Id : Text;
		Ctry : ?Text;
		ShrtNm : ?Text;
		Assgnr : ?Text;
	};

	public type TerminalIntegrationCategory1Code = {
		#MPOI;
		#MSLE;
		#SSLE;
	};

	public type OutputFormat1Code = {
		#HTML;
		#MREF;
		#TEXT;
	};

	public type UserInterface1Code = {
		#CDSP;
		#CRCP;
		#MDSP;
		#MRCP;
	};

	public type DisplayCapabilities6 = {
		AvlblFrmt : ?[OutputFormat1Code];

		AvlblLang : ?[Text];

		Dstn : UserInterface1Code;
		LineWidth : ?Float;
		NbOfLines : ?Float;
	};

	public type CardDataWriting1Code = {
		#ICCY;
		#ICPY;
		#MGST;
		#MSIP;
		#OTHN;
		#OTHP;
		#UNSP;
	};

	public type CardWritingCapabilities1 = {
		OthrCpblty : ?Text;
		Cpblty : CardDataWriting1Code;
	};

	public type CardholderVerificationCapability5Code = {
		#APKI;
		#FBIG;
		#FBIO;
		#FCPN;
		#FDSG;
		#FEPN;
		#NBIO;
		#NOOP;
		#NOPN;
		#NOVF;
		#NPIN;
		#OTHN;
		#OTHP;
		#PKIS;
		#SIGN;
		#UNSP;
		#VORN;
	};

	public type CardholderVerificationCapabilities1 = {
		OthrCpblty : ?Text;
		Cpblty : CardholderVerificationCapability5Code;
	};

	public type OnLineCapability2Code = {
		#BOTH;
		#OFLN;
		#ONLN;
	};

	public type CardDataReading10Code = {
		#DFLE;
		#ICCY;
		#ICPY;
		#KEEN;
		#MGST;
		#MICR;
		#MLEY;
		#MSIP;
		#OCRR;
		#OPTC;
		#OTHN;
		#OTHP;
		#RFID;
		#UNSP;
	};

	public type CardReadingCapabilities1 = {
		OthrCpblty : ?Text;
		Cpblty : CardDataReading10Code;
	};

	public type PINEntrySecurityCharacteristic1Code = {
		#OTHN;
		#OTHP;
		#SECH;
		#SECS;
	};

	public type Capabilities2 = {
		MxScrptLngth : ?Float;
		MsgCpblty : ?[DisplayCapabilities6];

		CardWrtgCpblty : ?[CardWritingCapabilities1];

		CrdhldrVrfctnCpblty : ?[CardholderVerificationCapabilities1];

		OthrPINNtrySctyChrtc : ?Text;
		TempScrCardDataStorg : ?Bool;
		ApprvlCdLngth : ?Float;
		OnLineCpblty : ?OnLineCapability2Code;
		CardRdngCpblty : ?[CardReadingCapabilities1];

		PINLngthCpblty : ?Float;
		CardCaptrCpbl : ?Bool;
		PINNtrySctyChrtc : ?PINEntrySecurityCharacteristic1Code;
	};

	public type Terminal4 = {
		Tp : ?TerminalType1Code;
		GeogcLctn : ?Text;
		OthrTp : ?Text;
		POICmpnt : ?[PointOfInteractionComponent13];

		TermnlId : TerminalIdentification3;
		OnBrdInd : ?Bool;
		TermnlIntgtn : ?TerminalIntegrationCategory1Code;
		Cpblties : ?Capabilities2;
		OffPrmissInd : ?Bool;
		OutdrInd : ?Bool;
	};

	public type CustomerDeviceType2Code = {
		#EMBD;
		#GAMB;
		#JEWL;
		#KFOB;
		#MOBL;
		#NSCR;
		#OTHN;
		#OTHP;
		#PECR;
		#SECR;
		#STIC;
		#TBLT;
		#UNKW;
		#VHCL;
		#WATC;
		#WRBL;
	};

	public type Device2 = {
		Tp : ?CustomerDeviceType2Code;
		Email : ?Text;
		PhneNb : ?Text;
		Lang : ?Text;
		IPAdr : ?Text;
		LctnCtryCd : ?Text;
		ManfctrMdlId : ?Text;
		DvcNm : ?Text;
		GeogcLctn : ?Text;
		OthrTp : ?Text;
		DvcNmNrmlzd : ?Text;
		Manfctr : ?Text;
	};

	public type DeviceIdentificationType1Code = {
		#IMEI;
		#OTHN;
		#OTHP;
		#SEID;
		#SENU;
	};

	public type DeviceIdentification1 = {
		Id : ?Text;
		Tp : ?DeviceIdentificationType1Code;
		Assgnr : ?Text;
		OthrTp : ?Text;
	};

	public type DeviceOperatingSystemType1Code = {
		#BLCK;
		#DROI;
		#IOSS;
		#OTHN;
		#OTHP;
		#TIZN;
		#WIND;
	};

	public type DeviceOperatingSystem1 = {
		Id : ?Text;
		Tp : ?DeviceOperatingSystemType1Code;
		Bld : ?Text;
		Vrsn : ?Text;
		OthrTp : ?Text;
	};

	public type CustomerDevice4 = {
		Dvc : ?Device2;
		Prvdr : ?Text;
		DvcId : ?DeviceIdentification1;
		OprgSys : ?DeviceOperatingSystem1;
		AddtlData : ?[AdditionalData1];

	};

	public type Track2Data1Choice = {
		HexBinryVal : ?Text;
		TxtVal : ?Text;
	};

	public type CardData6 = {
		PAN : ?Text;
		SvcCd : ?Text;
		PmtAcctRef : ?Text;
		FctvDt : ?Int;
		PANAcctRg : ?Text;
		PrtctdPANInd : ?Bool;
		CardSeqNb : ?Text;
		CardPdctSubTp : ?Text;
		Trck1 : ?Text;
		Trck2 : ?Track2Data1Choice;
		Trck3 : ?Text;
		CardPdctTp : ?Text;
		CardCtryCd : ?Text;
		CardPrtflIdr : ?Text;
		AddtlCardData : ?[AdditionalData1];

		XpryDt : ?Int;
	};

	public type LocalData1 = {
		LglCorpNm : ?Text;
		Lang : Text;
		ShrtNm : ?Text;
		AddtlData : ?[AdditionalData1];

	};

	public type PartyIdentification263 = {
		Id : Text;
		Ctry : ?Text;
		LglCorpNm : ?Text;
		LclData : ?LocalData1;
		ShrtNm : ?Text;
		AddtlId : ?AdditionalData1;
		Assgnr : ?Text;
	};

	public type Frequency12Code = {
		#DAIL;
		#FRTN;
		#MIAN;
		#MNTH;
		#QURT;
		#TEND;
		#WEEK;
		#YEAR;
	};

	public type RiskAssessment1Code = {
		#APPC;
		#APPH;
		#APPU;
		#DONT;
	};

	public type PartyIdentification258 = {
		Id : Text;
		Ctry : ?Text;
		LglCorpNm : ?Text;
		LclData : ?LocalData1;
		ShrtNm : ?Text;
		AddtlId : ?AdditionalData1;
		Assgnr : ?Text;
	};

	public type CardDataReading9Code = {
		#CAMR;
		#CDFL;
		#ICCY;
		#ICPY;
		#KEEN;
		#MBNK;
		#OPTC;
		#OTHN;
		#OTHP;
		#TOKN;
		#UNKW;
	};

	public type Wallet2 = {
		WlltPrvdrDvcScore : ?Float;
		OthrCardDataNtryMd : ?Text;
		WlltAcctAge : ?Float;
		WlltPrvdrRskAssmntMdlVrsn : ?Text;
		ActvtyIntrvl : ?Frequency12Code;
		Actvty : ?Float;
		WlltPrvdrRskAssmnt : ?RiskAssessment1Code;
		Prvdr : ?PartyIdentification258;
		WlltPrvdrAcctScore : ?Float;
		WlltAcctEmailAge : ?Float;
		LastWlltChng : ?Float;
		UsrAcctAge : ?Float;
		WlltAcctCtry : ?Text;
		PANAge : ?Float;
		WlltPrvdrPhneScore : ?Float;
		DaysSncLastActvty : ?Float;
		SspdCrds : ?Float;
		AddtlData : ?[AdditionalData1];

		CardDataNtryMd : ?CardDataReading9Code;
	};

	public type Address2 = {
		CtrySubDvsnMjr : ?Text;
		CtrySubDvsnMnr : ?Text;
		Ctry : ?Text;
		StrtNm : ?Text;
		AdrLine1 : ?Text;
		AdrLine2 : ?Text;
		PstlCd : ?Text;
		TwnNm : ?Text;
		CtrySubDvsnMjrNm : ?Text;
		CtrySubDvsnMnrNm : ?Text;
		BldgNb : ?Text;
	};

	public type Address3 = {
		Ctry : ?Text;
		StrtNm : ?Text;
		AdrLine1 : ?Text;
		AdrLine2 : ?Text;
		PstlCd : ?Text;
		TwnNm : ?Text;
		CtrySubDvsnMjrNm : ?Text;
		CtrySubDvsnMnrNm : ?Text;
		BldgNb : ?Text;
	};

	public type LocalData4 = {
		Adr : ?Address3;
		LglCorpNm : ?Text;
		Lang : Text;
		ShrtNm : ?Text;
		AddtlCtctInf : ?Text;
		AddtlAdrInf : ?Text;
		AddtlData : ?[AdditionalData1];

		NmAndLctn : ?Text;
	};

	public type PartyIdentification262 = {
		Id : Text;
		FrgnMrchnt : ?Bool;
		Ctry : ?Text;
		LclData : ?LocalData1;
		ShrtNm : ?Text;
		AddtlId : ?Text;
		Assgnr : ?Text;
	};

	public type LocalData5 = {
		Adr : ?Address3;
		LglCorpNm : ?Text;
		Lang : Text;
		AddtlAdrInf : ?Text;
		CmonNm : ?Text;
		AddtlData : ?[AdditionalData1];

	};

	public type SponsoredMerchant2 = {
		Id : PartyIdentification262;
		Adr : ?Address2;
		LglCorpNm : ?Text;
		LclData : ?LocalData5;
		GeogcLctn : ?Text;
		AddtlAdrInf : ?Text;
		CmonNm : ?Text;
		AddtlData : ?[AdditionalData1];

	};

	public type PartyIdentification255 = {
		Id : Text;
		Adr : ?Address2;
		Email : ?Text;
		CstmrSvc : ?Text;
		PhneNb : ?Text;
		Ctry : ?Text;
		LglCorpNm : ?Text;
		LclData : ?LocalData4;
		ShrtNm : ?Text;
		URLAdr : ?Text;
		AddtlId : ?AdditionalData1;
		AddtlCtctInf : ?Text;
		SpnsrdMrchnt : ?[SponsoredMerchant2];

		GeogcLctn : ?Text;
		Assgnr : ?Text;
		AddtlAdrInf : ?Text;
		TaxRegnId : ?Text;
		AddtlData : ?[AdditionalData1];

		NmAndLctn : Text;
	};

	public type Authority1 = {
		Nm : ?Text;
		CtrySubDvsnMjr : ?Text;
		CtrySubDvsnMnr : ?Text;
		Ctry : ?Text;
		CtrySubDvsnMjrNm : ?Text;
		CtrySubDvsnMnrNm : ?Text;
	};

	public type Identification3Code = {
		#ARNB;
		#CUID;
		#DRID;
		#EMAL;
		#NTID;
		#OTHN;
		#OTHP;
		#PASS;
		#PHNB;
		#PRXY;
		#SSYN;
		#TXID;
	};

	public type Credentials2 = {
		AssgnrAuthrty : ?Authority1;
		IdCd : Identification3Code;
		IdVal : Text;
		IdXpryDt : ?Int;
		OthrIdCd : ?Text;
	};

	public type CardholderName2 = {
		Nm : ?Text;
		GvnNm : ?Text;
		LastNm : ?Text;
		MddlNm : ?Text;
	};

	public type LocalData7 = {
		Adr : ?Address3;
		Lang : Text;
		AddtlData : ?[AdditionalData1];

		CrdhldrNm : ?CardholderName2;
	};

	public type Contact1 = {
		Nm : ?Text;
		Lang : ?Text;
		PrsnlEmailAdr : ?Text;
		BizEmailAdr : ?Text;
		MobPhneNb : ?Text;
		OthrEmailAdr : ?Text;
		HomePhneNb : ?Text;
		BizPhneNb : ?Text;
		OthrPhneNb : ?Text;
	};

	public type CardholderName3 = {
		Nm : ?Text;
		GvnNm : ?Text;
		LastNm : ?Text;
		MddlNm : ?Text;
	};

	public type Cardholder19 = {
		Id : ?[Credentials2];

		Adr : ?Address2;
		LclData : ?LocalData7;
		CtctInf : ?Contact1;
		HghValCstmrInd : ?Bool;
		DtOfBirth : ?Int;
		AddtlData : ?[AdditionalData1];

		CrdhldrNm : ?CardholderName3;
	};

	public type Environment18 = {
		Tkn : ?Token2;
		Termnl : ?Terminal4;
		CstmrDvc : ?CustomerDevice4;
		Card : ?CardData6;
		Dstn : ?PartyIdentification263;
		Issr : ?PartyIdentification263;
		Rcvr : ?PartyIdentification263;
		Sndr : ?PartyIdentification263;
		Wllt : ?Wallet2;
		Accptr : PartyIdentification255;
		Crdhldr : ?Cardholder19;
		Acqrr : PartyIdentification263;
		Orgtr : ?PartyIdentification263;
	};

	public type Response8Code = {
		#OTHN;
		#OTHP;
		#PRCS;
		#REJT;
		#TECH;
		#UNPR;
		#UNRV;
	};

	public type ResultData7 = {
		RsltDtls : Text;
		Rslt : ?Response8Code;
		TempScrCardDataReusePrtd : ?Bool;
		AddtlRsltInf : ?[AdditionalData1];

		OthrRsltDtls : ?Text;
		OthrRslt : ?Text;
	};

	public type Contact6 = {
		BizFaxNb : ?Text;
		Lang : ?Text;
		PrsnlEmailAdr : ?Text;
		BizEmailAdr : ?Text;
		MobPhneNb : ?Text;
		OthrEmailAdr : ?Text;
		URLAdr : ?Text;
		HomePhneNb : ?Text;
		HomeFaxNb : ?Text;
		BizPhneNb : ?Text;
		OthrPhneNb : ?Text;
	};

	public type PartyType20Code = {
		#ACCP;
		#ACQR;
		#AGNT;
		#CISS;
		#CRDH;
	};

	public type ActionType11Code = {
		#CHDV;
		#CNAS;
		#CNIS;
		#CNTA;
		#CNTI;
		#CPTR;
		#OTHN;
		#OTHP;
		#SIGN;
		#TRCK;
		#TRXR;
		#VIPM;
	};

	public type Action13 = {
		Ctct : ?Contact6;
		Dstn : ?PartyType20Code;
		ActnTp : ?ActionType11Code;
		AddtlData : ?[AdditionalData1];

		OthrActnTp : ?Text;
	};

	public type OutputFormat4Code = {
		#FLNM;
		#HTML;
		#MREF;
		#OTHN;
		#OTHP;
		#SMSI;
		#TEXT;
		#URLI;
	};

	public type PartyType22Code = {
		#AGNT;
		#CRDH;
		#MERC;
		#OTHN;
		#OTHP;
	};

	public type UserInterface6Code = {
		#CDSP;
		#CHAP;
		#CRCP;
		#CRDO;
		#FILE;
		#MDSP;
		#MRAP;
		#MRCP;
		#MRIN;
	};

	public type AdditionalInformation29 = {
		Tp : ?Text;
		Val : Text;
		Frmt : ?OutputFormat4Code;
		Lang : Text;
		Rcpt : ?PartyType22Code;
		Trgt : ?[UserInterface6Code];

		OthrFrmt : ?Text;
		OthrRcpt : ?Text;
		OthrTrgt : ?Text;
	};

	public type ActionType10Code = {
		#ACTV;
		#DEAC;
		#DISP;
		#FUPD;
		#PRNT;
		#SNDM;
	};

	public type Content1 = {
		Val : Text;
		Sgntr : ?[byte[]];

		CertId : ?Text;
	};

	public type PartyType21Code = {
		#ACCP;
		#CRDH;
		#OTHN;
		#OTHP;
	};

	public type ActionDestination1Code = {
		#FILE;
		#MOBL;
		#OTHN;
		#OTHP;
		#PECR;
		#POFS;
	};

	public type AdditionalAction1 = {
		Tp : ?ActionType10Code;
		DstnAdr : ?Text;
		Cntt : ?Content1;
		Dstn : ?PartyType21Code;
		Frmt : ?OutputFormat4Code;
		OthrDstnTp : ?Text;
		DstnTp : ?ActionDestination1Code;
		OthrDstn : ?Text;
		OthrFrmt : ?Text;
	};

	public type ProcessingResult11 = {
		RsltData : ?ResultData7;
		Actn : ?[Action13];

		OrgnlRsltData : ?ResultData7;
		AddtlInf : ?[AdditionalInformation29];

		AddtlActn : ?[AdditionalAction1];

		ActnReqrd : ?Bool;
	};

	public type SupplementaryDataEnvelope1 = {
		any : Any;
	};

	public type SupplementaryData1 = {
		Envlp : SupplementaryDataEnvelope1;
		PlcAndNm : ?Text;
	};

	public type VerificationEntity2Code = {
		#ACQR;
		#AGNT;
		#CDAD;
		#ICCA;
		#ISSR;
		#MERC;
		#OTHN;
		#OTHP;
	};

	public type Verification3Code = {
		#ERRR;
		#FAIL;
		#FUTA;
		#MISS;
		#NOSP;
		#NOVF;
		#OTHN;
		#OTHP;
		#PART;
		#SUCC;
	};

	public type VerificationResult2 = {
		Tp : ?Text;
		RsltDtls : ?[AdditionalData1];

		Ntty : ?VerificationEntity2Code;
		Rslt : ?Verification3Code;
		OthrNtty : ?Text;
		OthrRslt : ?Text;
	};

	public type PINData1 = {
		PINBlckFrmt : Text;
		Algo : ?Text;
		Ctrl : ?Text;
		NcrptdPINBlck : Text;
		KeyIndx : ?Text;
		KeyLngth : ?Text;
		KeySetIdr : ?Text;
		DrvdInf : ?Text;
		KeyPrtcn : ?Text;
	};

	public type VerificationValue1Choice = {
		PINData : ?PINData1;
		HexBinryVal : ?Text;
		BinryVal : ?[byte[]];

		TxtVal : ?Text;
	};

	public type VerificationInformation1 = {
		Tp : ?Text;
		Rsn : ?[Text];

		Val : ?VerificationValue1Choice;
		VldtyEndDt : ?Int;
		VldtyEndTm : ?Int;
		DtTm : ?Int;
	};

	public type Verification5 = {
		Tp : ?Text;
		SubTp : ?Text;
		VrfctnRslt : ?[VerificationResult2];

		VrfctnInf : ?[VerificationInformation1];

		OthrTp : ?Text;
	};

	public type ECommerceData1 = {
		Tp : Text;
		Val : Text;
	};

	public type SecurityCharacteristics1Code = {
		#AETE;
		#APTE;
		#CENC;
		#CETE;
		#CMAC;
		#CPTE;
		#ETEE;
		#METE;
		#MPTE;
		#OPNN;
		#OTHN;
		#OTHP;
		#PKIE;
		#PMAC;
		#PRAE;
		#PRAM;
		#PRVN;
		#STAM;
	};

	public type MOTO1Code = {
		#MAOR;
		#MOTO;
		#TPOR;
	};

	public type SpecialConditions1 = {
		Id : ?Text;
		Val : ?Text;
	};

	public type QRCodePresentmentMode1Code = {
		#CPMD;
		#MPMD;
		#OTHN;
		#OTHP;
	};

	public type PointOfServiceContext3 = {
		TempScrCardDataReusd : ?Bool;
		CardPres : ?Bool;
		CrdhldrActvtd : ?Bool;
		AttnddInd : ?Bool;
		OthrCardDataNtryMd : ?Text;
		OthrSctyChrtcs : ?Text;
		PrtlApprvlSpprtd : ?Bool;
		EComrcData : ?[ECommerceData1];

		DelydAuthstnInd : ?Bool;
		EComrcInd : ?Bool;
		OthrQRCdPresntmntMd : ?Text;
		CrdhldrPres : ?Bool;
		StorgLctn : ?Text;
		SctyChrtcs : ?[SecurityCharacteristics1Code];

		MOTOCd : ?MOTO1Code;
		TrnspndrInittd : ?Bool;
		UattnddLvlCtgy : ?Text;
		SpclConds : ?[SpecialConditions1];

		QRCdPresntmntMd : ?QRCodePresentmentMode1Code;
		TrnstInd : ?Bool;
		AddtlData : ?[AdditionalData1];

		CardDataNtryMd : CardDataReading10Code;
	};

	public type Priority3Code = {
		#HIGH;
		#NORM;
		#URGT;
	};

	public type SettlementServiceMode1 = {
		Id : ?Text;
		Tp : ?Text;
		SttlmPrty : ?Priority3Code;
		ShrtNm : ?Text;
	};

	public type SettlementReportingEntity1 = {
		Id : ?Text;
		Tp : ?Text;
	};

	public type SettlementServiceDate2 = {
		SttlmPrd : ?Text;
		DfrrdSttlmInd : ?Bool;
		ReqdSttlmDt : ?Int;
		SttlmCutOffTm : ?Int;
		SttlmDt : ?Int;
		SttlmTm : ?Int;
	};

	public type SettlementService3 = {
		SttlmSvcApld : ?SettlementServiceMode1;
		AddtlSttlmInf : ?[AdditionalData1];

		SttlmRptgNtty : ?SettlementReportingEntity1;
		SttlmSvcPropsd : ?SettlementServiceMode1;
		SttlmSvcDts : ?SettlementServiceDate2;
	};

	public type Reconciliation3 = {
		Dt : ?Int;
		Id : ?Text;
		ChckptRef : ?Text;
	};

	public type RateLock1 = {
		ReqdInd : ?Bool;
		ApldInd : ?Bool;
		ElgblInd : ?Bool;
	};

	public type Endpoint1Code = {
		#DEST;
		#ORIG;
		#OTHN;
		#OTHP;
	};

	public type ExchangeRateAgreementType1Code = {
		#FWCT;
		#NORM;
		#OTHN;
		#OTHP;
		#SPOT;
	};

	public type ExchangeRateType2Code = {
		#AGRD;
		#BUYR;
		#MIDL;
		#OTHN;
		#OTHP;
		#SELL;
	};

	public type ExchangeRateDetail1 = {
		EndPt : ?Endpoint1Code;
		CntrCcyCd : ?Text;
		Rate : ?Float;
		OthrEndPt : ?Text;
		OthrRateTp : ?Text;
		AgrmtTp : ?ExchangeRateAgreementType1Code;
		OthrAgrmtTp : ?Text;
		RateTp : ?ExchangeRateType2Code;
		BaseCcyCd : ?Text;
	};

	public type ExchangeRateInformation2 = {
		Dt : ?Int;
		Id : ?Text;
		Tm : ?Int;
		RateLck : ?RateLock1;
		Prvdr : ?Text;
		XchgRateDtl : ?ExchangeRateDetail1;
	};

	public type Jurisdiction2 = {
		DmstInd : ?Bool;
		DmstQlfctn : ?Text;
	};

	public type ICCFallbackReason1Code = {
		#CIIA;
		#EDIP;
		#OTHN;
		#OTHP;
		#TERI;
	};

	public type CardProgrammeMode3 = {
		Id : Text;
		Tp : ?Text;
		AddtlId : ?[AdditionalData1];

	};

	public type CardProgrammeMode2 = {
		Id : [Text];
		Tp : ?Text;
	};

	public type CardProgramme2 = {
		CardPrgrmmApld : ?CardProgrammeMode3;
		CardPrgrmmPropsd : ?[CardProgrammeMode2];

	};

	public type TransactionInitiator1Code = {
		#CUST;
		#MERC;
	};

	public type TransactionContext7 = {
		DfrrdDlvryInd : ?Bool;
		ReauthstnInd : ?Bool;
		PINNtryBpssInd : ?Bool;
		CstmrCnsnt : ?Bool;
		DelydChrgsInd : ?Bool;
		SttlmSvc : ?SettlementService3;
		MgntcStrpFllbckInd : ?Bool;
		NoShowInd : ?Bool;
		AuthntcnOutgInd : ?Bool;
		CaptrDt : ?Int;
		MrchntCtgyCd : Text;
		Rcncltn : ?Reconciliation3;
		LatePresntmntInd : ?Bool;
		XchgRateInf : ?[ExchangeRateInformation2];

		PINPadInprtv : ?Bool;
		DtAntcptd : ?Int;
		ReSubmissnInd : ?Bool;
		Jursdctn : ?Jurisdiction2;
		ICCFllbckRsnCd : ?ICCFallbackReason1Code;
		ICCFllbckInd : ?Bool;
		MrchntCtgySpcfcData : ?Text;
		FnlAuthstnInd : ?Bool;
		CardPrgrmm : ?CardProgramme2;
		OthrICCFllbckRsnCd : ?Text;
		AddtlData : ?[AdditionalData1];

		TxInitr : ?TransactionInitiator1Code;
		PrtlShipmntInd : ?Bool;
	};

	public type ActionType8Code = {
		#APPV;
		#BLCK;
		#CPTR;
		#DCLN;
		#NDCL;
		#OTHN;
		#OTHP;
		#RFRL;
		#RQID;
		#STUA;
	};

	public type PartyType28Code = {
		#ACCP;
		#ACQR;
		#AGNT;
		#ISUR;
		#OTHN;
		#OTHP;
		#WLPR;
	};

	public type PartyIdentification200 = {
		Id : ?Text;
		Tp : ?PartyType28Code;
		Ctry : ?Text;
		ShrtNm : ?Text;
		Assgnr : ?PartyType18Code;
		OthrTp : ?Text;
	};

	public type AdditionalRiskData1 = {
		Tp : Text;
		Val : Text;
	};

	public type RiskAssessment2 = {
		Rsn : ?[Text];

		RskAssmntTp : ?Text;
		RskCond : ?[AdditionalData1];

		RcmmnddActnDtls : ?Text;
		OthrRcmmnddActn : ?Text;
		Rslt : ?Text;
		RcmmnddActn : ?[ActionType8Code];

		RskAssmntNtty : ?PartyIdentification200;
		HghRskTx : ?Bool;
		AddtlRskData : ?[AdditionalRiskData1];

	};

	public type RiskAssessmentDataEntityProvider1 = {
		Tp : ?PartyType28Code;
		OthrTp : ?Text;
	};

	public type RiskInputData1 = {
		Tp : Text;
		Val : Text;
		Ntty : ?RiskAssessmentDataEntityProvider1;
	};

	public type RiskContext2 = {
		RskAssmnt : ?[RiskAssessment2];

		RskInptData : ?[RiskInputData1];

	};

	public type Context11 = {
		Vrfctn : ?[Verification5];

		PtOfSvcCntxt : PointOfServiceContext3;
		TxCntxt : TransactionContext7;
		RskCntxt : ?RiskContext2;
	};

	public type InquiryInitiation2 = {
		Tx : Transaction131;
		AdddmData : ?AddendumData5;
		PrtctdData : ?[ProtectedData1];

		Envt : Environment18;
		ICCRltdData : ?Text;
		PrcgRslt : ?ProcessingResult11;
		SplmtryData : ?[SupplementaryData1];

		Cntxt : Context11;
	};

	public type MACData1 = {
		Algo : Text;
		Ctrl : Text;
		InitlstnVctr : ?Text;
		KeyIndx : ?Text;
		KeyLngth : ?Text;
		KeySetIdr : Text;
		PddgMtd : ?Text;
		DrvdInf : ?Text;
		KeyPrtcn : ?Text;
	};

	public type ContentInformationType20 = {
		MAC : Text;
		MACData : MACData1;
	};

	public type InquiryInitiationV02 = {
		Hdr : Header60;
		Body : InquiryInitiation2;
		SctyTrlr : ?ContentInformationType20;
	};

}