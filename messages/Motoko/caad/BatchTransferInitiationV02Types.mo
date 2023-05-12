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

	public type ClearingMethod2Code = {
		#DAYC;
		#DFRD;
		#INST;
		#OTHN;
		#OTHP;
		#RLTM;
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

	public type ClearingTotals2 = {
		Cnt : Float;
		AcmltdAmt : Amount17;
	};

	public type ClearingBatchData2 = {
		ClrMtd : ClearingMethod2Code;
		AgtFee : ?Amount17;
		IntrchngFee : ?Amount17;
		ClrDt : ?Int;
		ClrPrty : ?Text;
		ClrTtls : ?ClearingTotals2;
		OthrClrMtd : ?Text;
	};

	public type Destination1 = {
		Id : Text;
		Ctry : ?Text;
		ShrtNm : ?Text;
		Assgnr : ?Text;
	};

	public type OtherAmount4 = {
		ClrAmt : Amount17;
		ClrCnt : Float;
		AgtFee : ?Amount17;
		IntrchngFee : ?Amount17;
	};

	public type Originator1 = {
		Id : Text;
		Ctry : ?Text;
		ShrtNm : ?Text;
		Assgnr : ?Text;
	};

	public type ClearingRecordData2 = {
		Dstn : ?Destination1;
		ClrAmt : ?Amount17;
		ClrMtd : ClearingMethod2Code;
		OthrAmt : ?OtherAmount4;
		AgtFee : ?Amount17;
		IntrchngFee : ?Amount17;
		Orgtr : ?Originator1;
		ClrDt : ?Int;
		ClrPrty : ?Text;
		OthrClrMtd : ?Text;
	};

	public type RecordMessage1Choice = {
		Err : ?[byte[]];

		Amdmnt : ?[byte[]];

		KeyXchgInitn : ?[byte[]];

		AuthstnRspn : ?[byte[]];

		FeeColltnInitn : ?[byte[]];

		FileActnInitn : ?[byte[]];

		AdddmRspn : ?[byte[]];

		RvslInitn : ?[byte[]];

		SttlmRptgRspn : ?[byte[]];

		FrdDspstnRspn : ?[byte[]];

		KeyXchgRspn : ?[byte[]];

		NtwkMgmtInitn : ?[byte[]];

		VrfctnInitn : ?[byte[]];

		NqryRspn : ?[byte[]];

		FeeColltnRspn : ?[byte[]];

		AuthstnInitn : ?[byte[]];

		RtrvlInitn : ?[byte[]];

		VrfctnRspn : ?[byte[]];

		RcncltnInitn : ?[byte[]];

		FrdRptgInitn : ?[byte[]];

		RtrvlFlfmtInitn : ?[byte[]];

		NtwkMgmtRspn : ?[byte[]];

		CardMgmtInitn : ?[byte[]];

		RtrvlRspn : ?[byte[]];

		CardMgmtRspn : ?[byte[]];

		FrdRptgRspn : ?[byte[]];

		SttlmRptgInitn : ?[byte[]];

		AdddmInitn : ?[byte[]];

		FrdDspstnInitn : ?[byte[]];

		FileActnRspn : ?[byte[]];

		RtrvlFlfmtRspn : ?[byte[]];

		NqryInitn : ?[byte[]];

		RvslRspn : ?[byte[]];

		RcncltnRspn : ?[byte[]];

		FinRspn : ?[byte[]];

		ChrgBckRspn : ?[byte[]];

		ChrgBckInitn : ?[byte[]];

		FinInitn : ?[byte[]];

	};

	public type Record2 = {
		SeqCntr : Float;
		RcrdChcksmInptVal : ?[byte[]];

		ClrRcrdData : ?ClearingRecordData2;
		RcrdMsg : RecordMessage1Choice;
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

	public type ClearingControlTotals2 = {
		ClrCtrlAmt : Amount17;
		ClrCtrlCnt : Float;
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

	public type PartyType23Code = {
		#CLRA;
		#OTHN;
		#OTHP;
	};

	public type UserInterface7Code = {
		#CLRA;
		#CLRL;
		#OCAI;
	};

	public type AdditionalInformation21 = {
		Val : Text;
		Frmt : ?OutputFormat4Code;
		Rcpt : ?PartyType23Code;
		Trgt : ?[UserInterface7Code];

	};

	public type Transaction141 = {
		ClrBtchData : ?[ClearingBatchData2];

		BtchChcksm : ?[byte[]];

		Rcrd : ?[Record2];

		TxId : ?TransactionIdentification12;
		ReqAck : ?Bool;
		BtchId : ?Text;
		ClrCtrlTtls : ?ClearingControlTotals2;
		AgtData : ?[AdditionalInformation21];

		OrgnlBtchId : ?Text;
		NbOfMsgs : ?Float;
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

	public type Environment4 = {
		Dstn : Destination1;
		Orgtr : ?Originator1;
	};

	public type Response6Code = {
		#OTHN;
		#OTHP;
		#PPRC;
		#PRCS;
		#REJT;
		#TECH;
		#UNPR;
		#UNRV;
	};

	public type ResultData8 = {
		RsltDtls : Text;
		Rslt : ?Response6Code;
		AddtlRsltInf : ?[AdditionalData1];

		OthrRsltDtls : ?Text;
		OthrRslt : ?Text;
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

	public type ProcessingResult20 = {
		RsltData : ResultData8;
		OrgnlRsltData : ?ResultData7;
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

	public type Reconciliation3 = {
		Dt : ?Int;
		Id : ?Text;
		ChckptRef : ?Text;
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

	public type BatchTransferInitiation2 = {
		Tx : Transaction141;
		PrtctdData : ?[ProtectedData1];

		Envt : Environment4;
		PrcgRslt : ?ProcessingResult20;
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

	public type BatchTransferInitiationV02 = {
		Hdr : Header60;
		Body : BatchTransferInitiation2;
		SctyTrlr : ?ContentInformationType20;
	};

}