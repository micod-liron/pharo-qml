Class {
	#name : #SlotDefinition,
	#superclass : #FFIStructure,
	#classVars : [
		'OFFSET_NAME',
		'OFFSET_PARAMETERS',
		'OFFSET_PARAMETERSCOUNT',
		'OFFSET_RETURNMETATYPE'
	],
	#category : #PharoQml
}

{ #category : #'field definition' }
SlotDefinition class >> fieldsDesc [
	^#(
		String name
		int returnMetaType
		int parametersCount
		ParameterDefinition parameters
	)
]

{ #category : #'accessing - structure variables' }
SlotDefinition >> name [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_NAME) type: ExternalType char asPointerType
]

{ #category : #'accessing - structure variables' }
SlotDefinition >> name: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_NAME put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
SlotDefinition >> parameters [
	"This method was automatically generated"
	^ ParameterDefinition fromHandle: (handle referenceStructAt: OFFSET_PARAMETERS length: ParameterDefinition byteSize)
]

{ #category : #'accessing - structure variables' }
SlotDefinition >> parameters: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_PARAMETERS put: anObject getHandle length: ParameterDefinition byteSize
]

{ #category : #'accessing - structure variables' }
SlotDefinition >> parametersCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_PARAMETERSCOUNT
]

{ #category : #'accessing - structure variables' }
SlotDefinition >> parametersCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_PARAMETERSCOUNT put: anObject
]

{ #category : #'accessing - structure variables' }
SlotDefinition >> returnMetaType [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_RETURNMETATYPE
]

{ #category : #'accessing - structure variables' }
SlotDefinition >> returnMetaType: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_RETURNMETATYPE put: anObject
]
