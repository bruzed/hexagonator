import controlP5.*;
import processing.pdf.*;

/*float radius1 = random(100, 399);
float radius2 = random(400, 499);
float radius3 = random(500, 599);
float radius4 = random(600, 699);
float radius5 = random(700, 800);*/

float radius1 = 211;
float radius2 = 432;
float radius3 = 564;
float radius4 = 675;
float radius5 = 745;

/*int size1 = int(random(10, 150));
int size2 = int(random(10, 150));
int size3 = int(random(10, 150));
int size4 = int(random(10, 150));
int size5 = int(random(10, 150));*/

int size1 = 26;
int size2 = 168;
int size3 = 75;
int size4 = 107;
int size5 = 149;

color color1 = color(81, 24, 45, 200);
color color2 = color(74, 48, 44, 240);
color color3 = color(2, 45, 36, 200);
color color4 = color(78, 42, 7, 200);
color color5 = color(56, 74, 71, 100);

float distance1 = 15;
float distance2 = 13;
float distance3 = 26;
float distance4 = 98;
float distance5 = 83;

int numHexagons1 = 50;
int numHexagons2 = 30;
int numHexagons3 = 55;
int numHexagons4 = 65;
int numHexagons5 = 65;

Pattern pattern1;
Pattern pattern2;
Pattern pattern3;
Pattern pattern4;
Pattern pattern5;

ControlP5 ui;
ControlWindow controlWindow;

HexaGui hexaGui1;
HexaGui hexaGui2;
HexaGui hexaGui3;
HexaGui hexaGui4;
HexaGui hexaGui5;

boolean isSaveFrame = false;

String filename = "";

void setup() 
{
	size(1280, 1100);
	frameRate(30);
	smooth();
	
	ui = new ControlP5(this);
	ui.setAutoDraw(false);
	controlWindow = ui.addControlWindow("controls", 0, 0, 1280, 220);
	controlWindow.setBackground(color(0));
	
	pattern1 = new Pattern(size1, color1, radius1, distance1, numHexagons1);
	pattern2 = new Pattern(size2, color2, radius2, distance2, numHexagons2);
	pattern3 = new Pattern(size3, color3, radius3, distance3, numHexagons3);
	pattern4 = new Pattern(size4, color4, radius4, distance4, numHexagons4);
	pattern5 = new Pattern(size5, color5, radius5, distance5, numHexagons5);
	
	//guis
	drawGui();
}

void drawGui()
{
	hexaGui1 = new HexaGui(1, ui, controlWindow, size1, radius1, color1);
	hexaGui2 = new HexaGui(2, ui, controlWindow, size2, radius2, color2);
	hexaGui3 = new HexaGui(3, ui, controlWindow, size3, radius3, color3);
	hexaGui4 = new HexaGui(4, ui, controlWindow, size4, radius4, color4);
	hexaGui5 = new HexaGui(5, ui, controlWindow, size5, radius5, color5);
	hexaGui1.draw();
	hexaGui2.draw();
	hexaGui3.draw();
	hexaGui4.draw();
	hexaGui5.draw();
}

void draw() 
{	
	if(isSaveFrame) {
		println(isSaveFrame);
		int year = year();
		int month = month();
		int day = day();
		int hour = hour();
		int minute = minute();
		int second = second();
		String randomNumber = "" + year + month + day + hour + minute + second + "";
		filename = "hexagons-" + randomNumber + ".pdf";
		fill(255, 255, 255);
		saveValues(randomNumber);
		beginRecord(PDF, filename);
	}
	
	background(0);
	stroke(255, 0, 0, 50);
	
	ui.draw();
	
	point(width/2, height/2);
	noFill();
	
	pushMatrix();
		translate(width/2, height/2);
		pattern1.draw();
		pattern2.draw();
		pattern3.draw();
		pattern4.draw();
		pattern5.draw();
	popMatrix();
	
	if(isSaveFrame) {
		endRecord();
		isSaveFrame = false;
	}
	
	text("filename: " + filename, 10, 20);
}

void saveValues(String $randomNumber)
{
	String[] patterns = new String[5];
	
	patterns[0] = pattern1.getRadius() + "\t" + pattern1.getNumHexagons() + "\t" + pattern1.getDistance() + "\t" + pattern1.getSize() + "\t" + pattern1.getStrokeWeight() + "\t" + red(pattern1.getColor()) + "\t" + green(pattern1.getColor()) + "\t" + blue(pattern1.getColor()) + "\t" + alpha(pattern1.getColor());
	
	patterns[1] = pattern2.getRadius() + "\t" + pattern2.getNumHexagons() + "\t" + pattern2.getDistance() + "\t" + pattern2.getSize() + "\t" + pattern2.getStrokeWeight() + "\t" + red(pattern2.getColor()) + "\t" + green(pattern2.getColor()) + "\t" + blue(pattern2.getColor()) + "\t" + alpha(pattern2.getColor());
	
	patterns[2] = pattern3.getRadius() + "\t" + pattern3.getNumHexagons() + "\t" + pattern3.getDistance() + "\t" + pattern3.getSize() + "\t" + pattern3.getStrokeWeight() + "\t" + red(pattern3.getColor()) + "\t" + green(pattern3.getColor()) + "\t" + blue(pattern3.getColor()) + "\t" + alpha(pattern3.getColor());
	
	patterns[3] = pattern4.getRadius() + "\t" + pattern4.getNumHexagons() + "\t" + pattern4.getDistance() + "\t" + pattern4.getSize() + "\t" + pattern4.getStrokeWeight() + "\t" + red(pattern4.getColor()) + "\t" + green(pattern4.getColor()) + "\t" + blue(pattern4.getColor()) + "\t" + alpha(pattern4.getColor());
	
	patterns[4] = pattern5.getRadius() + "\t" + pattern5.getNumHexagons() + "\t" + pattern5.getDistance() + "\t" + pattern5.getSize() + "\t" + pattern5.getStrokeWeight() + "\t" + red(pattern5.getColor()) + "\t" + green(pattern5.getColor()) + "\t" + blue(pattern5.getColor()) + "\t" + alpha(pattern5.getColor());
									
	saveStrings("hexagons-" + $randomNumber +".tsv", patterns);
}

