switch (state) {
  case "IDLE":
    if (position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left)) {
      state = "PRESSED";
      mouse_last_pos = mouse_y; 
    }

    break;
  case "PRESSED":
    var diff = mouse_last_pos - mouse_y;
    if (abs(diff) > 15) {
      image_angle += diff;
      mouse_last_pos = mouse_y;
      if (diff > 0) 
        on_wheel_up();
      else {
        on_wheel_down();
      }
    }
    if (mouse_check_button_released(mb_left)) {
      state = "IDLE";
    }
    break;
 }