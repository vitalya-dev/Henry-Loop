if (position_meeting(mouse_x, mouse_y, self)) {
  image_index = 1;
} else {
  image_index = 0;
}


if (position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left)) {
  obj_camera_manager.show_window(obj_twr_card_window);     
}