void mousePressed()
{
	isSaveFrame = true;
}

//
//controls
//

//radius
void pattern1_radius(float $value)
{
	pattern1.setRadius( $value );
}

void pattern2_radius(float $value)
{
	pattern2.setRadius( $value );
}

void pattern3_radius(float $value)
{
	pattern3.setRadius( $value );
}

void pattern4_radius(float $value)
{
	pattern4.setRadius( $value );
}

void pattern5_radius(float $value)
{
	pattern5.setRadius( $value );
}

//num hexagons
void pattern1_num_hexagons(float $value)
{
	pattern1.setNumHexagons( int($value) );
}

void pattern2_num_hexagons(float $value)
{
	pattern2.setNumHexagons( int($value) );
}

void pattern3_num_hexagons(float $value)
{
	pattern3.setNumHexagons( int($value) );
}

void pattern4_num_hexagons(float $value)
{
	pattern4.setNumHexagons( int($value) );
}

void pattern5_num_hexagons(float $value)
{
	pattern5.setNumHexagons( int($value) );
}

//hexagons distance
void pattern1_hexagons_distance(float $value)
{
	pattern1.setDistance($value);
}

void pattern2_hexagons_distance(float $value)
{
	pattern2.setDistance($value);
}

void pattern3_hexagons_distance(float $value)
{
	pattern3.setDistance($value);
}

void pattern4_hexagons_distance(float $value)
{
	pattern4.setDistance($value);
}

void pattern5_hexagons_distance(float $value)
{
	pattern5.setDistance($value);
}

//hexagon size
void pattern1_hexagon_size(float $value)
{
	pattern1.setSize(int($value));
}

void pattern2_hexagon_size(float $value)
{
	pattern2.setSize(int($value));
}

void pattern3_hexagon_size(float $value)
{
	pattern3.setSize(int($value));
}

void pattern4_hexagon_size(float $value)
{
	pattern4.setSize(int($value));
}

void pattern5_hexagon_size(float $value)
{
	pattern5.setSize(int($value));
}

//hexagon stroke
void pattern1_hexagon_stroke(float $value)
{
	pattern1.setStrokeWeight(int($value));
}

void pattern2_hexagon_stroke(float $value)
{
	pattern2.setStrokeWeight(int($value));
}

void pattern3_hexagon_stroke(float $value)
{
	pattern3.setStrokeWeight(int($value));
}

void pattern4_hexagon_stroke(float $value)
{
	pattern4.setStrokeWeight(int($value));
}

void pattern5_hexagon_stroke(float $value)
{
	pattern5.setStrokeWeight(int($value));
}

//color
//red
void pattern1_red(float $value)
{
	pattern1.setRed($value);
}

void pattern2_red(float $value)
{
	pattern2.setRed($value);
}

void pattern3_red(float $value)
{
	pattern3.setRed($value);
}

void pattern4_red(float $value)
{
	pattern4.setRed($value);
}

void pattern5_red(float $value)
{
	pattern5.setRed($value);
}

//green
void pattern1_green(float $value)
{
	pattern1.setGreen($value);
}

void pattern2_green(float $value)
{
	pattern2.setGreen($value);
}

void pattern3_green(float $value)
{
	pattern3.setGreen($value);
}

void pattern4_greeb(float $value)
{
	pattern4.setGreen($value);
}

void pattern5_green(float $value)
{
	pattern5.setGreen($value);
}

//blue
void pattern1_blue(float $value)
{
	pattern1.setBlue($value);
}

void pattern2_blue(float $value)
{
	pattern2.setBlue($value);
}

void pattern3_blue(float $value)
{
	pattern3.setBlue($value);
}

void pattern4_blue(float $value)
{
	pattern4.setBlue($value);
}

void pattern5_blue(float $value)
{
	pattern5.setBlue($value);
}

//alpha
void pattern1_alpha(float $value)
{
	pattern1.setAlpha($value);
}

void pattern2_alpha(float $value)
{
	pattern2.setAlpha($value);
}

void pattern3_alpha(float $value)
{
	pattern3.setAlpha($value);
}

void pattern4_alpha(float $value)
{
	pattern4.setAlpha($value);
}

void pattern5_alpha(float $value)
{
	pattern5.setAlpha($value);
}