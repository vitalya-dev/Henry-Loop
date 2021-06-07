if (mouse_check_button_pressed(mb_left)) { 
	obj_window.active = false;
  top_window = find_top_window_under_cursor();
  if (top_window) {
    top_window.active = true;
  }
}

if (mouse_check_button_released(mb_left)) { 
	obj_window.active = false;
}