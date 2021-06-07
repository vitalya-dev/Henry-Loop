function find_top_window_under_cursor() {
  top_window = noone;
  for (var i = 0; i < instance_number(obj_window); i++) {
    var window = instance_find(obj_window, i);
    if (!collision_point(mouse_x, mouse_y, window, true, false)) {
      continue;
    }
    if (top_window == noone) {
      top_window = window;
    } else if (top_window.depth > window.depth) {
      top_window = window;
    }
  };
  return top_window;
}