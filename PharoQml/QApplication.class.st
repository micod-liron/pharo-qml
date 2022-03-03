Class {
	#name : #QApplication,
	#superclass : #Object,
	#category : #PharoQml
}

{ #category : #operations }
QApplication class >> create [
	self ffiCall: #(void dos_qapplication_create(void))
]

{ #category : #operations }
QApplication class >> delete [
	self ffiCall: #(void dos_qapplication_delete(void))
]

{ #category : #operations }
QApplication class >> exec [
	self ffiCall: #(void dos_qapplication_exec(void))
]

{ #category : #'library path' }
QApplication class >> ffiLibraryName [
	^DosLib
]

{ #category : #'library path' }
QApplication class >> new [
	self error: 'Cannot create instances of QApplication'
]

{ #category : #operations }
QApplication class >> quit [
	self ffiCall: #(void dos_qapplication_quit(void))
]
