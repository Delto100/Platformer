/// @description Input

right_ = keyboard_check(vk_right);
left_ = keyboard_check(vk_left);
up_ = keyboard_check(vk_up);
down_ = keyboard_check(vk_down);
jump_ = keyboard_check_pressed(vk_up);

x_input_ = right_ - left_;