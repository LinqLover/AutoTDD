as yet unclassified
testConfiguration
	|travisStatus|
	travisStatus := ATDDTravisStatus new.
	
	self assert: (travisStatus paused = true).
	self assert: (travisStatus usePro = false).
	self assert: (travisStatus name isKindOf: String).
	self assert: (travisStatus repository isKindOf: TCINullRepository).
	
	travisStatus name: 'Hello World'.
	travisStatus repositoryURL: self repoURL.
	travisStatus token: '9'.
	travisStatus usePro: true.
	
	self assert: (travisStatus name = 'Hello World').
	self assert: (travisStatus repository class = TCIRepository).
	self assert: (travisStatus repositoryURL = self repoURL).
	self assert: (travisStatus token = '9').
	self assert: (travisStatus usePro = true).