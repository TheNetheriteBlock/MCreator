if (dependencies.get("event") != null){
	Object _obj = dependencies.get("event");
	if (_obj instanceof Event) {
		Event _evt = (Event) _obj;
		${field$eventname} _event = (${field$eventname}) _evt;
		_event.set${field$dependency}((float)${input$amount});
	}
}