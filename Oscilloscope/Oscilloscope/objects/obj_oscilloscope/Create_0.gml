/// @description Insert description here
// You can write your code in this editor
screen = child_instance_create(3, 4, obj_oscilloscope_screen);
on_btn = child_instance_create(77, 39, obj_oscilloscope_btn_on);
pause_btn = child_instance_create(64, 25, obj_oscilloscope_btn_pause);
left_btn = child_instance_create(64, 15, obj_oscilloscope_btn_left);
right_btn = child_instance_create(76, 15, obj_oscilloscope_btn_right);
plus_btn = child_instance_create(64, 4, obj_oscilloscope_btn_plus);
minus_btn = child_instance_create(76, 4, obj_oscilloscope_btn_minus);


plus_btn.on_click = function() {
  screen.scale += 1;
}

minus_btn.on_click = function() {
  if (screen.scale > 1) {
    screen.scale -= 1;
  }
}
