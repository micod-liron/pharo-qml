Class {
	#name : #QModelIndex,
	#superclass : #DosOpaqueObject,
	#category : #PharoQml
}

{ #category : #operations }
QModelIndex class >> create [
	^self ffiCall: #(QModelIndex * dos_qmodelindex_create(void))
]

{ #category : #'as yet unclassified' }
QModelIndex class >> create: index [
	^self ffiCall: #(QModelIndex * dos_qmodelindex_create_qmodelindex(QModelIndex *index))
]

{ #category : #'submorphs - add/remove' }
QModelIndex >> assign: index [
	self ffiCall: #(QModelIndex * dos_qmodelindex_assign(QModelIndex *self, const QModelIndex *index))
]

{ #category : #'submorphs - add/remove' }
QModelIndex >> childRow: row column: column [
	^self ffiCall: #(QModelIndex * dos_qmodelindex_child(const QModelIndex *self, int row, int column))
]

{ #category : #'submorphs - add/remove' }
QModelIndex >> column [
	^self ffiCall: #(int dos_qmodelindex_column(const QModelIndex *self))
]

{ #category : #'submorphs - add/remove' }
QModelIndex >> data: role [
	^self ffiCall: #(QVariant * dos_qmodelindex_data(const QModelIndex *self, int role))
]

{ #category : #'submorphs - add/remove' }
QModelIndex >> internalPointer [
	^self ffiCall: #(void * dos_qmodelindex_internalPointer(QModelIndex *self))
]

{ #category : #'submorphs - add/remove' }
QModelIndex >> isValid [
	^self ffiCall: #(bool dos_qmodelindex_data(const QModelIndex *self))
]

{ #category : #'submorphs - add/remove' }
QModelIndex >> parent [
	^self ffiCall: #(QModelIndex * dos_qmodelindex_parent(const QModelIndex *self))
]

{ #category : #'submorphs - add/remove' }
QModelIndex >> row [
	^self ffiCall: #(int dos_qmodelindex_row(const QModelIndex *self))
]

{ #category : #'submorphs - add/remove' }
QModelIndex >> siblingRow: row column: column [
	^self ffiCall: #(QModelIndex * dos_qmodelindex_sibling(const QModelIndex *self, int row, int column))
]
