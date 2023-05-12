module {
	public type PartyType33Code = {
		#ACCP;
		#ACQR;
		#CISS;
		#DLIS;
		#ITAG;
		#MERC;
		#MTMG;
		#OPOI;
		#TAXH;
		#TMGT;
	};

	public type GenericIdentification176 = {
		Id : Text;
		Tp : ?PartyType33Code;
		Ctry : ?Text;
		Issr : ?PartyType33Code;
		ShrtNm : ?Text;
	};

	public type GeolocationGeographicCoordinates1 = {
		Lat : Text;
		Long : Text;
	};

	public type GeolocationUTMCoordinates1 = {
		UTMEstwrd : Text;
		UTMNrthwrd : Text;
		UTMZone : Text;
	};

	public type Geolocation1 = {
		GeogcCordints : ?GeolocationGeographicCoordinates1;
		UTMCordints : ?GeolocationUTMCoordinates1;
	};

	public type NetworkType1Code = {
		#IPNW;
		#PSTN;
	};

	public type NetworkParameters9 = {
		NtwkTp : NetworkType1Code;
		AdrVal : Text;
	};

	public type byte[] = {
	};

	public type NetworkParameters7 = {
		Adr : [NetworkParameters9];
		UsrNm : ?Text;
		AccsCd : ?[byte[]];

		SvrCertIdr : ?[byte[]];

		ClntCert : ?[byte[]];

		SvrCert : ?[byte[]];

		SctyPrfl : ?Text;
	};

	public type GenericIdentification177 = {
		Id : Text;
		Tp : ?PartyType33Code;
		Glctn : ?Geolocation1;
		Ctry : ?Text;
		Issr : ?PartyType33Code;
		ShrtNm : ?Text;
		RmotAccs : ?NetworkParameters7;
	};

	public type Traceability8 = {
		TracDtTmOut : Int;
		PrtcolNm : ?Text;
		RlayId : GenericIdentification177;
		PrtcolVrsn : ?Text;
		TracDtTmIn : Int;
	};

	public type MessageFunction9Code = {
		#RJCP;
		#RJCQ;
	};

	public type Header57 = {
		InitgPty : ?GenericIdentification176;
		Tracblt : ?[Traceability8];

		XchgId : ?Float;
		RcptPty : ?GenericIdentification177;
		CreDtTm : Int;
		PrtcolVrsn : Text;
		MsgFctn : MessageFunction9Code;
	};

	public type RejectReason1Code = {
		#DPMG;
		#IMSG;
		#INTP;
		#MSGT;
		#PARS;
		#RCPP;
		#SECU;
		#UNPR;
		#VERS;
	};

	public type AcceptorRejection2 = {
		RjctRsn : RejectReason1Code;
		MsgInErr : ?[byte[]];

		AddtlInf : ?Text;
	};

	public type AcceptorRejectionV06 = {
		Hdr : Header57;
		Rjct : AcceptorRejection2;
	};

}