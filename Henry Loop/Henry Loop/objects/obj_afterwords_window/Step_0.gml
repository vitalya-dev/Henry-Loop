if (position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left) and not ds_queue_empty(messages)) {
  current_message = ds_queue_dequeue(messages);
  alpha = 0;
}

if (alpha < 1) { 
  alpha += 0.01;
} 