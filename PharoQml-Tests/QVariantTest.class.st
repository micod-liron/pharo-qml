Class {
	#name : #QVariantTest,
	#superclass : #TestCase,
	#category : #'PharoQml-Tests'
}

{ #category : #tests }
QVariantTest >> testAssign [
	| v1 v2 v3 |
	v1 := QVariant create.
	v2 := QVariant createInt: 42.
	v3 := QVariant createString: 'Pharo'.
	self assert: v1 isNullVariant.
	v1 assign: v2.
	self assert: v1 toInt equals: 42.
	v1 assign: v3.
	self assert: v1 toString equals: 'Pharo'.
	v1 delete.
	v2 delete.
	v3 delete
]

{ #category : #tests }
QVariantTest >> testCreate [
	| variant |
	variant := QVariant create.
	self assert: variant isNullVariant.
	self assert: variant getHandle isExternalAddress.
	self assert: variant getHandle isNull not.
	variant delete.
]

{ #category : #tests }
QVariantTest >> testCreateBool [
	| variant |
	variant := QVariant createBool: true.
	self assert: variant isNullVariant not.
	self assert: variant toBool equals: true.
	variant delete.
]

{ #category : #tests }
QVariantTest >> testCreateDouble [
	| variant |
	variant := QVariant createDouble: 3.14159.
	self assert: variant isNullVariant not.
	self assert: variant toDouble equals: 3.14159.
	variant delete.
]

{ #category : #tests }
QVariantTest >> testCreateFloat [
	| variant |
	variant := QVariant createFloat: 3.0.
	self assert: variant isNullVariant not.
	self assert: variant toFloat equals: 3.0.
	variant delete.
]

{ #category : #tests }
QVariantTest >> testCreateInt [
	| variant |
	variant := QVariant createInt: 42.
	self assert: variant isNullVariant not.
	self assert: variant toInt equals: 42.
	variant delete.
]

{ #category : #tests }
QVariantTest >> testCreateLongLong [
	| variant |
	variant := QVariant createLongLong: 42.
	self assert: variant isNullVariant not.
	self assert: variant toLongLong equals: 42.
	variant delete.
]

{ #category : #tests }
QVariantTest >> testCreateQVariant [
	| v1 v2 |
	v1 := QVariant createInt: 42.
	v2 := QVariant createQVariant: v1.
	self assert: v2 toInt equals: 42.
	v1 delete.
	v2 delete
]

{ #category : #tests }
QVariantTest >> testCreateString [
	| variant |
	variant := QVariant createString: 'Pharo'.
	self assert: variant isNullVariant not.
	self assert: variant toString equals: 'Pharo'.
	variant delete.
]

{ #category : #tests }
QVariantTest >> testCreateULongLong [
	| variant |
	variant := QVariant createULongLong: 42.
	self assert: variant isNullVariant not.
	self assert: variant toULongLong equals: 42.
	variant delete.
]

{ #category : #tests }
QVariantTest >> testIsNullVariant [
	| v1 v2 |
	v1 := QVariant create.
	v2 := QVariant createInt: 42.
	self assert: v1 isNullVariant.
	self assert: v2 isNullVariant not.
	v1 delete.
	v2 delete
]

{ #category : #tests }
QVariantTest >> testSetBool [
	| variant |
	variant := QVariant create.
	variant setBool: true.
	self assert: variant isNullVariant not.
	self assert: variant toBool equals: true.
	variant delete
]

{ #category : #tests }
QVariantTest >> testSetDouble [
	| variant |
	variant := QVariant create.
	variant setDouble: 3.14159.
	self assert: variant isNullVariant not.
	self assert: variant toDouble equals: 3.14159.
	variant delete
]

{ #category : #tests }
QVariantTest >> testSetFloat [
	| variant |
	variant := QVariant create.
	variant setFloat: 3.0.
	self assert: variant isNullVariant not.
	self assert: variant toDouble equals: 3.0.
	variant delete
]

{ #category : #tests }
QVariantTest >> testSetInt [
	| variant |
	variant := QVariant create.
	variant setInt: 42.
	self assert: variant isNullVariant not.
	self assert: variant toInt equals: 42.
	variant delete
]

{ #category : #tests }
QVariantTest >> testSetLongLong [
	| variant |
	variant := QVariant create.
	variant setLongLong: 42.
	self assert: variant isNullVariant not.
	self assert: variant toLongLong equals: 42.
	variant delete
]

{ #category : #tests }
QVariantTest >> testSetString [
	| variant |
	variant := QVariant create.
	variant setString: 'Pharo'.
	self assert: variant isNullVariant not.
	self assert: variant toString equals: 'Pharo'.
	variant delete
]

{ #category : #tests }
QVariantTest >> testSetULongLong [
	| variant |
	variant := QVariant create.
	variant setULongLong: 42.
	self assert: variant isNullVariant not.
	self assert: variant toULongLong equals: 42.
	variant delete
]

{ #category : #tests }
QVariantTest >> testToBool [
	| v1 v2 |
	v1 := QVariant createBool: true.
	v2 := QVariant createBool: false.
	self assert: v1 toBool equals: true.
	self assert: v2 toBool equals: false.
	v1 delete.
	v2 delete
]

{ #category : #tests }
QVariantTest >> testToDouble [
	| v1 v2 |
	v1 := QVariant createDouble: 3.14159.
	v2 := QVariant createDouble: 2.71.
	self assert: v1 toDouble equals: 3.14159.
	self assert: v2 toDouble equals: 2.71.
	v1 delete.
	v2 delete
]

{ #category : #tests }
QVariantTest >> testToFloat [
	| v1 v2 |
	v1 := QVariant createFloat: 3.0.
	v2 := QVariant createFloat: 2.0.
	self assert: v1 toDouble equals: 3.0.
	self assert: v2 toDouble equals: 2.0.
	v1 delete.
	v2 delete
]

{ #category : #tests }
QVariantTest >> testToInt [
	| v1 v2 |
	v1 := QVariant createInt: 42.
	v2 := QVariant createInt: 55.
	self assert: v1 toDouble equals: 42.
	self assert: v2 toDouble equals: 55.
	v1 delete.
	v2 delete
]

{ #category : #tests }
QVariantTest >> testToLongLong [
	| v1 v2 |
	v1 := QVariant createLongLong: 42.
	v2 := QVariant createLongLong: 55.
	self assert: v1 toLongLong equals: 42.
	self assert: v2 toLongLong equals: 55.
	v1 delete.
	v2 delete
]

{ #category : #tests }
QVariantTest >> testToString [
	| v1 v2 |
	v1 := QVariant createString: 'Pharo'.
	v2 := QVariant createString: 'Smalltalk'.
	self assert: v1 toString equals: 'Pharo'.
	self assert: v2 toString equals: 'Smalltalk'.
	v1 delete.
	v2 delete
]

{ #category : #tests }
QVariantTest >> testToULongLong [
	| v1 v2 |
	v1 := QVariant createULongLong: 42.
	v2 := QVariant createULongLong: 55.
	self assert: v1 toULongLong equals: 42.
	self assert: v2 toULongLong equals: 55.
	v1 delete.
	v2 delete
]
