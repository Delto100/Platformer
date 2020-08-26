/// @description Game create

instance_create_layer(x, y, "Helper", o_input);
instance_create_layer(x, y, "Solid", o_bg);

global.can_move_ = true;
global.upsidedown_ = false;