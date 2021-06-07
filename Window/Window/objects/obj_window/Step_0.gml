switch (state) {
  case "NORMAL":
    if (position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left)) {
      mouse_last_pos_x = mouse_x;
      mouse_last_pos_y = mouse_y;
      state = "DRAG";
    }
    break;
  case "DRAG":
    var x_move = mouse_x - mouse_last_pos_x;
    var y_move = mouse_y - mouse_last_pos_y;
    if (!place_meeting(x + x_move, y + y_move, obj_window)) {
      x += x_move;
      y += y_move;
      mouse_last_pos_x = mouse_x;
      mouse_last_pos_y = mouse_y;
    }
    if (mouse_check_button_released(mb_left)) {
      state = "NORMAL";
    }
    break;
}