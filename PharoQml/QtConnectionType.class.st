Class {
	#name : #QtConnectionType,
	#superclass : #FFIEnumeration,
	#classVars : [
		'DosQtCOnnectionTypeUniqueConnection',
		'DosQtConnectionTypeAutoConnection',
		'DosQtConnectionTypeBlockingConnection',
		'DosQtConnectionTypeDirectConnection',
		'DosQtConnectionTypeQueuedConnection'
	],
	#category : #PharoQml
}

{ #category : #'enum declaration' }
QtConnectionType class >> enumDecl [
	^#(
		DosQtConnectionTypeAutoConnection 0
		DosQtConnectionTypeDirectConnection 1
		DosQtConnectionTypeQueuedConnection 2
		DosQtConnectionTypeBlockingConnection 3
		DosQtCOnnectionTypeUniqueConnection 16r80
	)
]
