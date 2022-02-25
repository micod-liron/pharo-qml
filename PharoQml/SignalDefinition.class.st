Class {
	#name : #SignalDefinition,
	#superclass : #FFIStructure,
	#classVars : [
		'OFFSET_NAME',
		'OFFSET_PARAMETERS',
		'OFFSET_PARAMETERSCOUNT'
	],
	#category : #PharoQml
}

{ #category : #'as yet unclassified' }
SignalDefinition class >> fieldsDesc [
	^#(
		String name
		int parametersCount
		ParameterDefinition parameters
	)
]

{ #category : #'accessing - structure variables' }
SignalDefinition >> name [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_NAME) type: ExternalType char asPointerType
]

{ #category : #'accessing - structure variables' }
SignalDefinition >> name: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_NAME put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
SignalDefinition >> parameters [
	"This method was automatically generated"
	^ ParameterDefinition fromHandle: (handle referenceStructAt: OFFSET_PARAMETERS length: ParameterDefinition byteSize)
]

{ #category : #'accessing - structure variables' }
SignalDefinition >> parameters: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_PARAMETERS put: anObject getHandle length: ParameterDefinition byteSize
]

{ #category : #'accessing - structure variables' }
SignalDefinition >> parametersCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_PARAMETERSCOUNT
]

{ #category : #'accessing - structure variables' }
SignalDefinition >> parametersCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_PARAMETERSCOUNT put: anObject
]
