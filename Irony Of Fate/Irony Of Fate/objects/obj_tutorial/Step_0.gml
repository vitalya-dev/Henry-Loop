if (position_meeting(mouse_x, mouse_y, self) and obj_camera_manager.current_camera.state == "SHOW_TUTORIAL" and mouse_check_button_pressed(mb_left)) {
  obj_camera_manager.camera_pop();  
}