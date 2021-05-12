switch (state) {
  case "OPEN":
    if (position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left)) {
      state = "CLOSE";
      image_index = 0;
       x += sprite_width;
    }
    break;
  case "CLOSE":
    if (position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left)) {
      state = "OPEN";
      image_index = 1;
      x -= sprite_width;
    }
    break;
}