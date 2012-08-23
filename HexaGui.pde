class HexaGui
{
	ControlP5 ui;
	ControlWindow controlWindow;
	int id;
	
	float radius;
	int num_hexagons;
	float hexagons_distance;
	int size;
	int stroke_weight;
	
	Slider pattern_radius_slider;
	Slider num_hexagons_slider;
	Slider hexagon_distance_slider;
	Slider hexagon_size_slider;
	Slider hexagon_stroke_slider;
	
	Slider r_slider;
	Slider g_slider;
	Slider b_slider;
	Slider a_slider;
	
	color strokeColor;
	
	HexaGui(int $id, ControlP5 $ui, ControlWindow $controlWindow, int $size, float $radius, color $strokeColor)
	{
		id = $id;
		ui = $ui;
		controlWindow = $controlWindow;
		size = $size;
		radius = $radius;
		strokeColor = $strokeColor;
	}
	
	void draw()
	{
		
		switch(id)
		{
			case 1:
				radius = pattern1.getRadius();
				num_hexagons = pattern1.getNumHexagons();
				hexagons_distance = pattern1.getDistance();
				size = pattern1.getSize();
				stroke_weight = pattern1.getStrokeWeight();
				strokeColor = pattern1.getColor();
				break;
			case 2:
				radius = pattern2.getRadius();
				num_hexagons = pattern2.getNumHexagons();
				hexagons_distance = pattern2.getDistance();
				size = pattern2.getSize();
				stroke_weight = pattern2.getStrokeWeight();
				strokeColor = pattern2.getColor();
				break;
			case 3:
				radius = pattern3.getRadius();
				num_hexagons = pattern3.getNumHexagons();
				hexagons_distance = pattern3.getDistance();
				size = pattern3.getSize();
				stroke_weight = pattern3.getStrokeWeight();
				strokeColor = pattern3.getColor();
				break;
			case 4:
				radius = pattern4.getRadius();
				num_hexagons = pattern4.getNumHexagons();
				hexagons_distance = pattern4.getDistance();
				size = pattern4.getSize();
				stroke_weight = pattern4.getStrokeWeight();
				strokeColor = pattern4.getColor();
				break;
			case 5:
				radius = pattern5.getRadius();
				num_hexagons = pattern5.getNumHexagons();
				hexagons_distance = pattern5.getDistance();
				size = pattern5.getSize();
				stroke_weight = pattern5.getStrokeWeight();
				strokeColor = pattern5.getColor();
				break;
		}
		
		ControlGroup gui = ui.addGroup("Pattern-" + id, 10 + (250 * (id-1)) , 20, 250);
		gui.moveTo(controlWindow);
		
		pattern_radius_slider = ui.addSlider(
			"pattern"+ id +"_radius",
			0, 1200, radius,
			0, 10,
			100, 10
		);
		pattern_radius_slider.setGroup(gui);
		
		num_hexagons_slider = ui.addSlider(
			"pattern"+ id +"_num_hexagons",
			0, 500, num_hexagons,
			0, 10 + pattern_radius_slider.getHeight() + 10,
			100, 10
		);
		num_hexagons_slider.setGroup(gui);
		
		hexagon_distance_slider = ui.addSlider(
			"pattern"+ id +"_hexagons_distance",
			0, 100, hexagons_distance,
			0, 10 + pattern_radius_slider.getHeight() + 10 + num_hexagons_slider.getHeight() + 10,
			100, 10
		);
		hexagon_distance_slider.setGroup(gui);
		
		hexagon_size_slider = ui.addSlider(
			"pattern"+ id +"_hexagon_size",
			0, 1200, size,
			0, 10 + pattern_radius_slider.getHeight() + 10 + num_hexagons_slider.getHeight() + 10 + hexagon_distance_slider.getHeight() + 10,
			100, 10
		);
		hexagon_size_slider.setGroup(gui);
		
		hexagon_stroke_slider = ui.addSlider(
			"pattern"+ id +"_hexagon_stroke",
			0, 50, stroke_weight,
			0, 10 + pattern_radius_slider.getHeight() + 10 + num_hexagons_slider.getHeight() + 10 + hexagon_distance_slider.getHeight() + 10 + hexagon_size_slider.getHeight() + 10,
			100, 10
		);
		hexagon_stroke_slider.setGroup(gui);
		
		//color
		r_slider = ui.addSlider(
			"pattern"+ id +"_red",
			0, 255, red(strokeColor),
			0, 10 + pattern_radius_slider.getHeight() + 10 + num_hexagons_slider.getHeight() + 10 + hexagon_distance_slider.getHeight() + 10 + hexagon_size_slider.getHeight() + 10 + hexagon_stroke_slider.getHeight() + 10,
			100, 10
		);
		r_slider.setGroup(gui);
		
		g_slider = ui.addSlider(
			"pattern"+ id +"_green",
			0, 255, green(strokeColor),
			0, 10 + pattern_radius_slider.getHeight() + 10 + num_hexagons_slider.getHeight() + 10 + hexagon_distance_slider.getHeight() + 10 + hexagon_size_slider.getHeight() + 10 + hexagon_stroke_slider.getHeight() + 10 + r_slider.getHeight() + 10,
			100, 10
		);
		g_slider.setGroup(gui);
		
		b_slider = ui.addSlider(
			"pattern"+ id +"_blue",
			0, 255, blue(strokeColor),
			0, 10 + pattern_radius_slider.getHeight() + 10 + num_hexagons_slider.getHeight() + 10 + hexagon_distance_slider.getHeight() + 10 + hexagon_size_slider.getHeight() + 10 + hexagon_stroke_slider.getHeight() + 10 + r_slider.getHeight() + 10 + g_slider.getHeight() + 10,
			100, 10
		);
		b_slider.setGroup(gui);
		
		a_slider = ui.addSlider(
			"pattern"+ id +"_alpha",
			0, 255, alpha(strokeColor),
			0, 10 + pattern_radius_slider.getHeight() + 10 + num_hexagons_slider.getHeight() + 10 + hexagon_distance_slider.getHeight() + 10 + hexagon_size_slider.getHeight() + 10 + hexagon_stroke_slider.getHeight() + 10 + r_slider.getHeight() + 10 + g_slider.getHeight() + 10 + b_slider.getHeight() + 10,
			100, 10
		);
		a_slider.setGroup(gui);
		
	}
	
}