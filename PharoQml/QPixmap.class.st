Class {
	#name : #QPixmap,
	#superclass : #DosOpaqueObject,
	#category : #PharoQml
}

{ #category : #operations }
QPixmap class >> create [
	^self ffiCall: #(QPixmap * dos_qpixmap_create(void))
]

{ #category : #'as yet unclassified' }
QPixmap class >> createQPixmap: pixmap [
	^self ffiCall: #(QPixmap * dos_qpixmap_create_qpixmap(const QPixmap *pixmap))
]

{ #category : #'as yet unclassified' }
QPixmap class >> createWidth: width height: height [
	^self ffiCall: #(QPixmap * dos_qpixmap_create_width_and_height(int width, int height))
]

{ #category : #'submorphs - add/remove' }
QPixmap >> assign: other [
	self ffiCall: #(void dos_qpixmap_assign(QPixmap *self, const QPixmap *other))
]

{ #category : #'submorphs - add/remove' }
QPixmap >> delete [
	self ffiCall: #(void dos_qpixmap_delete(QPixmap *self))
]

{ #category : #'submorphs - add/remove' }
QPixmap >> fillRed: red green: green blue: blue [
	self ffiCall: #(void dos_qpixmap_fill(QPixmap *self, unsigned char red, unsigned char green, unsigned char blue, unsigned char alpha))
]

{ #category : #'submorphs - add/remove' }
QPixmap >> isNullPixmap [
	^self ffiCall: #(bool dos_qpixmap_isNull(DosPixmap *self))
]

{ #category : #'submorphs - add/remove' }
QPixmap >> loadFilepath: filepath format: format [
	self ffiCall: #(void dos_qpixmap_load(QPixmap *self, String filepath, String format))
]

{ #category : #'submorphs - add/remove' }
QPixmap >> loadFromData: data length: length [
	self ffiCall: #(void dos_qpixmap_loadFromData(QPixmap *self, const unsigned char *data, unsigned int length))
]
