building
intervalFrame
	
	^ LayoutFrame new
		leftFraction: 0 offset: 0;
		topFraction: 0.65 offset: 0;
		rightFraction: 1 offset: 0;
		bottomFraction: 0.65 offset: self inputFieldHeight;
		yourself