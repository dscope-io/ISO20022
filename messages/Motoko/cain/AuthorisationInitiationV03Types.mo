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

	public type CardDepositType1Code = {
		#CASH;
		#CHEC;
		#ENVL;
		#OTHN;
		#OTHP;
	};

	public type Amount16 = {
		Amt : Float;
		CdtDbt : ?CreditDebit3Code;
	};

	public type DepositDetails2 = {
		Tp : CardDepositType1Code;
		Amt : ?Amount16;
		OthrTp : ?Text;
	};

	public type SpecialProgrammeDetails1 = {
		Nm : ?Text;
		Val : ?Text;
	};

	public type SpecialProgrammeQualification1 = {
		Dtl : ?[SpecialProgrammeDetails1];

		Prgrmm : ?Text;
	};

	public type DisputeIdentification1 = {
		Id : Text;
		Tp : ?Text;
	};

	public type PartyType32Code = {
		#ACQR;
		#AGNT;
		#ISUR;
		#OTHN;
		#OTHP;
	};

	public type DisputeReference1 = {
		OthrAssgnrNtty : ?Text;
		DsptId : [DisputeIdentification1];
		AssgnrNtty : ?PartyType32Code;
	};

	public type DisputeData3 = {
		PrtlDspt : ?Bool;
		DcmnttnSts : ?Text;
		ChrgbckElgblty : ?Text;
		AddtlDsptData : ?AdditionalData1;
		PresntmntCycl : ?Text;
		DsptCond : ?Text;
		DsptRef : ?[DisputeReference1];

		DsptSts : ?Text;
		DsptRjctRsn : ?[Text];

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

	public type FundingSourceType2Code = {
		#CASH;
		#CDBT;
		#CHQE;
		#CRDT;
		#CURR;
		#DBAC;
		#EPRS;
		#LCDT;
		#LOYL;
		#OTHN;
		#OTHP;
		#PRPD;
		#SVNG;
		#UVRL;
	};

	public type FundingSource2 = {
		Ref : ?Text;
		SrcTp : ?FundingSourceType2Code;
		OthrSrcTp : ?Text;
	};

	public type TransferService2 = {
		Ref : ?Text;
		SvcNm : ?Text;
		BizPurp : ?Text;
		Desc : ?Text;
		SvcPrvdr : ?Text;
	};

	public type ClaimInformation1 = {
		Assgnr : ?Text;
		ClmCrdntls : ?Text;
	};

	public type FundingService2 = {
		FndgSrc : ?[FundingSource2];

		FndgSvc : ?TransferService2;
		ClmInf : ?ClaimInformation1;
	};

	public type Transaction142 = {
		AltrnMsgRsn : ?[Text];

		OrgnlAddtlFee : ?[AdditionalFee2];

		TxId : TransactionIdentification51;
		TxTp : Text;
		AcctFr : ?AccountDetails3;
		AcctTo : ?AccountDetails3;
		MsgRsn : ?[Text];

		DpstDtls : ?[DepositDetails2];

		AssoctdDataInd : ?Bool;
		AssoctdDataRef : ?Text;
		PreAuthstnTmLmt : ?Text;
		OthrTxAttr : ?Text;
		SpclPrgrmmQlfctn : ?[SpecialProgrammeQualification1];

		DsptData : ?[DisputeData3];

		TxSubTp : ?Text;
		AddtlAmt : ?[AdditionalAmounts3];

		AddtlFee : ?[AdditionalFee2];

		AddtlSvc : ?[AdditionalService2];

		AssoctdDataDstn : ?Text;
		TxAmts : TransactionAmounts2;
		TxAttr : ?TransactionAttribute2Code;
		TxDesc : ?Text;
		AddtlData : ?[AdditionalData1];

		FndsSvcs : ?FundingService2;
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

	public type Destination3 = {
		Adr : ?Address2;
		NmAndLctn : ?Text;
	};

	public type HiredVehicle2 = {
		DrvrId : ?Text;
		Dstn : ?Destination3;
		TpOfVhcl : ?Text;
		VhclId : ?Text;
		CpnyNm : ?Text;
		CpnyTp : ?Text;
		DrvrTaxId : ?Text;
	};

	public type AddendumTaxType2Code = {
		#ALMI;
		#ASNT;
		#BPTX;
		#CITX;
		#COAX;
		#CORT;
		#COTX;
		#COUN;
		#CPST;
		#CRTX;
		#CSTX;
		#CTAX;
		#CUST;
		#DLTX;
		#DUTY;
		#EMET;
		#EMIT;
		#EMRT;
		#EMST;
		#EMUT;
		#ENTX;
		#ENVT;
		#EQTX;
		#EQUL;
		#ESET;
		#EUTR;
		#EXEC;
		#FETX;
		#FEXT;
		#FICA;
		#FIMT;
		#FLST;
		#FNST;
		#FRTX;
		#FSFT;
		#FSST;
		#FSTX;
		#FUVT;
		#FVAT;
		#FVTS;
		#GCAT;
		#GIFT;
		#GRTX;
		#HATX;
		#HSTX;
		#HVAT;
		#HWTX;
		#INHT;
		#INPO;
		#KAPA;
		#LEVY;
		#LITX;
		#LOCL;
		#LOCO;
		#LSTX;
		#LTTX;
		#LUTX;
		#MATX;
		#METX;
		#MITX;
		#MUDE;
		#MUTX;
		#NATI;
		#NKAP;
		#OCTX;
		#OPTX;
		#OTHN;
		#OTHP;
		#OTHR;
		#OTTX;
		#PHET;
		#POTX;
		#PPTX;
		#PROV;
		#PRTX;
		#PSTX;
		#QUST;
		#RCSB;
		#RCSD;
		#ROCI;
		#ROTX;
		#ROVI;
		#RVAT;
		#SAUT;
		#SCTX;
		#SETX;
		#SLST;
		#SLTX;
		#SPFT;
		#SPTG;
		#SPTS;
		#SPTX;
		#SRTX;
		#SSTX;
		#STAM;
		#STAT;
		#STEX;
		#STPT;
		#STSL;
		#STTA;
		#SUTX;
		#TDDT;
		#TELT;
		#THTX;
		#TNRT;
		#TOTL;
		#TRAN;
		#TRAX;
		#UNSP;
		#UUTX;
		#VATA;
		#VATB;
		#WESV;
		#WITF;
		#WITH;
		#WITL;
		#WTAX;
	};

	public type Tax39 = {
		Tp : AddendumTaxType2Code;
		Amt : Float;
		Desc : ?Text;
		Rate : ?Float;
		InclInTtlInd : ?Bool;
		TaxXmptn : ?Bool;
		TaxXmptRsn : ?Text;
		OthrTp : ?Text;
		CdtDbt : ?CreditDebit3Code;
	};

	public type AncillaryPurchase2 = {
		Amt : ?Amount16;
		Fee : ?Float;
		Tax : ?[Tax39];

		SvcPrvdrSvcTp : ?Text;
		CdtRsnCd : ?Text;
		SummryCmmdtyId : ?Text;
		SvcSubCtgyCd : ?Text;
		SvcCtgyCd : ?Text;
		AddtlData : ?Text;
		AncllryDocNb : ?Text;
		RltdDocNb : ?Text;
	};

	public type CustomerReference1 = {
		Id : ?Text;
		Dtl : ?Text;
	};

	public type ReservationDetails3 = {
		Sys : ?Text;
		RsvatnNb : ?Text;
		OrgnlRsvatnNb : ?Text;
		OrgnlSys : ?Text;
	};

	public type PartyIdentification208 = {
		Id : Text;
		Tp : Text;
		Assgnr : ?Text;
		OthrTp : ?Text;
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

	public type Customer8 = {
		Id : PartyIdentification208;
		Nm : ?Text;
		Adr : ?Address2;
		Age : ?Text;
		CstmrFileRefNb : ?Text;
		Ctct : ?Contact6;
	};

	public type LoyaltyProgramme2 = {
		PrgrmmTp : ?Text;
		PtcptId : ?Text;
		PrgmId : ?Text;
	};

	public type TypeOfAmount20Code = {
		#AMTH;
		#BAGG;
		#CARG;
		#CHTC;
		#CLUB;
		#DUTY;
		#EXTF;
		#EXTK;
		#EXTR;
		#FARE;
		#FDBV;
		#INSU;
		#MISC;
		#OTHN;
		#OTHP;
		#PETC;
		#PHNE;
		#PRPY;
		#TKDL;
		#TOTL;
		#TOUR;
		#UPGD;
	};

	public type AmountDetails2 = {
		Tp : ?TypeOfAmount20Code;
		Amt : Float;
		Tax : ?[Tax39];

		OthrTp : ?Text;
		CdtDbt : ?CreditDebit3Code;
	};

	public type DepartureOrArrival1 = {
		Dt : ?Int;
		Tm : ?Int;
		Desc : ?Text;
		Lctn : ?Text;
	};

	public type PassengerTransportSummary2 = {
		CstmrRef : ?[CustomerReference1];

		Drtn : ?Text;
		Rsvatn : ?ReservationDetails3;
		SummryCmmdtyId : ?Text;
		TrvlAuthstnCd : ?Text;
		OpnTcktInd : ?Bool;
		DocNb : ?Text;
		Pssngr : ?[Customer8];

		LltyPrgrmm : ?LoyaltyProgramme2;
		InsrncInd : ?Bool;
		TcktIssr : ?Text;
		TtlAmt : ?[AmountDetails2];

		Dprture : ?DepartureOrArrival1;
		AddtlData : ?Text;
	};

	public type DocumentReference1 = {
		Tp : ?Text;
		Ref : ?Text;
	};

	public type LocalData1 = {
		LglCorpNm : ?Text;
		Lang : Text;
		ShrtNm : ?Text;
		AddtlData : ?[AdditionalData1];

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

	public type Ticket2 = {
		TcktIsseDt : ?Int;
		Rstrctns : ?Text;
		RstrctdTcktInd : ?Bool;
		Rsvatn : ?ReservationDetails3;
		OpnTcktInd : ?Bool;
		XchgdTcktNb : ?Text;
		RcrdLctrNb : ?Text;
		TcktIssr : ?PartyIdentification258;
		TcktIsseLctn : ?Text;
		CnjnctnTcktNb : ?Text;
		TcktNb : ?Text;
		XchgdTcktInd : ?Bool;
	};

	public type TransportType1Code = {
		#AIRR;
		#BUSS;
		#OTHN;
		#OTHP;
		#RAIL;
		#SHIP;
	};

	public type CarrierIdentification1 = {
		Cd : ?Text;
		Nm : ?Text;
		IATACd : ?Text;
	};

	public type TripLeg2 = {
		Doc : ?[DocumentReference1];

		SeqNb : ?Text;
		CdtRsnCd : ?Text;
		CmmdtyCd : ?Text;
		Drtn : ?Text;
		Tckt : ?Ticket2;
		TrnsprtTp : ?TransportType1Code;
		FairBsisCd : ?Text;
		RouteNb : ?Text;
		TripLegAmt : ?[AmountDetails2];

		NonDrctRouteCd : ?Text;
		LltyPrgrmm : ?LoyaltyProgramme2;
		InsrncInd : ?Bool;
		OthrTrnsprtTp : ?Text;
		Arrvl : ?DepartureOrArrival1;
		Crrier : ?CarrierIdentification1;
		Dprture : ?DepartureOrArrival1;
		PrcdrId : ?Text;
		SvcClss : ?Text;
		PrcdrRef : ?Text;
		StopOverInd : ?Bool;
		AddtlData : ?Text;
	};

	public type PassengerTransport2 = {
		HirdVhclDtls : ?[HiredVehicle2];

		AncllryPurchs : ?[AncillaryPurchase2];

		Summry : ?PassengerTransportSummary2;
		TripLeg : ?[TripLeg2];

	};

	public type PartyIdentification260 = {
		Id : ?PartyIdentification258;
		Nm : ?Text;
		Adr : ?Address2;
		Ctct : ?Contact6;
		Instrs : ?Text;
	};

	public type Product7 = {
		SummryCmmdtyId : ?Text;
		PdctCd : ?Text;
	};

	public type UnitOfMeasure1Code = {
		#ACRE;
		#ARES;
		#CELI;
		#CMET;
		#FOOT;
		#GBGA;
		#GBOU;
		#GBPI;
		#GBQA;
		#GRAM;
		#HECT;
		#INCH;
		#KILO;
		#KMET;
		#LITR;
		#METR;
		#MILE;
		#MILI;
		#MMET;
		#PIEC;
		#PUND;
		#SCMT;
		#SMET;
		#SMIL;
		#SQFO;
		#SQIN;
		#SQKI;
		#SQMI;
		#SQYA;
		#TONS;
		#USGA;
		#USOU;
		#USPI;
		#USQA;
		#YARD;
	};

	public type UnitOfMeasure2 = {
		NbOfUnits : ?Float;
		UnitOfMeasr : ?UnitOfMeasure1Code;
		OthrUnitOfMeasr : ?Text;
	};

	public type DeliveryInformation4 = {
		Dt : ?Int;
		Tm : ?Int;
		Adr : ?Address2;
		DlvryNoteNb : ?Text;
		Ctct : ?Contact6;
		Instrs : ?Text;
	};

	public type ShippingPackage2 = {
		Spplr : ?PartyIdentification260;
		Pdct : ?[Product7];

		Wght : ?UnitOfMeasure2;
		PckpDt : ?Int;
		PckpTm : ?Int;
		Dlvry : ?DeliveryInformation4;
		TrckgNb : ?Text;
		InsrncAmt : ?Float;
		InsrncInd : ?Bool;
	};

	public type ShippingData2 = {
		Tax : ?[Tax39];

		MiscExpnss : ?Float;
		SvcDscrptrCd : ?Text;
		Packg : ?[ShippingPackage2];

		SummryCmmdtyId : ?Text;
		InvcCreDtTm : ?Int;
		InsrncAmt : ?Float;
		InsrncInd : ?Bool;
		IncntivAmt : ?Float;
		NetAmt : ?Float;
		NbOfPackgs : ?Text;
		InvcNb : ?Text;
		AddtlData : ?Text;
	};

	public type CarRentalActivity1Code = {
		#CARS;
		#GLBL;
		#INDV;
		#OTHN;
		#OTHP;
		#OTHR;
		#PETP;
	};

	public type Contact3 = {
		Email : ?Text;
		CntrlPhneNb : ?Text;
		Lang : ?Text;
		URLAdr : ?Text;
		FaxNb : ?Text;
		PrprtyPhneNb : ?Text;
		TollFreePhneNb : ?Text;
	};

	public type VehicleRentalCompany2 = {
		Id : ?PartyIdentification258;
		Nm : ?Text;
		Tp : ?CarRentalActivity1Code;
		Adr : ?Address2;
		Ctct : ?Contact3;
		Ctry : ?Text;
		OthrTp : ?Text;
	};

	public type UnitOfMeasure10Code = {
		#KMET;
		#MILE;
	};

	public type Distance1 = {
		UnitOfMeasr : ?UnitOfMeasure10Code;
		Rate : ?Float;
		TtlDstnc : ?Text;
		FreeDstnc : ?Text;
		OdmtrRtr : ?Text;
		OdmtrStart : ?Text;
	};

	public type Discount3 = {
		Tp : ?Text;
		Val : Text;
	};

	public type CardholderName3 = {
		Nm : ?Text;
		GvnNm : ?Text;
		LastNm : ?Text;
		MddlNm : ?Text;
	};

	public type LoyaltyValueType1Code = {
		#MILE;
		#MONE;
		#OTHR;
		#POIN;
		#PRIV;
	};

	public type LoyaltyMember2 = {
		Id : ?Text;
		Nm : ?CardholderName3;
		Adr : ?Address2;
		Bal : ?Text;
		XprtnDt : ?Int;
		OthrLltyValTp : ?Text;
		LltyVal : ?Text;
		LltyValTp : ?LoyaltyValueType1Code;
		MmbSts : ?Text;
		ValToCdt : ?Text;
		ValToDbt : ?Text;
	};

	public type LoyaltyProgramme3 = {
		PrgrmmIssr : ?Text;
		LltyMmb : ?LoyaltyMember2;
		PrgrmmElgbltyInd : ?[Bool];

	};

	public type Vehicle4 = {
		Mdl : ?Text;
		Clss : ?Text;
		Make : ?Text;
		RegnNb : ?Text;
	};

	public type CarRentalServiceType2Code = {
		#ADJM;
		#AUTH;
		#BAST;
		#CLEA;
		#DLVR;
		#DMGS;
		#DPOF;
		#ENTE;
		#EXDI;
		#EXDY;
		#EXHR;
		#EXTC;
		#FINE;
		#FUEL;
		#GARA;
		#GPSY;
		#INSU;
		#LATE;
		#LDIN;
		#LIIN;
		#MISC;
		#NAVI;
		#NOSH;
		#ONEW;
		#OTHN;
		#OTHP;
		#PARK;
		#PFIN;
		#PHON;
		#PRIN;
		#REGD;
		#SMOK;
		#TOLL;
		#TOWI;
	};

	public type Amount18 = {
		Tp : ?CarRentalServiceType2Code;
		Amt : ?Float;
		CstmrNtfdInd : ?Bool;
		OthrTp : ?Text;
		CdtDbt : ?CreditDebit3Code;
	};

	public type Contact2 = {
		Nm : ?Text;
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

	public type JourneyType1Code = {
		#COAC;
		#EARL;
		#FLGT;
		#LATE;
		#ONTM;
		#OTHR;
		#TRAN;
		#VESS;
	};

	public type JourneyInformation1 = {
		DtAndTm : ?Int;
		JrnyTp : ?JourneyType1Code;
		JrnyData : ?Text;
	};

	public type TimeSegment1Code = {
		#AMBN;
		#PMAN;
	};

	public type ServiceStartEnd2 = {
		Adr : ?Address2;
		DtAndTm : ?Int;
		Ctct : ?Contact2;
		Lctn : ?Text;
		JrnyInf : ?JourneyInformation1;
		TmSgmt : ?TimeSegment1Code;
		LctnCd : ?Text;
	};

	public type PeriodUnit2Code = {
		#DAYS;
		#HFDA;
		#HOUR;
		#MINU;
		#MNTH;
		#OTHR;
		#WEEK;
		#YEAR;
	};

	public type RentalDetails2 = {
		Ccy : ?Text;
		RntlStart : ?ServiceStartEnd2;
		RntlRtr : ?ServiceStartEnd2;
		RntlId : ?Text;
		RntlTmPrd : ?[PeriodUnit2Code];

		RntlDtTm : ?Int;
		TmPrdRate : ?Float;
		TmPrdUnit : ?Text;
	};

	public type PeriodUnit3Code = {
		#DAYS;
		#EXDY;
		#MNTH;
		#OTHN;
		#OTHP;
		#WEEK;
		#YEAR;
	};

	public type RentalRate1 = {
		Prd : ?PeriodUnit3Code;
		Rate : ?Float;
		OthrPrd : ?Text;
		PrdCnt : ?Text;
	};

	public type VehicleRentalAgreement2 = {
		EstmtdTax : ?[Tax39];

		ChckOutDt : ?Int;
		ChckOutTm : ?Int;
		AdjstdInd : ?Bool;
		VhclRegnNb : ?Text;
		Drtn : ?Text;
		ChckInDt : ?Int;
		ChckInTm : ?Int;
		PckpLctn : ?[Address2];

		TrvlDstnc : ?Distance1;
		DscntPrgrmm : ?[Discount3];

		RtrLctn : ?Address2;
		LltyPrgrmm : ?[LoyaltyProgramme3];

		InsrncInd : ?Bool;
		AgrmtNb : ?Text;
		VhclClssDtls : ?Vehicle4;
		AddtlAmt : ?[Amount18];

		RntlDtls : ?RentalDetails2;
		RntlLctn : ?Address2;
		RntlRate : ?[RentalRate1];

	};

	public type OfficialDocumentType1Code = {
		#ARNU;
		#AUTH;
		#DIPL;
		#DVLC;
		#EURO;
		#IDEN;
		#INPO;
		#INTE;
		#LZPR;
		#OTHN;
		#OTHP;
		#PASS;
		#PERM;
		#REFU;
		#VISA;
	};

	public type PresentationMedium2Code = {
		#BIOM;
		#BOTH;
		#ELEC;
		#PAPR;
	};

	public type TravelDocument2 = {
		Id : Text;
		Tp : OfficialDocumentType1Code;
		XprtnDt : ?Int;
		Ctry : ?Text;
		Form : ?PresentationMedium2Code;
		IssncDt : ?Int;
		Assgnr : ?Text;
	};

	public type LegalStructure1Code = {
		#CNTY;
		#MUNI;
		#NATI;
		#PVIN;
		#STAE;
	};

	public type DrivingLicense2 = {
		Id : Text;
		Tp : ?Text;
		XprtnDt : ?Int;
		Ctry : ?Text;
		Form : ?PresentationMedium2Code;
		Prvc : ?Text;
		Stat : ?Text;
		IssncDt : ?Int;
		OthrAuthrty : ?Text;
		Assgnr : ?LegalStructure1Code;
	};

	public type DriverInParty2 = {
		Nm : ?Text;
		Adr : ?Address2;
		Age : ?Text;
		Ctct : ?Contact6;
		DrvrCrdntl : ?[TravelDocument2];

		DrvgLic : ?DrivingLicense2;
		DtOfBirth : ?Int;
	};

	public type CustomerAssigner1Code = {
		#AUTH;
		#CRCY;
		#CUST;
		#ONFL;
		#OTHR;
		#TRAY;
	};

	public type VehicleRentalCustomer2 = {
		PmryDrvr : ?[DriverInParty2];

		CorpIdr : Text;
		RntrNm : Text;
		Assgnr : ?CustomerAssigner1Code;
		LltyPrgrmm : ?LoyaltyProgramme2;
		AddtlDrvr : ?[DriverInParty2];

		CorpNm : ?Text;
	};

	public type VehicleRentalInvoice2 = {
		Tax : ?[Tax39];

		ChckOutDt : ?Int;
		ChckOutTm : ?Int;
		AdjstdInd : ?Bool;
		Drtn : ?Text;
		ChckInDt : ?Int;
		ChckInTm : ?Int;
		SummryCmmdtyId : ?Text;
		NoShowInd : ?Bool;
		VhclClssInvcd : ?Vehicle4;
		VhclClssPrvdd : ?Vehicle4;
		TrvlDstnc : ?Distance1;
		RtrLctn : ?Address2;
		InsrncInd : ?Bool;
		AddtlAmt : ?[Amount18];

		RntlChrg : ?[RentalRate1];

	};

	public type VehicleRentalService2 = {
		SummryCmmdtyId : ?Text;
		VhclRntlCpny : ?VehicleRentalCompany2;
		RntlAgrmt : ?VehicleRentalAgreement2;
		Cstmr : ?VehicleRentalCustomer2;
		AddtlData : ?Text;
		RntlInvc : ?VehicleRentalInvoice2;
	};

	public type Amount19 = {
		Amt : Float;
		Tax : ?[Tax39];

		Desc : ?Text;
		CdtDbt : ?CreditDebit3Code;
	};

	public type Customer6 = {
		Nm : ?Text;
		PhneNb : ?Text;
		AcctNb : ?Text;
	};

	public type TelecomServicesSummary2 = {
		BllgStmtPrdStart : ?Int;
		BllgStmtPrdEnd : ?Int;
		BllgEvt : ?[Amount19];

		TtlTax : ?[Tax39];

		Cstmr : ?Customer6;
		AddtlData : ?Text;
	};

	public type TypeOfAmount19Code = {
		#CONN;
		#INSU;
		#LNDS;
		#MISC;
		#OTHN;
		#OTHP;
		#USGE;
	};

	public type Amount20 = {
		Amt : Float;
		OthrTpOfChrg : ?Text;
		TpOfChrg : ?TypeOfAmount19Code;
		CdtDbt : ?CreditDebit3Code;
	};

	public type TelephonyCallType1Code = {
		#ICPC;
		#OGPC;
		#OTCL;
		#OTHN;
		#OTHP;
		#PAGE;
		#TFPC;
		#VCML;
	};

	public type TelecomCallDetails2 = {
		Tp : ?TelephonyCallType1Code;
		PhneNb : ?Text;
		City : ?Text;
		Ctry : ?Text;
		Prvc : ?Text;
		Stat : ?Text;
		OthrTp : ?Text;
	};

	public type TelecomServicesLineItem2 = {
		Chrg : ?[Amount20];

		Desc : ?Text;
		Drtn : ?Int;
		StartDtTm : ?Int;
		TmPrd : ?Text;
		TtlAmt : ?Float;
		TtlTax : ?[Tax39];

		AddtlData : ?Text;
		CallFr : ?TelecomCallDetails2;
		CallTo : ?TelecomCallDetails2;
	};

	public type TelecomServices2 = {
		Summry : ?TelecomServicesSummary2;
		LineItm : ?[TelecomServicesLineItem2];

	};

	public type AdditionalIdentificationType1Code = {
		#ATNU;
		#ICSN;
		#OTHN;
		#OTHP;
	};

	public type AdditionalIdentification1 = {
		Tp : AdditionalIdentificationType1Code;
		Val : Text;
		OthrTp : ?Text;
	};

	public type CorporateTaxType1Code = {
		#CORP;
		#OTHR;
		#SMBS;
	};

	public type AdditionalCharacteristicDetails1 = {
		Tp : Text;
		PrvddBy : ?Text;
	};

	public type AdditionalCharacteristics1 = {
		Certfctn : ?AdditionalCharacteristicDetails1;
		OwnrEthncty : ?AdditionalCharacteristicDetails1;
		Ownr : ?AdditionalCharacteristicDetails1;
		BizTp : ?AdditionalCharacteristicDetails1;
	};

	public type AdditionalAcceptorData1 = {
		AddtlId : ?[AdditionalIdentification1];

		TaxRegnId : ?Text;
		CorpTaxIdTp : ?CorporateTaxType1Code;
		AddtlInf : ?Text;
		CorpTaxId : ?Text;
		AddtlTxRefNb : ?Text;
		Chrtcs : ?AdditionalCharacteristics1;
	};

	public type PartyIdentification259 = {
		Id : ?PartyIdentification258;
		Nm : ?Text;
		Adr : ?Address2;
		Ctct : ?Contact3;
		TaxRegnId : ?Text;
		AddtlInf : ?Text;
	};

	public type TaxReclaimMethod1Code = {
		#INPP;
		#INPS;
		#INSU;
		#OTHR;
	};

	public type InvoiceSummary2 = {
		Sellr : ?PartyIdentification259;
		Buyr : ?PartyIdentification259;
		TaxRclmMtd : ?TaxReclaimMethod1Code;
		SummryCmmdtyId : ?Text;
		InvcCreDtTm : ?Int;
		FrghtAmt : ?Float;
		TaxTtl : ?[Tax39];

		InvcDt : ?Int;
		InvcNb : ?Text;
		AddtlData : ?Text;
	};

	public type Adjustment12 = {
		Amt : Float;
		Rsn : ?Text;
		CdtDbt : ?CreditDebit3Code;
	};

	public type InvoiceLineItem2 = {
		Dt : ?Int;
		Tax : ?[Tax39];

		UnitOfMeasr : ?UnitOfMeasure1Code;
		CtrctNb : ?Text;
		Desc : ?Text;
		ZeroCostToCstmrInd : ?Bool;
		UnqVATInvcRef : ?Text;
		PdctQty : ?Float;
		ShipToIndstryCd : ?Text;
		OrdrDt : ?Int;
		MdclSvcsInd : ?Bool;
		InsrncAmt : ?Float;
		InsrncInd : ?Bool;
		TtlAmt : ?Float;
		Adjstmnt : ?Adjustment12;
		CdtDbt : ?CreditDebit3Code;
		PdctQlfr : ?Text;
		PdctCd : ?Text;
		UnitPric : ?Float;
		ShppgDt : ?Int;
		OthrUnitOfMeasr : ?Text;
		RbllgInd : ?Bool;
		AddtlData : ?Text;
		TpOfSpply : ?Text;
	};

	public type Invoice2 = {
		Summry : ?InvoiceSummary2;
		LineItm : ?[InvoiceLineItem2];

	};

	public type AuthorisedAmount1 = {
		Amt : Float;
		DtTm : ?Int;
		AddtlData : ?Text;
	};

	public type LodgingRoom1 = {
		ChldrnInRoom : ?Text;
		AdltsInRoom : ?Text;
		BedTp : ?Text;
		GstsPerRoom : ?Text;
		RoomLctn : ?Text;
		DalyRoomRate : ?Float;
		RoomTp : ?Text;
	};

	public type DepartureOrArrival2 = {
		Dt : ?Int;
		Tm : ?Int;
		RouteNb : ?Text;
		CrrierCd : ?Text;
	};

	public type LodgingActivity1Code = {
		#APTM;
		#BEBR;
		#COTT;
		#CRUI;
		#HOME;
		#HOST;
		#HOTL;
		#LODG;
		#MOTL;
		#OTHN;
		#OTHP;
		#RESO;
		#ROAB;
		#TOSH;
	};

	public type Location4 = {
		Adr : ?Address2;
		Desc : ?Text;
		LclCcy : ?Text;
		LctnCd : ?Text;
		LctnNm : ?Text;
		LclTmZone : ?Text;
	};

	public type CompanyAssigner2Code = {
		#ASSO;
		#AUTH;
		#CPNY;
		#LEII;
		#OTHN;
		#OTHP;
		#TRAG;
	};

	public type LodgingProperty2 = {
		Id : PartyIdentification258;
		Nm : ?Text;
		Tp : ?LodgingActivity1Code;
		Ctct : ?Contact3;
		Ctry : ?Text;
		Lctn : ?Location4;
		FireSftyActInd : ?Bool;
		Assgnr : ?CompanyAssigner2Code;
		PrstgsPrprty : ?Text;
		OthrTp : ?Text;
	};

	public type LodgingSummary2 = {
		AuthrsdAmt : ?[AuthorisedAmount1];

		Drtn : ?Text;
		FolioNb : ?Text;
		Room : ?[LodgingRoom1];

		NbOfRooms : ?Text;
		SummryCmmdtyId : ?Text;
		NoShowInd : ?Bool;
		LltyPrgrmm : ?[LoyaltyProgramme2];

		InsrncAmt : ?Float;
		InsrncInd : ?Bool;
		TtlAmt : ?Float;
		TtlTax : ?[Tax39];

		Arrvl : ?DepartureOrArrival2;
		Dprture : ?DepartureOrArrival1;
		Cstmr : ?Customer8;
		AddtlData : ?Text;
		Prprty : ?LodgingProperty2;
	};

	public type LodgingService1Code = {
		#ACCO;
		#AUDI;
		#BANQ;
		#BREK;
		#BUSS;
		#CONC;
		#EARA;
		#EARD;
		#ENTR;
		#FCAA;
		#GAME;
		#GARA;
		#GIFT;
		#HEAL;
		#INTE;
		#LAUN;
		#LONG;
		#MINI;
		#NOSH;
		#OTHR;
		#PARK;
		#PHON;
		#REST;
		#RMSE;
		#SPAS;
		#THRD;
		#TRAN;
		#VODS;
	};

	public type LodgingLineItem2 = {
		Dt : ?Int;
		Tm : ?Int;
		Tp : ?LodgingService1Code;
		Tax : ?[Tax39];

		SubTtlAmt : ?Float;
		Drtn : ?Text;
		PstChckOutInd : ?Bool;
		UnitAmt : ?Float;
		OthrTp : ?Text;
		CdtDbt : ?CreditDebit3Code;
		AddtlData : ?Text;
	};

	public type Lodging3 = {
		Summry : ?LodgingSummary2;
		LineItm : ?[LodgingLineItem2];

	};

	public type Adjustment9 = {
		Tp : ?Text;
		Rsn : ?Text;
		Desc : ?Text;
		TaxClctdOnOrgnlAmt : ?Bool;
		Pctg : ?Float;
		AddtlTp : ?Text;
		PrmtnCd : ?Text;
		AdjstmntAmt : ?Float;
	};

	public type SaleSummary1 = {
		SummryCmmdtyId : ?Text;
		LltyPrgrmm : ?LoyaltyProgramme2;
		Adjstmnt : ?[Adjustment9];

	};

	public type Adjustment10 = {
		Tp : ?Text;
		Qty : ?Float;
		Rsn : ?Text;
		PrmtnCpnNb : ?Text;
		Desc : ?Text;
		TaxClctdOnOrgnlAmt : ?Bool;
		Pctg : ?Float;
		AddtlTp : ?Text;
		PrmtnCd : ?Text;
		UnitPric : ?Float;
		PrmtnElgblty : ?Bool;
		AdjstmntAmt : ?Float;
	};

	public type ProductCodeType1Code = {
		#EA13;
		#EAN8;
		#GTIN;
		#OTHR;
		#PLUP;
		#RS14;
		#UPCA;
		#UPCE;
	};

	public type SaleItem3 = {
		Tax : ?[Tax39];

		NonAdjstdTtlAmt : ?Float;
		UnitOfMeasr : ?UnitOfMeasure1Code;
		AdjstdAmt : ?Float;
		PdctQty : ?Float;
		PdctCdModfr : ?Float;
		NonAdjstdUnitPric : ?Float;
		AddtlPdctCd : ?Text;
		AddtlPdctCdTp : ?Text;
		InsrncAmt : ?Float;
		InsrncInd : ?Bool;
		TtlAmt : ?Float;
		Adjstmnt : ?[Adjustment10];

		PdctCdTp : ?ProductCodeType1Code;
		PdctDesc : ?Text;
		PdctCd : ?Text;
		PdctTp : ?Text;
		OthrUnitOfMeasr : ?Text;
	};

	public type Sale2 = {
		Summry : ?SaleSummary1;
		LineItm : ?[SaleItem3];

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

	public type PurchaseIdentifierType1Code = {
		#CONU;
		#CUOR;
		#CUPO;
		#FONU;
		#INNU;
		#ORNU;
		#OTHN;
		#OTHP;
		#PRNU;
		#PUID;
		#REAG;
		#RELO;
		#RENU;
		#RSNU;
		#SUIN;
		#SUOR;
		#TINU;
		#TNID;
		#TRNU;
	};

	public type TemporaryServicesJob1 = {
		StartDt : ?Int;
		EndDt : ?Int;
		Desc : ?Text;
		Drtn : ?Text;
		JobCd : ?Text;
	};

	public type Amount13 = {
		Tp : ?Text;
		Amt : Float;
		Desc : ?Text;
	};

	public type TemporaryServicesCharge1Code = {
		#HAZD;
		#HOLI;
		#NITE;
		#ONCL;
		#OTHN;
		#OTHP;
		#OVRT;
		#REGL;
		#WKND;
	};

	public type Amount12 = {
		Tp : ?TemporaryServicesCharge1Code;
		Hrs : ?Text;
		Rate : ?Float;
		OthrTp : ?Text;
	};

	public type TemporaryServicesLabor1 = {
		TmSheetNb : ?Text;
		Chrg : ?[Amount12];

		WkEndg : ?Text;
	};

	public type TemporaryServicesCompany2 = {
		Id : ?PartyIdentification258;
		Nm : ?Text;
		Dept : ?Text;
		Sprvsr : ?Text;
	};

	public type PartyIdentification210 = {
		Nm : ?Text;
		PrsnlId : ?Text;
		PrfssnlLvl : ?Text;
		MplyeeId : ?Text;
	};

	public type TemporaryServices2 = {
		Job : ?TemporaryServicesJob1;
		Tax : ?[Tax39];

		DscntAmt : ?Float;
		MiscExpnss : ?[Amount13];

		Labr : ?TemporaryServicesLabor1;
		CtrctgCpny : ?TemporaryServicesCompany2;
		SummryCmmdtyId : ?Text;
		FlatRateInd : ?Bool;
		TempMplyee : ?PartyIdentification210;
		AddtlData : ?Text;
		SbttlAmt : ?Float;
	};

	public type Driver2 = {
		Id : ?Text;
		Nm : ?Text;
		AddtlId : ?[TravelDocument2];

		MplyeeId : ?Text;
		Mplyr : ?Text;
		DeptNb : ?Text;
		DrvgLic : ?DrivingLicense2;
		DtOfBirth : ?Int;
		AddtlData : ?AdditionalData1;
	};

	public type OnBoardDiagnostics1 = {
		NgnLd : ?Text;
		NgnIdleTm : ?Float;
		NgnTtlIdleTm : ?Float;
		NgnOilTmprtr : ?Float;
		FuelEcnmy : ?Float;
		FuelTankLvlStart : ?Text;
		NgnOilLifeRmng : ?Text;
		RfrgrtnHrs : ?Float;
		CoolntTmprtr : ?Float;
		NgnOilPrssr : ?Text;
		BttryVltg : ?Text;
		RfrgrtnTmprtr : ?Float;
		FuelGaugeLvl : ?Text;
		NgnHrs : ?Float;
		NgnRPM : ?Text;
		HardBrakg : ?Text;
		NgnTtlTm : ?Float;
		HardAcclrtn : ?Text;
		ChckNgnWrngSts : ?Text;
	};

	public type CardDataReading5Code = {
		#BRCD;
		#CDFL;
		#CICC;
		#CTLS;
		#DFLE;
		#ECTL;
		#MGST;
		#PHYS;
		#TAGC;
	};

	public type Vehicle2 = {
		Tp : ?Text;
		Data : Text;
		NtryMd : ?CardDataReading5Code;
	};

	public type Vehicle5 = {
		VhclIdNb : ?Text;
		OnBrdDgnstcs : ?OnBoardDiagnostics1;
		TrlrNb : ?Text;
		VhclNb : ?Text;
		MntncId : ?Text;
		UnitNb : ?Text;
		SubFleetNb : ?Text;
		Hbmtr : ?Float;
		RplcmntVhclInd : ?Bool;
		Odmtr : ?Float;
		VhclTag : ?Text;
		AddtlVhclData : ?[Vehicle2];

		FleetNb : ?Text;
		VhclTagNtryMd : ?CardDataReading5Code;
	};

	public type PlainCardData21 = {
		DrvrOrVhclId : ?Text;
		AddtlCardData : ?[AdditionalData1];

	};

	public type AdditionalInformation19 = {
		NtrdDataAlphaNmrc : ?Text;
		NtrdDataNmrc : ?Text;
		AddtlData : ?Text;
	};

	public type LocationAmenity1Code = {
		#AADA;
		#AFLA;
		#AVLA;
		#CRWA;
		#CVSA;
		#DISA;
		#EWAA;
		#MRLA;
		#OTHN;
		#OTHP;
		#PAPA;
		#TFHA;
		#TSHA;
		#TSRA;
		#TSSA;
		#VHPA;
		#VMRA;
		#VSWA;
	};

	public type LocalAmenity1 = {
		Tp : LocationAmenity1Code;
		AvlblInd : ?Bool;
		OthrTp : ?Text;
	};

	public type TripInformation1 = {
		TripNb : ?Text;
		DlvryTcktNb : ?Text;
		InvcNb : ?Text;
		BllgId : ?Text;
		WorkOrdr : ?Text;
		CtrlNb : ?Text;
		JobNb : ?Text;
	};

	public type FleetDiscountTotals1 = {
		NonFuelAmt : ?Float;
		FuelAmt : ?Float;
		TtlAmt : ?Float;
	};

	public type FleetPurchaseType1Code = {
		#FANF;
		#FUEL;
		#NONF;
	};

	public type PaymentTransaction141 = {
		DscntTtl : ?FleetDiscountTotals1;
		SummryCmmdtyId : ?Text;
		TtlAmt : ?Float;
		PurchsTp : ?FleetPurchaseType1Code;
		TaxTtl : ?[Tax39];

	};

	public type FleetSummary2 = {
		Drvr : ?Driver2;
		Vhcl : ?Vehicle5;
		AgtFuelPrmptCd : ?Text;
		CardFuelPrmptCd : ?Float;
		DrvrOrVhclCard : ?PlainCardData21;
		AddtlData : ?AdditionalInformation19;
		LclAmnty : ?[LocalAmenity1];

		TripInf : ?TripInformation1;
		TxRltdData : ?[PaymentTransaction141];

	};

	public type FleetServiceType1Code = {
		#FLSV;
		#HSDI;
		#SLSV;
	};

	public type FleetLineItem4 = {
		Tax : ?[Tax39];

		UnitOfMeasr : ?UnitOfMeasure1Code;
		DscntAmt : ?Float;
		SvcTp : ?FleetServiceType1Code;
		PdctQty : ?Float;
		UnitPricTaxInd : ?Bool;
		TtlAmtExclgTax : ?Float;
		FuelBrndCd : ?Text;
		NonTaxblInd : ?Bool;
		FleetPdctCdAssgnr : ?Text;
		FuelInd : ?Bool;
		TtlAmtInclgTax : ?Float;
		FleetPdctCtgy : ?Text;
		FleetPdctQlfr : ?Text;
		FleetPdctCd : ?Text;
		UnitPric : ?Float;
		OthrUnitOfMeasr : ?Text;
	};

	public type FleetData4 = {
		Summry : ?FleetSummary2;
		LineItm : ?[FleetLineItem4];

	};

	public type PartyIdentification261 = {
		Cd : ?Text;
		Nm : ?Text;
		Adr : ?Address2;
		Ctct : ?Contact6;
		ShrtNm : ?Text;
		Assgnr : ?Text;
		IATACd : ?Text;
	};

	public type TravelAgencyPackage1 = {
		Fee : ?Float;
		CstmrRef : ?[CustomerReference1];

		NbInPty : ?Text;
		DlvryOrdrNb : ?Text;
		RsvatnNb : ?Text;
		TrvlPackgTp : ?Text;
		InsrncAmt : ?Float;
		InsrncInd : ?Bool;
		DataSrc : ?Text;
		CdtCardSlipNb : ?Text;
	};

	public type TravelAgency3 = {
		Cpny : ?PartyIdentification261;
		TrvlPackg : ?[TravelAgencyPackage1];

		AddtlData : ?Text;
	};

	public type CustomerType2Code = {
		#CPNY;
		#CSMR;
	};

	public type Customer4 = {
		Tp : ?CustomerType2Code;
		RefNb : ?Text;
		TaxRegnId : ?[Text];

		VIPInd : ?Bool;
		AuthrsdCtctCpny : ?Text;
		CstmrRltsh : ?Text;
		AuthrsdCtctPhneNb : ?Text;
		AuthrsdCtctNm : ?Text;
	};

	public type AddendumData3 = {
		PssngrTrnsprt : ?PassengerTransport2;
		ShppgData : ?ShippingData2;
		VhclRntl : ?[VehicleRentalService2];

		TelecomSvcs : ?TelecomServices2;
		OthrPurchsIdrTp : ?Text;
		AddtlAccptrData : ?AdditionalAcceptorData1;
		Invc : ?Invoice2;
		Ldgg : ?[Lodging3];

		Sale : ?Sale2;
		PurchsIdr : ?Text;
		Instlmt : ?Instalment4;
		PurchsIdrTp : ?PurchaseIdentifierType1Code;
		TempSvcs : ?[TemporaryServices2];

		Fleet : ?FleetData4;
		TrvlAgcy : ?[TravelAgency3];

		Cstmr : ?Customer4;
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

	public type PartyIdentification263 = {
		Id : Text;
		Ctry : ?Text;
		LglCorpNm : ?Text;
		LclData : ?LocalData1;
		ShrtNm : ?Text;
		AddtlId : ?AdditionalData1;
		Assgnr : ?Text;
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

	public type LocalData2 = {
		Nm : ?Text;
		Adr : ?Address3;
		Lang : Text;
		AddtlCtctInf : ?Text;
		AddtlData : ?[AdditionalData1];

	};

	public type FinancialInstitution7 = {
		Id : ?Text;
		Nm : ?Text;
		Adr : ?Address2;
		Email : ?Text;
		CstmrSvc : ?Text;
		PhneNb : ?Text;
		LclData : ?LocalData2;
		URLAdr : ?Text;
		AddtlCtctInf : ?Text;
	};

	public type CardholderName2 = {
		Nm : ?Text;
		GvnNm : ?Text;
		LastNm : ?Text;
		MddlNm : ?Text;
	};

	public type LocalData3 = {
		Nm : ?CardholderName2;
		Adr : ?Address3;
		Lang : Text;
		AddtlData : ?[AdditionalData1];

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

	public type Customer7 = {
		Nm : ?CardholderName3;
		Adr : ?Address2;
		Ntlty : ?Text;
		LclData : ?LocalData3;
		Crdntls : ?[Credentials2];

		CtctInf : ?Contact6;
		CtryOfBirth : ?Text;
		CstmrDsgnt : ?Text;
		DtOfBirth : ?Int;
		AddtlData : ?[AdditionalData1];

		CstmrId : ?Text;
	};

	public type PartyIdentification257 = {
		FI : ?FinancialInstitution7;
		Cstmr : ?Customer7;
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

	public type Environment17 = {
		Tkn : ?Token2;
		Termnl : ?Terminal4;
		CstmrDvc : ?CustomerDevice4;
		Card : ?CardData6;
		Dstn : ?PartyIdentification263;
		Issr : ?PartyIdentification263;
		Pyee : ?PartyIdentification257;
		Pyer : ?PartyIdentification257;
		Rcvr : ?PartyIdentification263;
		Sndr : ?PartyIdentification263;
		Wllt : ?Wallet2;
		Accptr : ?PartyIdentification255;
		Crdhldr : ?Cardholder19;
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

	public type ProcessingResult16 = {
		RspnSrc : ?ApprovalEntity2;
		RsltData : ?ResultData7;
		Actn : ?[Action13];

		OrgnlRsltData : ?ResultData7;
		ApprvlCd : ?Text;
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

	public type GoodsAndServices1Code = {
		#ELEC;
		#ELPH;
		#PHYS;
	};

	public type GoodAndServiceDeliveryChannel1Code = {
		#EDEL;
		#NDEL;
		#OTHN;
		#OTHP;
		#PULC;
		#SCBA;
		#SCSA;
	};

	public type ReceiptType1Code = {
		#EMAL;
		#OTHR;
		#PAPR;
		#SMSM;
		#URID;
	};

	public type GoodAndServiceDeliverySchedule1Code = {
		#ONDL;
		#OTHN;
		#OTHP;
		#SDDL;
		#TDDL;
	};

	public type GoodsAndServicesSubType1Code = {
		#CRCU;
		#FORX;
		#OTHN;
		#OTHP;
		#SECS;
	};

	public type SaleContext8 = {
		GoodAndSvcsOthrSubTp : ?Text;
		GoodsAndSvcsTp : ?GoodsAndServices1Code;
		GoodAndSvcDlvryChanl : ?GoodAndServiceDeliveryChannel1Code;
		SaleId : ?Text;
		OthrGoodAndSvcDlvryChanl : ?Text;
		SaleRefId : ?Text;
		SaleRefNb : ?Text;
		RctTp : ?[ReceiptType1Code];

		GoodAndSvcDlvrySchdl : ?GoodAndServiceDeliverySchedule1Code;
		GoodAndSvcsSubTp : ?GoodsAndServicesSubType1Code;
		OthrGoodAndSvcDlvrySchdl : ?Text;
		SpltPmtInd : ?Bool;
		RctReqInd : ?Bool;
		RctDstn : ?Text;
		AddtlData : ?[AdditionalData1];

	};

	public type Context10 = {
		Vrfctn : ?[Verification5];

		PtOfSvcCntxt : PointOfServiceContext3;
		TxCntxt : TransactionContext7;
		RskCntxt : ?[RiskContext2];

		SaleCntxt : ?SaleContext8;
	};

	public type AuthorisationInitiation2 = {
		Tx : Transaction142;
		AdddmData : ?AddendumData3;
		PrtctdData : ?[ProtectedData1];

		Envt : Environment17;
		ICCRltdData : ?Text;
		PrcgRslt : ?ProcessingResult16;
		SplmtryData : ?[SupplementaryData1];

		Cntxt : Context10;
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

	public type AuthorisationInitiationV03 = {
		Hdr : Header62;
		Body : AuthorisationInitiation2;
		SctyTrlr : ?ContentInformationType20;
	};

}