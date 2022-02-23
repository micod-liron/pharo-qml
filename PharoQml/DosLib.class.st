Class {
	#name : #DosLib,
	#superclass : #FFILibrary,
	#category : #PharoQml
}

{ #category : #'accessing - platform' }
DosLib >> unixLibraryName [
	^'libDOtherSide.so'
]
