if (position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left)) {
  audio_play_sound(Short_Whoosh, 10, false);
  obj_camera_manager.camera_pop();  
}