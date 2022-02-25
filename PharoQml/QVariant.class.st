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
QVariant class >> createBool: value [
	^self ffiCall: #(QVariant * dos_qvariant_create_bool(bool value))
	
]

{ #category : #'as yet unclassified' }
QVariant class >> createDouble: value [
	^self ffiCall: #(QVariant * dos_qvariant_create_double(double value))
	
]

{ #category : #'as yet unclassified' }
QVariant class >> createFloat: value [
	^self ffiCall: #(QVariant * dos_qvariant_create_float(float value))
	
]

{ #category : #'as yet unclassified' }
QVariant class >> createInt: value [
	^self ffiCall: #(QVariant * dos_qvariant_create_int(int value))
]

{ #category : #'as yet unclassified' }
QVariant class >> createLongLong: value [
	^self ffiCall: #(QVariant * dos_qvariant_create_longlong(longlong value))
	
]

{ #category : #'as yet unclassified' }
QVariant class >> createQObject: value [
	^self ffiCall: #(QVariant * dos_qvariant_create_qobject(QObject *value))
	
]

{ #category : #'as yet unclassified' }
QVariant class >> createQVariant: value [
	^self ffiCall: #(QVariant * dos_qvariant_create_qvariant(const QVariant *value))
	
]

{ #category : #'as yet unclassified' }
QVariant class >> createString: value [
	^self ffiCall: #(QVariant * dos_qvariant_create_string(const char *value))
]

{ #category : #'as yet unclassified' }
QVariant class >> createULongLong: value [
	^self ffiCall: #(QVariant * dos_qvariant_create_ulonglong(ulonglong value))
	
]

{ #category : #finalization }
QVariant class >> finalizeResourceData: handle [
	Transcript show: 'Finalizing QVariant'; cr.
	handle isNull ifTrue: [ ^ self ].
	self ffiCall: #(void 	dos_qvariant_delete(DosQVariant *handle)).
	handle beNull
]

{ #category : #'submorphs - add/remove' }
QVariant >> assign: other [
	self ffiCall: #(void dos_qvariant_assign(QVariant *self, const QVariant *other))
]

{ #category : #initialization }
QVariant >> delete [
	self ffiCall: #(void 	dos_qvariant_delete(QVariant *self)).
	handle beNull.
]

{ #category : #initialization }
QVariant >> isNullVariant [
	^self ffiCall: #(bool dos_qvariant_isnull(const QVariant *self))
]

{ #category : #'external resource management' }
QVariant >> resourceData [
	Transcript show: 'Get variant resource data'; cr.
	^self getHandle
]

{ #category : #initialization }
QVariant >> setBool: value [
	self ffiCall: #(void dos_qvariant_setBool(QVariant *self, bool value))
]

{ #category : #initialization }
QVariant >> setDouble: value [
	self ffiCall: #(void dos_qvariant_setDouble(QVariant *self, double value))
]

{ #category : #initialization }
QVariant >> setFloat: value [
	self ffiCall: #(void dos_qvariant_setFloat(QVariant *self, float value))
]

{ #category : #initialization }
QVariant >> setInt: value [
	self ffiCall: #(void dos_qvariant_setInt(QVariant *self, int value))
]

{ #category : #initialization }
QVariant >> setLongLong: value [
	self ffiCall: #(void dos_qvariant_setLongLong(QVariant *self, longlong value))
]

{ #category : #initialization }
QVariant >> setQObject: value [
	self ffiCall: #(void dos_qvariant_setQObject(QVariant *self, QObject *value))
]

{ #category : #initialization }
QVariant >> setString: value [
	self ffiCall: #(void dos_qvariant_setString(QVariant *self, const char *value))
]

{ #category : #initialization }
QVariant >> setULongLong: value [
	self ffiCall: #(void dos_qvariant_setULongLong(QVariant *self, ulonglong value))
]

{ #category : #'as yet unclassified' }
QVariant >> toBool [
	^self ffiCall: #(bool dos_qvariant_toBool(const QVariant *self))
]

{ #category : #printing }
QVariant >> toDouble [
	^self ffiCall: #(double dos_qvariant_toDouble(const QVariant *self))
]

{ #category : #printing }
QVariant >> toFloat [
	^self ffiCall: #(float dos_qvariant_toFloat(const QVariant *self))
]

{ #category : #'as yet unclassified' }
QVariant >> toInt [
	^self ffiCall: #(int dos_qvariant_toInt(const QVariant *self))
]

{ #category : #'as yet unclassified' }
QVariant >> toLongLong [
	^self ffiCall: #(longlong dos_qvariant_toLongLong(const QVariant *self))
]

{ #category : #printing }
QVariant >> toQObject [
	^self ffiCall: #(QObject * dos_qvariant_toQObject(const QVariant *self))
]

{ #category : #printing }
QVariant >> toString [
	^self ffiCall: #(char * dos_qvariant_toString(const QVariant *self))
]

{ #category : #'as yet unclassified' }
QVariant >> toULongLong [
	^self ffiCall: #(ulonglong dos_qvariant_toULongLong(const QVariant *self))
]
