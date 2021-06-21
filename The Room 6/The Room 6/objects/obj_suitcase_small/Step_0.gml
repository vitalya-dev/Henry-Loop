switch (state) {
  case "NORMAL":
    if (position_meeting(mouse_x, mouse_y, self)) {
      state = "HOVER";
    }
    image_index = 0;
    break;
  case "HOVER":
    if (mouse_check_button_pressed(mb_left) and related_window ) {
      obj_camera_manager.show_window(related_window);
    }
    if (!position_meeting(mouse_x, mouse_y, self)) {
      state = "NORMAL";
    }
    image_index = 1;
    break;
}