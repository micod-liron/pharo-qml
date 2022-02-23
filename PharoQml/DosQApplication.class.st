Class {
	#name : #DosQApplication,
	#superclass : #Object,
	#category : #PharoQml
}

{ #category : #operations }
DosQApplication class >> create [
	self ffiCall: #(void dos_qapplication_create(void))
]

{ #category : #operations }
DosQApplication class >> delete [
	self ffiCall: #(void dos_qapplication_delete(void))
]

{ #category : #operations }
DosQApplication class >> exec [
	self ffiCall: #(void dos_qapplication_exec(void))
]

{ #category : #'library path' }
DosQApplication class >> ffiLibraryName [
	^DosLib uniqueInstance
]

{ #category : #'library path' }
DosQApplication class >> new [
	self error: 'Cannot create instances of DosQApplication'
]

{ #category : #operations }
DosQApplication class >> quit [
	self ffiCall: #(void dos_qapplication_quit(void))
]
