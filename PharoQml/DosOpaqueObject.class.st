Class {
	#name : #DosOpaqueObject,
	#superclass : #FFIOpaqueObject,
	#category : #PharoQml
}

{ #category : #accessing }
DosOpaqueObject class >> ffiLibraryName [
	^DosLib
]

{ #category : #'library path' }
DosOpaqueObject >> ffiLibraryName [
	^DosLib
]
