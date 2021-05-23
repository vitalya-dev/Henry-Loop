mouse_over_row = floor((mouse_y - y) / (15 * image_yscale));
mouse_over_col = floor((mouse_x - x) /  (16 * image_xscale));


switch (state) {
  case "IDLE":
    if (mouse_over_row < 0 or mouse_over_row > 4)
      break;
    if (mouse_over_col < 0 or mouse_over_col > 20)
      break;
    if (position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left)) {
      if (punchcard[mouse_over_row][mouse_over_col] != "_")
        break;
      mouse_pressed_row = mouse_over_row;
      mouse_pressed_col = mouse_over_col;
      state = "PRESSED";
    }
    if (position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_right)) {
      if (punchcard[mouse_over_row][mouse_over_col] == "_")
        break;
      for (var i = mouse_over_col; i >= 0; i--) {
	      if (is_numeric(punchcard[mouse_over_row][i])) {
	        for (var j = 1; j < punchcard[mouse_over_row][i]; j++) {
	          punchcard[mouse_over_row][i + j] = "_";
	        }
          punchcard[mouse_over_row][i] = "_";
	        break;
	      }
      }
    }
    break;
  case "PRESSED":
    if (mouse_check_button_released(mb_left)) {
      punchcard[mouse_pressed_row][mouse_pressed_col] = 1;
      for (var i = mouse_pressed_col + 1; i <= clamp(mouse_over_col, 0, 20); i++) {
        if (punchcard[mouse_pressed_row][i] == "_") {
          punchcard[mouse_pressed_row][i] = "x";
          punchcard[mouse_pressed_row][mouse_pressed_col] += 1;
        } else {
          break; 
        }
      }
      mouse_pressed_row = -1;
      mouse_pressed_col = -1;
      state = "IDLE";
    }
    break;
}

