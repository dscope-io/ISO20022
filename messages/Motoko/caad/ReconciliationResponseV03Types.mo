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

	public type TransactionLifeCycleIdentification2 = {
		Id : Text;
	};

	public type TransactionIdentification12 = {
		RtrvlRefNb : ?Text;
		LifeCyclTracIdData : ?TransactionLifeCycleIdentification2;
		TrnsmssnDtTm : Int;
		SysTracAudtNb : Text;
	};

	public type CardServiceType4Code = {
		#FINL;
		#OTHN;
		#OTHP;
		#PART;
	};

	public type ReconciliationActivityType1Code = {
		#ACQG;
		#CNSD;
		#ISSG;
		#OTHN;
		#OTHP;
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

	public type CreditDebit3Code = {
		#CRDT;
		#DBIT;
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

	public type ReconciliationFunction1Code = {
		#CNVY;
		#INCU;
		#INQR;
	};

	public type ReconciliationMessageType2Code = {
		#ADDI;
		#ADDR;
		#AMDT;
		#ATHI;
		#ATHR;
		#BAMI;
		#BAMR;
		#BATI;
		#BATR;
		#CAMI;
		#CAMR;
		#CGBI;
		#CGBR;
		#EROR;
		#FECI;
		#FECR;
		#FIAI;
		#FIAR;
		#FINI;
		#FINR;
		#FRDI;
		#FRDR;
		#FRRI;
		#FRRR;
		#INQI;
		#INQR;
		#KYEI;
		#KYER;
		#NWMI;
		#NWMR;
		#RECI;
		#RECR;
		#REVI;
		#REVR;
		#RTFI;
		#RTFR;
		#RTRI;
		#RTVI;
		#SERI;
		#SERR;
		#VERI;
		#VERR;
	};

	public type MessageReconciliation3 = {
		Tp : ReconciliationMessageType2Code;
		Cnt : Float;
		OthrTp : ?Text;
	};

	public type ReconciliationImpact1Code = {
		#CRDT;
		#DEBT;
	};

	public type AdditionalFeeReconciliation2 = {
		Tp : TypeOfAmount21Code;
		Amt : Float;
		Cnt : Float;
		RcncltnImpct : ReconciliationImpact1Code;
		OthrTp : ?Text;
	};

	public type ReconciliationCategory1Code = {
		#CGBK;
		#FNCL;
		#OTHN;
		#OTHP;
		#RVSL;
	};

	public type FinancialReconciliation2 = {
		Tp : ReconciliationCategory1Code;
		Amt : Float;
		Cnt : Float;
		RcncltnImpct : ReconciliationImpact1Code;
		OthrTp : ?Text;
	};

	public type Reconciliation3 = {
		Dt : ?Int;
		Id : ?Text;
		ChckptRef : ?Text;
	};

	public type Amount16 = {
		Amt : Float;
		CdtDbt : ?CreditDebit3Code;
	};

	public type TransactionTotals13 = {
		Ccy : Text;
		MsgRcncltn : ?[MessageReconciliation3];

		AddtlFeeRcncltn : ?[AdditionalFeeReconciliation2];

		FinRcncltn : ?[FinancialReconciliation2];

		Rcncltn : ?Reconciliation3;
		NetAmtRcncltn : ?Amount16;
	};

	public type Transaction135 = {
		ReqdCcy : ?[Text];

		TxId : ?TransactionIdentification12;
		OthrRcncltnActvtyTp : ?Text;
		RcncltnTp : CardServiceType4Code;
		RcncltnActvtyTp : ?ReconciliationActivityType1Code;
		AddtlFee : ?[AdditionalFee2];

		RcncltnFctn : ReconciliationFunction1Code;
		RcncltnTtls : ?[TransactionTotals13];

		AddtlData : ?[AdditionalData1];

		OthrRcncltnTp : ?Text;
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

	public type Environment33 = {
		Dstn : ?PartyIdentification263;
		Rcvr : ?PartyIdentification263;
		Sndr : ?PartyIdentification263;
		Orgtr : ?PartyIdentification263;
	};

	public type PartyType26Code = {
		#ACCP;
		#ACQR;
		#AGNT;
		#CISS;
		#DLIS;
		#ICCA;
		#OTHN;
		#OTHP;
	};

	public type PartyType9Code = {
		#ACQP;
		#ACQR;
		#CISP;
		#CISS;
		#CSCH;
		#SCHP;
	};

	public type ApprovalEntity2 = {
		Id : ?Text;
		Tp : PartyType26Code;
		Ctry : ?Text;
		ShrtNm : ?Text;
		Assgnr : ?PartyType9Code;
		OthrTp : ?Text;
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

	public type ResultData10 = {
		RsltDtls : Text;
		Rslt : ?Response8Code;
		AddtlRsltInf : ?[AdditionalData1];

		OthrRsltDtls : ?Text;
		OthrRslt : ?Text;
	};

	public type ResultData7 = {
		RsltDtls : Text;
		Rslt : ?Response8Code;
		TempScrCardDataReusePrtd : ?Bool;
		AddtlRsltInf : ?[AdditionalData1];

		OthrRsltDtls : ?Text;
		OthrRslt : ?Text;
	};

	public type MessageError1Code = {
		#DUME;
		#IBAT;
		#ICOL;
		#IDEF;
		#IDEL;
		#IDEV;
		#IDRM;
		#IDWM;
		#INME;
		#INMF;
		#ITDE;
		#MEPE;
		#OTHN;
		#OTHP;
		#PRVE;
		#RDEM;
		#SECU;
		#UDFD;
	};

	public type ErrorDetails2 = {
		ErrCd : ?Text;
		DataElmtInErr : ?[Text];

		MsgErrTp : MessageError1Code;
		ErrDesc : ?Text;
		OthrMsgErrTp : ?Text;
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

	public type PartyType19Code = {
		#ACCP;
		#ACQP;
		#ACQR;
		#AGNT;
		#CISP;
		#CISS;
		#OTHN;
		#OTHP;
	};

	public type UserInterface8Code = {
		#DSPU;
		#FILE;
		#LOGF;
		#OTHN;
		#OTHP;
	};

	public type AdditionalInformation30 = {
		Tp : ?Text;
		Val : Text;
		Frmt : ?OutputFormat4Code;
		Lang : Text;
		Rcpt : ?PartyType19Code;
		Trgt : ?[UserInterface8Code];

	};

	public type ProcessingResult19 = {
		RspnSrc : ?ApprovalEntity2;
		RsltData : ResultData10;
		OrgnlRsltData : ?ResultData7;
		ErrDtl : ?[ErrorDetails2];

		AddtlInf : ?[AdditionalInformation30];

	};

	public type SupplementaryDataEnvelope1 = {
		any : Any;
	};

	public type SupplementaryData1 = {
		Envlp : SupplementaryDataEnvelope1;
		PlcAndNm : ?Text;
	};

	public type CardProgrammeMode3 = {
		Id : Text;
		Tp : ?Text;
		AddtlId : ?[AdditionalData1];

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

	public type SettlementService4 = {
		SttlmSvcApld : ?SettlementServiceMode1;
		AddtlSttlmInf : ?[AdditionalData1];

		SttlmRptgNtty : ?SettlementReportingEntity1;
		SttlmSvcDts : ?SettlementServiceDate2;
	};

	public type Jurisdiction2 = {
		DmstInd : ?Bool;
		DmstQlfctn : ?Text;
	};

	public type TransactionContext10 = {
		CardPrgrmmApld : ?CardProgrammeMode3;
		SttlmSvc : ?SettlementService4;
		Rcncltn : ?Reconciliation3;
		Jursdctn : ?Jurisdiction2;
		AddtlData : ?[AdditionalData1];

	};

	public type Context17 = {
		TxCntxt : ?TransactionContext10;
	};

	public type ReconciliationResponse7 = {
		Tx : Transaction135;
		PrtctdData : ?[ProtectedData1];

		Envt : Environment33;
		PrcgRslt : ProcessingResult19;
		SplmtryData : ?[SupplementaryData1];

		Cntxt : ?Context17;
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

	public type ReconciliationResponseV03 = {
		Hdr : Header60;
		Body : ReconciliationResponse7;
		SctyTrlr : ?ContentInformationType20;
	};

}