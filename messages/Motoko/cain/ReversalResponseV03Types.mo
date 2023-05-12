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

	public type MessageFunction16Code = {
		#ADVC;
		#CAAD;
		#CANO;
		#NOTI;
		#REQU;
	};

	public type Header62 = {
		InitgPty : GenericIdentification183;
		TracData : ?[AdditionalData1];

		Tracblt : ?[Traceability9];

		XchgId : ?Text;
		RcptPty : ?GenericIdentification183;
		ReTrnsmssnCntr : ?Text;
		CreDtTm : Int;
		PrtcolVrsn : Text;
		BtchMgmtInf : ?BatchManagementInformation1;
		MsgFctn : MessageFunction16Code;
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

	public type LifeCycleSupport1Code = {
		#AUTH;
		#FINC;
	};

	public type TransactionLifeCycleIdentification1 = {
		Id : Text;
		PresntmntSeqNb : ?Text;
		PresntmntSeqCnt : ?Text;
		AuthntcnTkn : ?Text;
		AuthstnSeqNb : ?Text;
	};

	public type MessageClass1Code = {
		#ADDE;
		#AMDT;
		#AUTH;
		#CBCK;
		#CMGT;
		#FEEC;
		#FINL;
		#INQY;
		#VERI;
	};

	public type OriginalDataElements2 = {
		LclDt : ?Int;
		LclTm : ?Int;
		TxTp : ?Text;
		AcqrrRefNb : ?Text;
		AcqrrRefData : ?Text;
		CardIssrRefData : ?Text;
		LifeCyclSpprt : ?LifeCycleSupport1Code;
		RtrvlRefNb : ?Text;
		AcqrrId : ?Text;
		TmZone : ?Text;
		TxRef : ?Text;
		LifeCyclTracIdData : ?TransactionLifeCycleIdentification1;
		SndrId : ?Text;
		TrnsmssnDtTm : ?Int;
		LifeCyclTracIdMssng : ?Text;
		MsgClss : ?MessageClass1Code;
		MsgFctn : ?MessageFunction16Code;
		SysTracAudtNb : ?Text;
	};

	public type TransactionIdentification51 = {
		LclDt : ?Int;
		LclTm : ?Int;
		AcqrrRefNb : ?Text;
		AcqrrRefData : ?Text;
		OrgnlDataElmts : ?OriginalDataElements2;
		CardIssrRefData : ?Text;
		LifeCyclSpprt : ?LifeCycleSupport1Code;
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

	public type Amount15 = {
		Amt : Float;
		Ccy : ?Text;
		FctvXchgRate : ?Float;
		ConvsDt : ?Int;
		ConvsTm : ?Int;
	};

	public type TypeOfAmount22Code = {
		#ACTL;
		#DFLT;
		#DPST;
		#ESTM;
		#MAXI;
		#PRXY;
		#RESD;
	};

	public type TransactionAmount1 = {
		Amt : Float;
		Ccy : Text;
	};

	public type OriginalTransactionAmount2 = {
		RcncltnAmt : ?Amount15;
		AmtQlfr : ?TypeOfAmount22Code;
		CrdhldrBllgAmt : ?Amount15;
		TxAmt : TransactionAmount1;
	};

	public type DetailedAmount22 = {
		Tp : Text;
		Amt : Float;
		RcncltnAmt : ?Float;
		Desc : ?Text;
		CrdhldrBllgAmt : ?Float;
		OthrTp : ?Text;
		CdtDbt : ?CreditDebit3Code;
	};

	public type TransactionAmounts2 = {
		RcncltnAmt : ?Amount15;
		AmtQlfr : ?TypeOfAmount22Code;
		OrgnlTxAmts : ?OriginalTransactionAmount2;
		CrdhldrBllgAmt : ?Amount15;
		TxAmt : TransactionAmount1;
		DtldAmt : ?[DetailedAmount22];

	};

	public type TransactionAttribute2Code = {
		#AGGR;
		#CADB;
		#CPLT;
		#DBRC;
		#DBRP;
		#DFRD;
		#FRCP;
		#INCR;
		#INST;
		#OTHN;
		#OTHP;
		#PACP;
		#PAUT;
		#PPYT;
		#RCPT;
		#SUBR;
		#TPUP;
		#UCOF;
	};

	public type Transaction137 = {
		OrgnlAddtlFee : ?[AdditionalFee2];

		TxId : TransactionIdentification51;
		TxTp : Text;
		AcctFr : ?AccountDetails3;
		AcctTo : ?AccountDetails3;
		OthrTxAttr : ?Text;
		SpclPrgrmmQlfctn : ?[SpecialProgrammeQualification1];

		TxSubTp : ?Text;
		AddtlAmt : ?[AdditionalAmounts3];

		AddtlFee : ?[AdditionalFee2];

		AddtlSvc : ?[AdditionalService2];

		TxAmts : TransactionAmounts2;
		TxAttr : ?TransactionAttribute2Code;
		TxDesc : ?Text;
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

	public type TerminalIdentification3 = {
		Id : Text;
		Ctry : ?Text;
		ShrtNm : ?Text;
		Assgnr : ?Text;
	};

	public type Terminal6 = {
		TermnlId : TerminalIdentification3;
	};

	public type CardData10 = {
		PAN : ?Text;
		PmtAcctRef : ?Text;
		PANAcctRg : ?Text;
		PrtctdPANInd : ?Bool;
		CardSeqNb : ?Text;
		CardPrtflIdr : ?Text;
		AddtlCardData : ?[AdditionalData1];

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

	public type PartyIdentification258 = {
		Id : Text;
		Ctry : ?Text;
		LglCorpNm : ?Text;
		LclData : ?LocalData1;
		ShrtNm : ?Text;
		AddtlId : ?AdditionalData1;
		Assgnr : ?Text;
	};

	public type Environment29 = {
		Tkn : ?Token2;
		Termnl : ?Terminal6;
		Card : CardData10;
		Dstn : ?PartyIdentification263;
		Issr : ?PartyIdentification263;
		Rcvr : ?PartyIdentification263;
		Sndr : ?PartyIdentification263;
		Accptr : ?PartyIdentification258;
		Acqrr : PartyIdentification263;
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

	public type ProcessingResult10 = {
		RspnSrc : ?ApprovalEntity2;
		RsltData : ResultData7;
		Actn : ?[Action13];

		OrgnlRsltData : ?ResultData7;
		ApprvlCd : ?Text;
		ErrDtl : ?ErrorDetails2;
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

	public type FeeCollectionInitiator1Code = {
		#ACQR;
		#AGNT;
		#CISS;
		#OTHN;
		#OTHP;
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

	public type Reconciliation3 = {
		Dt : ?Int;
		Id : ?Text;
		ChckptRef : ?Text;
	};

	public type Jurisdiction2 = {
		DmstInd : ?Bool;
		DmstQlfctn : ?Text;
	};

	public type TransactionInitiator1Code = {
		#CUST;
		#MERC;
	};

	public type TransactionContext8 = {
		ReauthstnInd : ?Bool;
		FeeColltnInitr : ?FeeCollectionInitiator1Code;
		CardPrgrmmApld : ?CardProgrammeMode3;
		DelydChrgsInd : ?Bool;
		SttlmSvc : ?SettlementService4;
		NoShowInd : ?Bool;
		MrchntCtgyCd : ?Text;
		Rcncltn : ?Reconciliation3;
		ReSubmissnInd : ?Bool;
		Jursdctn : ?Jurisdiction2;
		MrchntCtgySpcfcData : ?Text;
		AddtlData : ?[AdditionalData1];

		TxInitr : ?TransactionInitiator1Code;
		PrtlShipmntInd : ?Bool;
	};

	public type ReversalResponse4 = {
		Tx : Transaction137;
		PrtctdData : ?[ProtectedData1];

		Envt : Environment29;
		ICCRltdData : ?Text;
		PrcgRslt : ProcessingResult10;
		SplmtryData : ?[SupplementaryData1];

		Cntxt : TransactionContext8;
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

	public type ReversalResponseV03 = {
		Hdr : Header62;
		Body : ReversalResponse4;
		SctyTrlr : ?ContentInformationType20;
	};

}