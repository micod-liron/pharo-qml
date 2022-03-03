Class {
	#name : #QGuiApplication,
	#superclass : #Object,
	#category : #PharoQml
}

{ #category : #'library path' }
QGuiApplication class >> applicationDirPath [
	^self ffiCall: #(String dos_qcoreapplication_application_dir_path(void))
]

{ #category : #'library path' }
QGuiApplication class >> create [
	self ffiCall: #(void dos_qguiapplication_create(void))
]

{ #category : #'library path' }
QGuiApplication class >> delete [
	self ffiCall: #(void dos_qguiapplication_delete(void))
]

{ #category : #'library path' }
QGuiApplication class >> exec [
	self ffiCall: #(void dos_qguiapplication_exec(void))
]

{ #category : #'library path' }
QGuiApplication class >> ffiLibraryName [
	^DosLib
]

{ #category : #'library path' }
QGuiApplication class >> processEvents: flags [
	self ffiCall: #(void dos_qcoreapplication_process_events(DosQEventLoopProcessEventFlag flags))
]

{ #category : #'library path' }
QGuiApplication class >> processEvents: flags timed: ms [
	self ffiCall: #(void dos_qcoreapplication_process_events_timed(DosQEventLoopProcessEventFlag flags, int ms))
]

{ #category : #'library path' }
QGuiApplication class >> quit [
	self ffiCall: #(void dos_qguiapplication_quit(void))
]
