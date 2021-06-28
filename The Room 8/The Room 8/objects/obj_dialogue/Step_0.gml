if (position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left)) {
  if (ds_queue_empty(messages)) {
    obj_camera_manager.camera_pop();
  } else {
    current_message = ds_queue_dequeue(messages);
  }
}

