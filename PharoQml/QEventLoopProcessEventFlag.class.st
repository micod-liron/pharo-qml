Class {
	#name : #QEventLoopProcessEventFlag,
	#superclass : #FFIEnumeration,
	#classVars : [
		'QEventLoopProcessEventFlagExcludeUserInputEvents',
		'QEventLoopProcessEventFlagProcessAllEvents',
		'QEventLoopProcessEventFlagProcessAllEventsWaitForMoreEvents',
		'QEventLoopProcessEventFlagProcessExcludeSocketNotifiers'
	],
	#category : #PharoQml
}

{ #category : #'enum declaration' }
QEventLoopProcessEventFlag class >> enumDecl [
	^#(
		QEventLoopProcessEventFlagProcessAllEvents 16r00
		QEventLoopProcessEventFlagExcludeUserInputEvents 16r01
		QEventLoopProcessEventFlagProcessExcludeSocketNotifiers 16r02
		QEventLoopProcessEventFlagProcessAllEventsWaitForMoreEvents 16r03
	)
]
