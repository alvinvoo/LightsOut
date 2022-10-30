"
`LOCell` represents one cell SimpleClickMorph for LightsOut game `LOGame`

Its usage is `LOCell new`
"
Class {
	#name : #LOCell,
	#superclass : #SimpleSwitchMorph,
	#instVars : [
		'mouseAction'
	],
	#category : #'PBE-LightsOut'
}

{ #category : #initialization }
LOCell >> initialize [ 
	super initialize.
	self label: ''.
	self borderWidth: 2.
	bounds := 0 @ 0 corner: 16 @ 16.
	offColor := Color paleYellow.
	onColor := Color paleBlue darker.
	self useSquareCorners.
	self turnOff
	
]

{ #category : #'event handling' }
LOCell >> mouseAction: aBlock [ 
	mouseAction := aBlock
]

{ #category : #'event handling' }
LOCell >> mouseMove: anEvent [
]

{ #category : #'event handling' }
LOCell >> mouseUp: anEvent [
	self toggleState.
	mouseAction value
]
