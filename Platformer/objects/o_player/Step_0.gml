/// @description Player shits



//Check move right-left
if o_input.x_input_ != 0 && !place_meeting(x + o_input.x_input_*speed_, y, o_solid){
	hspeed_ = speed_ * o_input.x_input_;
//Pixel Perfect movement
} else if o_input.x_input_ != 0 && place_meeting(x + o_input.x_input_*speed_, y, o_solid){
	hspeed_ = 0;
	while !place_meeting(x + sign(o_input.x_input_), y, o_solid) {
		x += sign(o_input.x_input_);
	}
//Reset
} else {
	hspeed_ = 0;	
}

//Gravity
if !place_meeting(x, y+sign(gravity_), o_solid){
	vspeed_ = gravity_;	
} else {
	vspeed_ = 0;
}	


x += hspeed_;
y += vspeed_;