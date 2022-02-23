Class {
	#name : #DosQVariant,
	#superclass : #DosOpaqueObject,
	#category : #PharoQml
}

{ #category : #operations }
DosQVariant class >> create [
	^self ffiCall: #(DosQVariant * dos_qvariant_create(void))
]

{ #category : #'as yet unclassified' }
DosQVariant class >> createInt: value [
	^self ffiCall: #(DosQVariant * dos_qvariant_create_int(int value))
]

{ #category : #'as yet unclassified' }
DosQVariant class >> createString: value [
	^self ffiCall: #(DosQVariant * dos_qvariant_create_string (const char *value))
]

{ #category : #'submorphs - add/remove' }
DosQVariant >> delete [
	self ffiCall: #(void 	dos_qvariant_delete (DosQVariant *self))
]

{ #category : #'as yet unclassified' }
DosQVariant >> toInt [
	^self ffiCall: #(int dos_qvariant_toInt(const DosQVariant *self))
]

{ #category : #printing }
DosQVariant >> toString [
	^self ffiCall: #(char * dos_qvariant_toString(const DosQVariant *self))
]
