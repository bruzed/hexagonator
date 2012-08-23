class Pattern
{
	
	Hexagon _hexagon;
	int _sideLength;
	color _strokeColor;
	float _radius;
	
	int _strokeWeight = 2;
	int NUM_HEXAGONS = int(random(20, 100));
	float DISTANCE;
	float ROTATION = 0;
	
	ArrayList<Hexagon> _hexagons;
	
	Pattern( int $sideLength, color $strokeColor, float $radius, float $distance, int $numHexagons )
	{
		_sideLength = $sideLength;
		_strokeColor = $strokeColor;
		_radius = $radius;
		DISTANCE = $distance;
		NUM_HEXAGONS = $numHexagons;
		_hexagons = new ArrayList<Hexagon>();
	}
	
	void draw()
	{
		for( int i = 0; i < NUM_HEXAGONS; i++ ) {
			float angle = i * DISTANCE;
			float offsetX = cos(radians(angle)) * (_radius);
			float offsetY = sin(radians(angle)) * (_radius);
			_hexagon = new Hexagon(_sideLength, _strokeWeight, _strokeColor, offsetX, offsetY, ROTATION );
			_hexagons.add(_hexagon);
			_hexagon.draw();
		}
	}
	
	float getRadius()
	{
		return _radius;
	}
	
	int getNumHexagons()
	{
		return NUM_HEXAGONS;
	}
	
	float getDistance()
	{
		return DISTANCE;
	}
	
	int getSize()
	{
		return _sideLength;
	}
	
	int getStrokeWeight()
	{
		return _strokeWeight;
	}
	
	color getColor()
	{
		return _strokeColor;
	}
	
	void setRadius(float $value)
	{
		_radius = $value;
	}
	
	void setNumHexagons(int $value)
	{
		NUM_HEXAGONS = $value;
	}
	
	void setDistance(float $value)
	{
		DISTANCE = $value;
	}
	
	void setSize(int $value)
	{
		_sideLength = $value;
	}
	
	void setStrokeWeight(int $value)
	{
		_strokeWeight = $value;
	}
	
	void setRed(float $value)
	{
		float red = $value;
		float green = green(_strokeColor);
		float blue = blue(_strokeColor);
		float alpha = alpha(_strokeColor);
		_strokeColor = color(red, green, blue, alpha);
	}
	
	void setGreen(float $value)
	{
		float red = red(_strokeColor);
		float green = $value;
		float blue = blue(_strokeColor);
		float alpha = alpha(_strokeColor);
		_strokeColor = color(red, green, blue, alpha);
	}
	
	void setBlue(float $value)
	{
		float red = red(_strokeColor);
		float green = green(_strokeColor);
		float blue = $value;
		float alpha = alpha(_strokeColor);
		_strokeColor = color(red, green, blue, alpha);
	}
	
	void setAlpha(float $value)
	{
		float red = red(_strokeColor);
		float green = green(_strokeColor);
		float blue = blue(_strokeColor);
		float alpha = $value;
		_strokeColor = color(red, green, blue, alpha);
	}
	
}