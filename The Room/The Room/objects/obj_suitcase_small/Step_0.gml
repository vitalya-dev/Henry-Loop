switch (state) {
  case "NORMAL":
    if (position_meeting(mouse_x, mouse_y, self)) {
      state = "HOVER";
    }
    image_index = 0;
    break;
  case "HOVER":
    if (mouse_check_button_pressed(mb_left) and related_window and related_window.x + related_window.y == 2 * 999999) {
      related_window.x = x;
      related_window.y = y;
    }
    if (!position_meeting(mouse_x, mouse_y, self)) {
      state = "NORMAL";
    }
    image_index = 1;
    break;
}