tests
testChangingWatchedCategoriesWork
	
	| watcherWindow |
	
	watcherWindow := browser addWatcher.
	watcherWindow selectedTestCategories: (Set newFrom: { #'AutoTDD-Dummy-Setting-Tests' }).
	watcherWindow selectedCategories: (Set newFrom: { #'AutoTDD-Dummy-Category' }).
	watcherWindow save.
	self assert: self class hasTestRun not.
	ClassGettingTested compile: 'bla' , Character cr , Character lf , 'ATDDBrowserTests setTestHasRun.' classified: nil withStamp: nil notifying: nil.
	(Delay forSeconds: 1) wait.
	self assert: self class hasTestRun