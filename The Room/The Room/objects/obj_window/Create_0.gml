var min_depth = -100;
for (var i = 0; i < instance_number(obj_window); i++) {
  var window = instance_find(obj_window, i);
  if (window.depth < min_depth) {
    min_depth = window.depth;
  }
};
depth = min_depth - 100;

state = "NORMAL";

close_btn = instance_create_depth(x, y, depth - 1, obj_window_close_btn);
close_btn.on_click = function() {
  instance_destroy();
}
mouse_last_pos_x = -1;
mouse_last_pos_y = -1;

content = noone;