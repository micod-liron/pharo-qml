Class {
	#name : #QVariant,
	#superclass : #DosOpaqueObject,
	#category : #PharoQml
}

{ #category : #operations }
QVariant class >> create [
	| variant |
	'Creating empty QVariant' traceCr.
	variant := self ffiCall: #(QVariant * dos_qvariant_create(void)).
	variant autoRelease.
	^variant
]

{ #category : #'as yet unclassified' }
QVariant class >> createInt: value [
	^self ffiCall: #(QVariant * dos_qvariant_create_int(int value))
]

{ #category : #'as yet unclassified' }
QVariant class >> createString: value [
	^self ffiCall: #(DosQVariant * dos_qvariant_create_string (const char *value))
]

{ #category : #finalization }
QVariant class >> finalizeResourceData: handle [
	Transcript show: 'Finalizing QVariant'; cr.
	handle isNull ifTrue: [ ^ self ].
	self ffiCall: #(void 	dos_qvariant_delete(DosQVariant *handle)).
	handle beNull
]

{ #category : #'external resource management' }
QVariant >> resourceData [
	Transcript show: 'Get variant resource data'; cr.
	^self getHandle
]

{ #category : #'as yet unclassified' }
QVariant >> toInt [
	^self ffiCall: #(int dos_qvariant_toInt(const QVariant *self))
]

{ #category : #printing }
QVariant >> toString [
	^self ffiCall: #(char * dos_qvariant_toString(const QVariant *self))
]
