gui
createOnOffButton
	self onOffButton: ThreePhaseButtonMorph new.
	self onOffButton 
		offImage: self getOffPng;
		onImage: self getOnPng;
		extent: 40 @ 40;
		position: self position + (160 @ 100);
		actionSelector: #onOffButtonClicked;
		state: #on;
		target: self.
	self isTesting: true.
	self addMorph: self onOffButton