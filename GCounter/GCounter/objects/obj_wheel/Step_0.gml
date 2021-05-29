switch (state) {
  case "IDLE":
    if (position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left)) {
      state = "PRESSED";
      mouse_last_pos = mouse_y; 
    }
    break;
  case "PRESSED":
    var diff = mouse_last_pos - mouse_y;
    if (diff > 15) {
      image_angle += 15;
      on_wheel_up();
      mouse_last_pos = mouse_y;
    }
    if (diff < -15) {
      image_angle -= 15;
      on_wheel_down();
      mouse_last_pos = mouse_y;
    }
    if (mouse_check_button_released(mb_left)) {
      state = "IDLE";
    }
    break;
}