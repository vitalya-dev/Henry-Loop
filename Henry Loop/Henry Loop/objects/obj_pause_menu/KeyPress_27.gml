if (obj_camera_manager.current_camera.window != obj_pause_menu) {
  obj_camera_manager.show_window(obj_pause_menu);
  audio_play_sound(Short_Whoosh, 10, false);
} else {
  obj_camera_manager.camera_pop();
  audio_play_sound(Short_Whoosh, 10, false);
}