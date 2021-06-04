depth = -100 * instance_number(obj_window);
state = "NORMAL";

close_btn = instance_create_depth(x, y, depth - 1, obj_window_close_btn);
close_btn.on_click = function() {
  instance_destroy();
}
mouse_last_pos_x = -1;
mouse_last_pos_y = -1;

content = noone;