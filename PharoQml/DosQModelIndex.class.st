Class {
	#name : #DosQModelIndex,
	#superclass : #DosOpaqueObject,
	#category : #PharoQml
}

{ #category : #operations }
DosQModelIndex class >> create [
	^self ffiCall: #(DosQModelIndex * dos_qmodelindex_create(void))
]

{ #category : #'as yet unclassified' }
DosQModelIndex class >> create: index [
	^self ffiCall: #(DosQModelIndex * dos_qmodelindex_create_qmodelindex(DosQModelIndex *index))
]

{ #category : #'submorphs - add/remove' }
DosQModelIndex >> assign: index [
	self ffiCall: #(DosQModelIndex * dos_qmodelindex_assign(DosQModelIndex *self, const DosQModelIndex *index))
]

{ #category : #'submorphs - add/remove' }
DosQModelIndex >> childRow: row column: column [
	^self ffiCall: #(DosQModelIndex * dos_qmodelindex_child(const DosQModelIndex *self, int row, int column))
]

{ #category : #'submorphs - add/remove' }
DosQModelIndex >> column [
	^self ffiCall: #(int dos_qmodelindex_column(const DosQModelIndex *self))
]

{ #category : #'submorphs - add/remove' }
DosQModelIndex >> data: role [
	^self ffiCall: #(DosQVariant * dos_qmodelindex_data(const DosQModelIndex *self, int role))
]

{ #category : #'submorphs - add/remove' }
DosQModelIndex >> delete [
	self ffiCall: #(void dos_qmodelindex_delete(DosQModelIndex *self))
]

{ #category : #'submorphs - add/remove' }
DosQModelIndex >> internalPointer [
	^self ffiCall: #(void * dos_qmodelindex_internalPointer(DosQModelIndex *self))
]

{ #category : #'submorphs - add/remove' }
DosQModelIndex >> isValid [
	^self ffiCall: #(DosQVariant * dos_qmodelindex_data(const DosQModelIndex *self))
]

{ #category : #'submorphs - add/remove' }
DosQModelIndex >> parent [
	^self ffiCall: #(DosQModelIndex * dos_qmodelindex_parent(const DosQModelIndex *self))
]

{ #category : #'submorphs - add/remove' }
DosQModelIndex >> row [
	^self ffiCall: #(int dos_qmodelindex_row(const DosQModelIndex *self))
]

{ #category : #'submorphs - add/remove' }
DosQModelIndex >> siblingRow: row column: column [
	^self ffiCall: #(DosQModelIndex * dos_qmodelindex_sibling(const DosQModelIndex *self, int row, int column))
]
