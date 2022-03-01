Class {
	#name : #QAbstractItemModelCallbacks,
	#superclass : #FFIStructure,
	#classVars : [
		'OFFSET_CANFETCHMORE',
		'OFFSET_COLUMNCOUNT',
		'OFFSET_DATA',
		'OFFSET_FETCHMORE',
		'OFFSET_FLAGS',
		'OFFSET_HASCHILDREN',
		'OFFSET_HEADERDATA',
		'OFFSET_INDEX',
		'OFFSET_PARENT',
		'OFFSET_ROLENAMES',
		'OFFSET_ROWCOUNT',
		'OFFSET_SETDATA'
	],
	#category : #PharoQml
}

{ #category : #'field definition' }
QAbstractItemModelCallbacks class >> fieldsDesc [
	^#(
		RowCountCallback rowCount
		ColumnCountCallback columnCount
		DataCallback data
		SetDataCallback setData
		RoleNamesCallback roleNames
		FlagsCallback flags
		HeaderDataCallback headerData
		IndexCallback index
		ParentCallback parent
		HasChildrenCallback hasChildren
		CanFetchMoreCallback canFetchMore
		FetchMoreCallback fetchMore
	)
]

{ #category : #'accessing - structure variables' }
QAbstractItemModelCallbacks >> canFetchMore [
	"This method was automatically generated"
	^CanFetchMoreCallback forAddress: ((handle pointerAt: OFFSET_CANFETCHMORE) asInteger)
]

{ #category : #'accessing - structure variables' }
QAbstractItemModelCallbacks >> canFetchMore: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_CANFETCHMORE
		put: (anObject 
			ifNotNil: [ anObject thunk asExternalAddress ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing - structure variables' }
QAbstractItemModelCallbacks >> columnCount [
	"This method was automatically generated"
	^ColumnCountCallback forAddress: ((handle pointerAt: OFFSET_COLUMNCOUNT) asInteger)
]

{ #category : #'accessing - structure variables' }
QAbstractItemModelCallbacks >> columnCount: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_COLUMNCOUNT
		put: (anObject 
			ifNotNil: [ anObject thunk asExternalAddress ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing - structure variables' }
QAbstractItemModelCallbacks >> data [
	"This method was automatically generated"
	^DataCallback forAddress: ((handle pointerAt: OFFSET_DATA) asInteger)
]

{ #category : #'accessing - structure variables' }
QAbstractItemModelCallbacks >> data: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_DATA
		put: (anObject 
			ifNotNil: [ anObject thunk asExternalAddress ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing - structure variables' }
QAbstractItemModelCallbacks >> fetchMore [
	"This method was automatically generated"
	^FetchMoreCallback forAddress: ((handle pointerAt: OFFSET_FETCHMORE) asInteger)
]

{ #category : #'accessing - structure variables' }
QAbstractItemModelCallbacks >> fetchMore: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_FETCHMORE
		put: (anObject 
			ifNotNil: [ anObject thunk asExternalAddress ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing - structure variables' }
QAbstractItemModelCallbacks >> flags [
	"This method was automatically generated"
	^FlagsCallback forAddress: ((handle pointerAt: OFFSET_FLAGS) asInteger)
]

{ #category : #'accessing - structure variables' }
QAbstractItemModelCallbacks >> flags: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_FLAGS
		put: (anObject 
			ifNotNil: [ anObject thunk asExternalAddress ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing - structure variables' }
QAbstractItemModelCallbacks >> hasChildren [
	"This method was automatically generated"
	^HasChildrenCallback forAddress: ((handle pointerAt: OFFSET_HASCHILDREN) asInteger)
]

{ #category : #'accessing - structure variables' }
QAbstractItemModelCallbacks >> hasChildren: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_HASCHILDREN
		put: (anObject 
			ifNotNil: [ anObject thunk asExternalAddress ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing - structure variables' }
QAbstractItemModelCallbacks >> headerData [
	"This method was automatically generated"
	^HeaderDataCallback forAddress: ((handle pointerAt: OFFSET_HEADERDATA) asInteger)
]

{ #category : #'accessing - structure variables' }
QAbstractItemModelCallbacks >> headerData: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_HEADERDATA
		put: (anObject 
			ifNotNil: [ anObject thunk asExternalAddress ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing - structure variables' }
QAbstractItemModelCallbacks >> index [
	"This method was automatically generated"
	^IndexCallback forAddress: ((handle pointerAt: OFFSET_INDEX) asInteger)
]

{ #category : #'accessing - structure variables' }
QAbstractItemModelCallbacks >> index: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_INDEX
		put: (anObject 
			ifNotNil: [ anObject thunk asExternalAddress ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing - structure variables' }
QAbstractItemModelCallbacks >> parent [
	"This method was automatically generated"
	^ParentCallback forAddress: ((handle pointerAt: OFFSET_PARENT) asInteger)
]

{ #category : #'accessing - structure variables' }
QAbstractItemModelCallbacks >> parent: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_PARENT
		put: (anObject 
			ifNotNil: [ anObject thunk asExternalAddress ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing - structure variables' }
QAbstractItemModelCallbacks >> roleNames [
	"This method was automatically generated"
	^RoleNamesCallback forAddress: ((handle pointerAt: OFFSET_ROLENAMES) asInteger)
]

{ #category : #'accessing - structure variables' }
QAbstractItemModelCallbacks >> roleNames: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_ROLENAMES
		put: (anObject 
			ifNotNil: [ anObject thunk asExternalAddress ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing - structure variables' }
QAbstractItemModelCallbacks >> rowCount [
	"This method was automatically generated"
	^RowCountCallback forAddress: ((handle pointerAt: OFFSET_ROWCOUNT) asInteger)
]

{ #category : #'accessing - structure variables' }
QAbstractItemModelCallbacks >> rowCount: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_ROWCOUNT
		put: (anObject 
			ifNotNil: [ anObject thunk asExternalAddress ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing - structure variables' }
QAbstractItemModelCallbacks >> setData [
	"This method was automatically generated"
	^SetDataCallback forAddress: ((handle pointerAt: OFFSET_SETDATA) asInteger)
]

{ #category : #'accessing - structure variables' }
QAbstractItemModelCallbacks >> setData: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_SETDATA
		put: (anObject 
			ifNotNil: [ anObject thunk asExternalAddress ]
			ifNil: [ ExternalAddress null ])
]
