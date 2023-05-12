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

	public type MessageFunction29Code = {
		#ADVC;
		#NOTI;
	};

	public type Header66 = {
		InitgPty : GenericIdentification183;
		TracData : ?[AdditionalData1];

		Tracblt : ?[Traceability9];

		XchgId : ?Text;
		RcptPty : ?GenericIdentification183;
		ReTrnsmssnCntr : ?Text;
		CreDtTm : Int;
		PrtcolVrsn : Text;
		BtchMgmtInf : ?BatchManagementInformation1;
		MsgFctn : MessageFunction29Code;
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

	public type MessageFunction16Code = {
		#ADVC;
		#CAAD;
		#CANO;
		#NOTI;
		#REQU;
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

	public type PartyType32Code = {
		#ACQR;
		#AGNT;
		#ISUR;
		#OTHN;
		#OTHP;
	};

	public type FeeCollectionIdentification1 = {
		Id : Text;
		Tp : ?Text;
	};

	public type FeeCollectionReference1 = {
		OthrAssgnrNtty : ?Text;
		AssgnrNtty : ?PartyType32Code;
		FeeColltnId : [FeeCollectionIdentification1];
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

	public type Transaction156 = {
		AltrnMsgRsn : ?[Text];

		CxlInd : ?Bool;
		FeeColltnCycl : ?Text;
		TxId : TransactionIdentification51;
		TxTp : Text;
		MsgRsn : ?[Text];

		FeeColltnRef : ?FeeCollectionReference1;
		SpclPrgrmmQlfctn : ?[SpecialProgrammeQualification1];

		TxSubTp : ?Text;
		AddtlAmt : ?[AdditionalAmounts3];

		AddtlFee : ?[AdditionalFee2];

		TxAmts : TransactionAmounts2;
		AddtlData : ?[AdditionalData1];

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

	public type CardData2 = {
		PAN : ?Text;
		PmtAcctRef : ?Text;
		CardSeqNb : ?Text;
		CardPrtflIdr : ?Text;
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

	public type Environment23 = {
		Tkn : ?Token2;
		Card : ?CardData2;
		Dstn : ?PartyIdentification263;
		Issr : ?PartyIdentification263;
		Rcvr : ?PartyIdentification263;
		Sndr : ?PartyIdentification263;
		Accptr : ?PartyIdentification255;
		Acqrr : ?PartyIdentification263;
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

	public type Context16 = {
		TxCntxt : ?TransactionContext8;
	};

	public type FeeCollectionResponse2 = {
		Tx : Transaction156;
		Envt : Environment23;
		PrcgRslt : ProcessingResult19;
		SplmtryData : ?[SupplementaryData1];

		Cntxt : ?Context16;
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

	public type FeeCollectionResponseV02 = {
		Hdr : Header66;
		Body : FeeCollectionResponse2;
		SctyTrlr : ?ContentInformationType20;
	};

}