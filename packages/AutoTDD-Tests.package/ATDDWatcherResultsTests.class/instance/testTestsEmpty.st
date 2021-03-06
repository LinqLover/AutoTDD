tests
testTestsEmpty
	
	| result |
	
	watcher classesToTest: Set new.
	watcher run.
	(Delay forSeconds: 1) wait.
	result := resultsWindow history first.
	self assert: (result isKindOf: Text).
	self assert: (result colorAt: 1) = (ATDDWatcherResults colorDictionary at: #unknown).
	resultsWindow selectedHistory: 1.
	self assert: (resultsWindow historyInfo isKindOf: Text).
	self assert: resultsWindow historyInfo = '0 run, 0 passes, 0 expected failures, 0 failures, 0 errors, 0 unexpected passes'.
	self assert: (resultsWindow historyInfo colorAt: 1) = (ATDDWatcherResults colorDictionary at: #unknown).
	self assert: resultsWindow tests isEmpty