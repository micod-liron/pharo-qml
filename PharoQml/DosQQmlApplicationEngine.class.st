Class {
	#name : #DosQQmlApplicationEngine,
	#superclass : #DosOpaqueObject,
	#category : #PharoQml
}

{ #category : #operations }
DosQQmlApplicationEngine class >> create [
	^self ffiCall: #(DosQQmlApplicationEngine * dos_qqmlapplicationengine_create(void))
]

{ #category : #adding }
DosQQmlApplicationEngine >> addImageProvider: vptr_i named: name [
	self ffiCall: #(void dos_qqmlapplicationengine_addImageProvider(DosQQmlApplicationEngine *self, const char *name, DosQQuickImageProvider *vptr_i))
]

{ #category : #actions }
DosQQmlApplicationEngine >> addImportPath: path [
	self ffiCall: #(void dos_qqmlapplicationengine_add_import_path(DosQQmlApplicationEngine *self, const char *path))
]

{ #category : #actions }
DosQQmlApplicationEngine >> context [
	^self ffiCall: #(DosQQmlContext * dos_qqmlapplicationengine_context(DosQQmlApplicationEngine *self))
]

{ #category : #adding }
DosQQmlApplicationEngine >> delete [
	self ffiCall: #(void dos_qqmlapplicationengine_delete(DosQQmlApplicationEngine *self))
]

{ #category : #actions }
DosQQmlApplicationEngine >> load: filename [
	self ffiCall: #(void dos_qqmlapplicationengine_load(DosQQmlApplicationEngine *self, const char *filename))
]

{ #category : #actions }
DosQQmlApplicationEngine >> loadData: data [
	self ffiCall: #(void dos_qqmlapplicationengine_load_url(DosQQmlApplicationEngine *self, const char *data))
]

{ #category : #actions }
DosQQmlApplicationEngine >> loadUrl: url [
	self ffiCall: #(void dos_qqmlapplicationengine_load_url(DosQQmlApplicationEngine *self, DosQUrl *url))
]
