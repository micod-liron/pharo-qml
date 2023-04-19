Class {
	#name : #QQuickImageProvider,
	#superclass : #DosOpaqueObject,
	#category : #PharoQml
}

{ #category : #'as yet unclassified' }
QQuickImageProvider class >> create: requestPixmapCallback [
	^self ffiCall: #(QQuickImageProvider * dos_qquickimageprovider_create(RequestPixmapCallback callback))
]

{ #category : #'as yet unclassified' }
QQuickImageProvider >> delete [
	self ffiCall: #(void dos_qquickimageprovider_delete(QQuickImageProvider *self))
]
