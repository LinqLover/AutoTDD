building
buildResumeWatcherButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #resumeSelectedWatchers;
		label: 'Resume';
		enabled: true;
		yourself