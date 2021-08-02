if (position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left)) {
  if (sound != noone) {
    audio_play_sound(sound, 10, false);
  }
  obj_camera_manager.camera_pop();  
}