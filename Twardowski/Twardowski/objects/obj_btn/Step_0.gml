switch (state) {
  case "NORMAL":
    if (position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left)) {
      on_click()
      state = "PRESSED";
    }
    break;
  case "PRESSED":
    if (mouse_check_button_released(mb_left)) {
      state = "NORMAL";
    }
    break;
 }