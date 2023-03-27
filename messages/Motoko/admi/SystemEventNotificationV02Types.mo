module {
	public type Event2 = {
		EvtCd : Text;
		EvtTm : ?Int;
		EvtParam : ?[Text];

		EvtDesc : ?Text;
	};

	public type SystemEventNotificationV02 = {
		EvtInf : Event2;
	};

}