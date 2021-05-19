switch (state) {
  case "UP":
    if (position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left)) {
      state = "DOWN";
    }
    break;
  case "DOWN":
    if (position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left)) {
      state = "UP";
    }
    break;
}