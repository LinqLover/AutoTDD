generation
generateSoundMethods
	
	self class soundDictionary values asSet
		do: [ :value |
			(self loadResource: value , '.wav' ifAbsent: [ nil ])
				ifNotNil: [ :sound |
					| l r |
					
					l := sound sounds first.
					r := sound sounds last.
					self class
						compile: ('{1}
" autogenerated, do not modify "
^ MixedSound  new
	add: (SampledSound samples: (SoundBuffer fromByteArray: {2}) samplingRate: {3})  pan: 0;
	add: (SampledSound samples: (SoundBuffer fromByteArray: {4}) samplingRate: {5})  pan: 1.0;
	yourself
'
							format: { value asLegalSelector asString . l samples asByteArray storeString . l originalSamplingRate . 
								r samples asByteArray storeString . r originalSamplingRate })
						classified: #'- autogenerated -'
						notifying: nil ] ]