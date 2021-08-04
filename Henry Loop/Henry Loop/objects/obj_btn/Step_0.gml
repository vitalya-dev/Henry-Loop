switch (_state) {
  case "NORMAL":
    if (position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left)) {
      on_click();
      _state = "PRESSED";
    }
    image_xscale = 1; 
    image_yscale = 1;
    break;
  case "PRESSED":
    if (mouse_check_button_released(mb_left)) {
      _state = "NORMAL";
    }
    image_xscale = 0.9; 
    image_yscale = 0.9;
    break;
}