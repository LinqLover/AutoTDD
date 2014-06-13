as yet unclassified
requestOn: aString

	| response url |
	url := self travisApiUrl, aString.
	response := self webClient httpGet: url do: [ :request |
		request headerAt: 'Accept' put: self mimeType.
		self useTravisPro ifTrue: [ request headerAt: 'Authorization' put: ('token ', self token) ]
	].
	response content; close.
	(self isJson: response content) ifFalse: [ ^ JsonObject new ].
	^ Json readFrom: response content readStream