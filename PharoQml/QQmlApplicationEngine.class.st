Class {
	#name : #QQmlApplicationEngine,
	#superclass : #DosOpaqueObject,
	#category : #PharoQml
}

{ #category : #operations }
QQmlApplicationEngine class >> create [
	^self ffiCall: #(QQmlApplicationEngine * dos_qqmlapplicationengine_create(void))
]

{ #category : #adding }
QQmlApplicationEngine >> addImageProvider: provider named: name [
	self ffiCall: #(void dos_qqmlapplicationengine_addImageProvider(QQmlApplicationEngine *self, String name, QQuickImageProvider *provider))
]

{ #category : #actions }
QQmlApplicationEngine >> addImportPath: path [
	self ffiCall: #(void dos_qqmlapplicationengine_add_import_path(QQmlApplicationEngine *self, String path))
]

{ #category : #actions }
QQmlApplicationEngine >> context [
	^self ffiCall: #(QQmlContext * dos_qqmlapplicationengine_context(QQmlApplicationEngine *self))
]

{ #category : #adding }
QQmlApplicationEngine >> delete [
	self ffiCall: #(void dos_qqmlapplicationengine_delete(QQmlApplicationEngine *self))
]

{ #category : #actions }
QQmlApplicationEngine >> load: filename [
	self ffiCall: #(void dos_qqmlapplicationengine_load(QQmlApplicationEngine *self, String filename))
]

{ #category : #actions }
QQmlApplicationEngine >> loadData: data [
	self ffiCall: #(void dos_qqmlapplicationengine_load_data(QQmlApplicationEngine *self, String data))
]

{ #category : #actions }
QQmlApplicationEngine >> loadUrl: url [
	self ffiCall: #(void dos_qqmlapplicationengine_load_url(QQmlApplicationEngine *self, QUrl *url))
]
