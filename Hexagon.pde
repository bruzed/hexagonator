class Hexagon
{
	
	int _sideLength;
	float _offsetX;
	float _offsetY;
	color _strokeColor;
	float _rotation;
	int _strokeWeight;
	
	Hexagon( int $sideLength, int $strokeWeight, color $strokeColor, float $offsetX, float $offsetY, float $rotation )
	{
		_sideLength = $sideLength;
		_strokeWeight = $strokeWeight;
		_offsetX = $offsetX;
		_offsetY = $offsetY;
		_strokeColor = $strokeColor;
		_rotation = $rotation;
	}
	
	void draw()
	{
		noFill();
		stroke(_strokeColor);
		strokeWeight(_strokeWeight);
		
		float c = _sideLength;
		float a = cos(radians(30)) * c;
		float b = sin(radians(30)) * c;

		float[] A = {a, 0};
		float[] B = {2 * a, b};
		float[] C = {2 * a, b + c};
		float[] D = {a, 2 * c};
		float[] E = {a / c, b + c};
		float[] F = {a / c, b};
		
		float centerX = (F[0] - B[0]) + _offsetX;
		float centerY = (A[1] - D[1]) + _offsetY;
		
		pushMatrix();
			translate(centerX/2, centerY/2);
			rotate(radians(_rotation));
			beginShape();
				vertex(A[0], A[1]);
				vertex(B[0], B[1]);
				vertex(C[0], C[1]);
				vertex(D[0], D[1]);
				vertex(E[0], E[1]);
				vertex(F[0], F[1]);
				vertex(A[0], A[1]);
			endShape();
		popMatrix();
	}
	
}