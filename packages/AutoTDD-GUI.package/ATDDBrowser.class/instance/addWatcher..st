action
addWatcher: aWatcher
	
	self watchers add: aWatcher.
	self class changedWatchers.
	
	^ aWatcher