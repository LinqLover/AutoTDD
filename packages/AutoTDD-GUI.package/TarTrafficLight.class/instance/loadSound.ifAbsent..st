as yet unclassified
loadSound: aString ifAbsent: aBlock

	| sound |
	sound := 'AutoTDD/sounds/', aString.
	(FileDirectory default fileExists: (FileDirectory uri: sound) fullName)
		ifTrue: [ ^ (SampledSound fromWaveFileNamed: ((FileDirectory uri: sound) fullName)) ]
		ifFalse: [ ^ aBlock value ]