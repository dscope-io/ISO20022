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

	public type TransactionIdentification20 = {
		AcqrrRefNb : ?Text;
		AcqrrRefData : ?Text;
		OrgnlDataElmts : ?OriginalDataElements2;
		CardIssrRefData : ?Text;
		RtrvlRefNb : ?Text;
		TxRef : ?Text;
		LifeCyclTracIdData : ?TransactionLifeCycleIdentification1;
		TrnsmssnDtTm : Int;
		SysTracAudtNb : Text;
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

	public type Transaction148 = {
		TxId : TransactionIdentification20;
		AssoctdDataRef : ?Text;
		AddtlFee : ?[AdditionalFee2];

		TxDesc : ?Text;
		DataSrc : ?Text;
		AddtlData : ?[AdditionalData1];

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

	public type Amount16 = {
		Amt : Float;
		CdtDbt : ?CreditDebit3Code;
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

	public type CardData2 = {
		PAN : ?Text;
		PmtAcctRef : ?Text;
		CardSeqNb : ?Text;
		CardPrtflIdr : ?Text;
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

	public type Environment30 = {
		Tkn : ?Token2;
		Card : ?CardData2;
		Dstn : ?PartyIdentification263;
		Issr : ?PartyIdentification263;
		Rcvr : ?PartyIdentification263;
		Sndr : ?PartyIdentification263;
		Accptr : ?PartyIdentification255;
		Acqrr : PartyIdentification263;
		Orgtr : ?PartyIdentification263;
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

	public type AddendumInitiation2 = {
		Tx : Transaction148;
		AdddmData : AddendumData3;
		PrtctdData : ?[ProtectedData1];

		Envt : Environment30;
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

	public type AddendumInitiationV02 = {
		Hdr : Header66;
		Body : ?AddendumInitiation2;
		SctyTrlr : ?ContentInformationType20;
	};

}