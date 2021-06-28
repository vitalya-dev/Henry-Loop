origin_top_left_x = x - sprite_xoffset + 16;
origin_top_left_y = y - sprite_yoffset;

mouse_over_col = floor((mouse_x - origin_top_left_x) /  16);
mouse_over_row = floor((mouse_y - origin_top_left_y) / 15);


switch (state) {
  case "IDLE":
    if (mouse_over_col < 0 or mouse_over_col > 9)
      break;
    if (mouse_over_row < 0 or mouse_over_row > 3)
      break;
    if (position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left)) {
      if (card[mouse_over_row][mouse_over_col] != "_")
        break;
      mouse_pressed_row = mouse_over_row;
      mouse_pressed_col = mouse_over_col;
      state = "PRESSED";
    }
    if (position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_right)) {
      if (card[mouse_over_row][mouse_over_col] == "_")
        break;
      for (var i = mouse_over_col; i >= 0; i--) {
        if (is_numeric(card[mouse_over_row][i])) {
          for (var j = 1; j < card[mouse_over_row][i]; j++) {
            card[mouse_over_row][i + j] = "_";
          }
          card[mouse_over_row][i] = "_";
          break;
        }
      }
    }
    break;
  case "PRESSED":
    if (mouse_check_button_released(mb_left)) {
      card[mouse_pressed_row][mouse_pressed_col] = 1;
      for (var i = mouse_pressed_col + 1; i <= clamp(mouse_over_col, 0, 9); i++) {
        if (card[mouse_pressed_row][i] == "_") {
          card[mouse_pressed_row][i] = "x";
          card[mouse_pressed_row][mouse_pressed_col] += 1;
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