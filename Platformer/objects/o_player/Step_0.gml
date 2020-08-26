/// @description Player shits

//input for moving player
if o_input.x_input_ != 0 {
	//add acceleration value
	hspeed_ += o_input.x_input_ * acceleration_;
	hspeed_ = clamp(hspeed_, -max_speed_, max_speed_);
} else {
	//add friction value
	hspeed_ = lerp(hspeed_, 0, friction_);
}

//Gravity
if !place_meeting(x, y+sign(gravity_), o_solid){
	vspeed_ += gravity_;
} else {
	//jumping
	if o_input.jump_ {
		global.can_move_ = false;
		if global.upsidedown_ == false {
			global.upsidedown_ = true;	
		} else if global.upsidedown_ == true {
			global.upsidedown_ = false;	
		}
		
		distance_upside_down_ = distance_switch();
		last_y_ground_ = y;
		gravity_ = -gravity_;
		x_scale_ = image_xscale * 0.7 ;
		y_scale_ = image_yscale * 1.3;
	}
}

//Run move script and revert
move();
switch_sprite_origin(distance_upside_down_, last_y_ground_,sprite_);

//Landing
if place_meeting(x, y+sign(gravity_), o_solid) && !place_meeting(x, yprevious+sign(gravity_), o_solid) {
	x_scale_ = image_xscale * 1.3;
	y_scale_ = image_yscale * 0.7;
	global.can_move_ = true;
}

//Return sprite normal
x_scale_ = lerp(x_scale_, image_xscale, 0.1);
y_scale_ = lerp(y_scale_, image_yscale, 0.1);
