Class {
	#name : #PropertyDefinitions,
	#superclass : #FFIStructure,
	#classVars : [
		'OFFSET_COUNT',
		'OFFSET_DEFINITIONS'
	],
	#category : #PharoQml
}

{ #category : #'field definition' }
PropertyDefinitions class >> fieldsDesc [
	^#(
		int count
		PropertyDefinition definitions
	)
]

{ #category : #'accessing - structure variables' }
PropertyDefinitions >> count [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_COUNT
]

{ #category : #'accessing - structure variables' }
PropertyDefinitions >> count: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_COUNT put: anObject
]

{ #category : #'accessing - structure variables' }
PropertyDefinitions >> definitions [
	"This method was automatically generated"
	^ PropertyDefinition fromHandle: (handle referenceStructAt: OFFSET_DEFINITIONS length: PropertyDefinition byteSize)
]

{ #category : #'accessing - structure variables' }
PropertyDefinitions >> definitions: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_DEFINITIONS put: anObject getHandle length: PropertyDefinition byteSize
]
