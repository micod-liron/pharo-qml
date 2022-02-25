Class {
	#name : #SlotDefinitions,
	#superclass : #FFIStructure,
	#classVars : [
		'OFFSET_COUNT',
		'OFFSET_DEFINITIONS'
	],
	#category : #PharoQml
}

{ #category : #'field definition' }
SlotDefinitions class >> fieldsDesc [
	^#(
		int count
		SlotDefinition definitions
	)
]

{ #category : #'accessing - structure variables' }
SlotDefinitions >> count [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_COUNT
]

{ #category : #'accessing - structure variables' }
SlotDefinitions >> count: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_COUNT put: anObject
]

{ #category : #'accessing - structure variables' }
SlotDefinitions >> definitions [
	"This method was automatically generated"
	^ SlotDefinition fromHandle: (handle referenceStructAt: OFFSET_DEFINITIONS length: SlotDefinition byteSize)
]

{ #category : #'accessing - structure variables' }
SlotDefinitions >> definitions: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_DEFINITIONS put: anObject getHandle length: SlotDefinition byteSize
]
