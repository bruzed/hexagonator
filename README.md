#hexagonator

Creates awesome hexagon patterns.

###Spec/Usage:

- Unzip hexgonator.zip and launch the app
- 2 windows should open up
	- Main window: contains the generated graphic
	- Gui window: contains sliders to control various parameters for the generated graphic
- Hexagons are drawn around 5 rings from the center outward, ring 1 is the innermost ring and ring 5 is the outermost. 
- In the gui window, each group of controls is named pattern 1-5 based on the ring it effects.
- Parameters:
	- PATTERN[number]_RADIUS: radius of the ring
	- PATTERN[number]_NUM_HEXAGONS: number of hexagons on the ring
	- PATTERN[number]_HEXAGONS_DISTANCE: distance between each hexagon
	- PATTERN[number]_HEXAGON_SIZE: size of the hexagons
	- PATTERN[number]_HEXAGON_STROKE: stroke weight for the hexagons
	- PATTERN[number]_RED: red value for the hexagons on the ring
	- PATTERN[number]_GREEN: green value for the hexagons on the ring
	- PATTERN[number]_BLUE: blue value for the hexagons on the ring
	- PATTERN[number]_ALPHA: alpha value for the hexagons on the ring
- To save the graphic, click on the main window. A PDF and TSV file will get saved in the same folder as the app.
- The PDF file can be opened in a vector editor.
- The TSV file stores all the values for the generated graphic.

