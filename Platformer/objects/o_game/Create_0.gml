/// @description Game create

instance_create_layer(x, y, "Helper", o_input);
instance_create_layer(x, y, "BG", o_bg);

global.can_move_ = true;
global.upsidedown_ = false;