module {
	public type SupplementaryDataEnvelope1 = {
		any : Any;
	};

	public type SupplementaryData1 = {
		Envlp : SupplementaryDataEnvelope1;
		PlcAndNm : ?Text;
	};

	public type InformationRequestStatusChangeNotificationV01 = {
		SplmtryData : ?[SupplementaryData1];

		OrgnlBizQry : Text;
		CnfdtltySts : ?Bool;
	};

}