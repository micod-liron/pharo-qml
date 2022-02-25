Class {
	#name : #PropertyDefinition,
	#superclass : #FFIStructure,
	#classVars : [
		'OFFSET_NAME',
		'OFFSET_NOTIFYSIGNAL',
		'OFFSET_PROPERTYMETATYPE',
		'OFFSET_READSLOT',
		'OFFSET_WRITESLOT'
	],
	#category : #PharoQml
}

{ #category : #'field definition' }
PropertyDefinition class >> fieldsDesc [
	^#(
		String name
		int propertyMetaType
		String readSlot
		String writeSlot
		String notifySignal
	)
]

{ #category : #'accessing - structure variables' }
PropertyDefinition >> name [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_NAME) type: ExternalType char asPointerType
]

{ #category : #'accessing - structure variables' }
PropertyDefinition >> name: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_NAME put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
PropertyDefinition >> notifySignal [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_NOTIFYSIGNAL) type: ExternalType char asPointerType
]

{ #category : #'accessing - structure variables' }
PropertyDefinition >> notifySignal: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_NOTIFYSIGNAL put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
PropertyDefinition >> propertyMetaType [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_PROPERTYMETATYPE
]

{ #category : #'accessing - structure variables' }
PropertyDefinition >> propertyMetaType: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_PROPERTYMETATYPE put: anObject
]

{ #category : #'accessing - structure variables' }
PropertyDefinition >> readSlot [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_READSLOT) type: ExternalType char asPointerType
]

{ #category : #'accessing - structure variables' }
PropertyDefinition >> readSlot: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_READSLOT put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
PropertyDefinition >> writeSlot [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_WRITESLOT) type: ExternalType char asPointerType
]

{ #category : #'accessing - structure variables' }
PropertyDefinition >> writeSlot: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_WRITESLOT put: anObject getHandle.
]
