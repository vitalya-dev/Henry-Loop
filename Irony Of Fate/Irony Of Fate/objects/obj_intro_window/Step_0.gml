if (position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left)) {
  audio_play_sound(Short_Whoosh, 10, false);
  switch (image_index) {
    case 0:
      image_index = 1;
      break;
    case 1:
      image_index = 2;
      break;
    case 2:
      image_index = 3;
      break;
    case 3:
      image_index = 4;
      break;
    case 4:
      audio_play_sound(Groaan, 10, false);
      obj_camera_manager.camera_pop();  
      break;
  }
}