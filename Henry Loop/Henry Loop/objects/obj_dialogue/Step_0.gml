if (current_message == "") {
  current_message = ds_queue_dequeue(messages);
}

if (position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left)) {
  if (ds_queue_empty(messages)) {
    obj_camera_manager.camera_pop();
    finish();
  } else {
    current_message = ds_queue_dequeue(messages);
  }
  audio_play_sound(Short_Whoosh, 10, false);
}

