/// @function distance_switch();
function distance_switch(){
	var _y = 0;
	while !place_meeting(x, y-_y*sign(o_player.gravity_), o_solid){
		_y++;	
	}
	return _y;
}


/// @function switch_sprite_origin(object, speed);
/// @param {real}  _y		//distance entre sol et sol
/// @param {real}  _yy		//dernier y a avoir toucher le sol
/// @param {index} _sprite
function switch_sprite_origin(_y, _yy, _sprite){
	if _y > 0 {
		if y > round(_yy+(_y/2*sign(o_player.gravity_))) {
			sprite_set_offset(_sprite, sprite_width/2, sprite_height);
		} else {
			sprite_set_offset(_sprite, sprite_width/2, 0);
		}
	}
}