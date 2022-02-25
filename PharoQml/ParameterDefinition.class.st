Class {
	#name : #ParameterDefinition,
	#superclass : #FFIStructure,
	#classVars : [
		'OFFSET_METATYPE',
		'OFFSET_NAME'
	],
	#category : #PharoQml
}

{ #category : #'field definition' }
ParameterDefinition class >> fieldsDesc [
	^#(
		String name
		int metaType
	)
]

{ #category : #'accessing - structure variables' }
ParameterDefinition >> metaType [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_METATYPE
]

{ #category : #'accessing - structure variables' }
ParameterDefinition >> metaType: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_METATYPE put: anObject
]

{ #category : #'accessing - structure variables' }
ParameterDefinition >> name [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_NAME) type: ExternalType char asPointerType
]

{ #category : #'accessing - structure variables' }
ParameterDefinition >> name: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_NAME put: anObject getHandle.
]
