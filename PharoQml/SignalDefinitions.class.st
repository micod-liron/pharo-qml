Class {
	#name : #SignalDefinitions,
	#superclass : #FFIStructure,
	#classVars : [
		'OFFSET_COUNT',
		'OFFSET_DEFINITIONS'
	],
	#category : #PharoQml
}

{ #category : #'field definition' }
SignalDefinitions class >> fieldsDesc [
	^#(
		int count
		SignalDefinition definitions
	)
]

{ #category : #'accessing - structure variables' }
SignalDefinitions >> count [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_COUNT
]

{ #category : #'accessing - structure variables' }
SignalDefinitions >> count: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_COUNT put: anObject
]

{ #category : #'accessing - structure variables' }
SignalDefinitions >> definitions [
	"This method was automatically generated"
	^ SignalDefinition fromHandle: (handle referenceStructAt: OFFSET_DEFINITIONS length: SignalDefinition byteSize)
]

{ #category : #'accessing - structure variables' }
SignalDefinitions >> definitions: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_DEFINITIONS put: anObject getHandle length: SignalDefinition byteSize
]
