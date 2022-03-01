Class {
	#name : #QmlRegisterType,
	#superclass : #FFIStructure,
	#classVars : [
		'OFFSET_CREATEDOBJECT',
		'OFFSET_DELETEDOBJECT',
		'OFFSET_MAJOR',
		'OFFSET_MINOR',
		'OFFSET_QML',
		'OFFSET_STATICMETAOBJECT',
		'OFFSET_URI'
	],
	#category : #PharoQml
}

{ #category : #'field definition' }
QmlRegisterType class >> fieldsDesc [
	^#(
		int major
		int minor
		String uri
		String qml
		QMetaObject staticMetaObject
		CreateDObject createDObject
		DeleteDObject deleteDObject
	)
]

{ #category : #'accessing - structure variables' }
QmlRegisterType >> createDObject [
	"This method was automatically generated"
	^CreateDObject forAddress: ((handle pointerAt: OFFSET_CREATEDOBJECT) asInteger)
]

{ #category : #'accessing - structure variables' }
QmlRegisterType >> createDObject: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_CREATEDOBJECT
		put: (anObject 
			ifNotNil: [ anObject thunk asExternalAddress ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing - structure variables' }
QmlRegisterType >> deleteDObject [
	"This method was automatically generated"
	^DeleteDObject forAddress: ((handle pointerAt: OFFSET_DELETEDOBJECT) asInteger)
]

{ #category : #'accessing - structure variables' }
QmlRegisterType >> deleteDObject: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_DELETEDOBJECT
		put: (anObject 
			ifNotNil: [ anObject thunk asExternalAddress ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing - structure variables' }
QmlRegisterType >> major [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_MAJOR
]

{ #category : #'accessing - structure variables' }
QmlRegisterType >> major: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_MAJOR put: anObject
]

{ #category : #'accessing - structure variables' }
QmlRegisterType >> minor [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_MINOR
]

{ #category : #'accessing - structure variables' }
QmlRegisterType >> minor: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_MINOR put: anObject
]

{ #category : #'accessing - structure variables' }
QmlRegisterType >> qml [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_QML) type: ExternalType char asPointerType
]

{ #category : #'accessing - structure variables' }
QmlRegisterType >> qml: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_QML put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
QmlRegisterType >> staticMetaObject [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_STATICMETAOBJECT) type: ExternalType void asPointerType
]

{ #category : #'accessing - structure variables' }
QmlRegisterType >> staticMetaObject: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_STATICMETAOBJECT put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
QmlRegisterType >> uri [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_URI) type: ExternalType char asPointerType
]

{ #category : #'accessing - structure variables' }
QmlRegisterType >> uri: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_URI put: anObject getHandle.
]
