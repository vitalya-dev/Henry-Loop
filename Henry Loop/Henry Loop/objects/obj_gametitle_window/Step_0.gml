if (position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left)) {
  switch (image_index) {
    case 0:
      image_index = 1;
      audio_stop_all();
      audio_play_sound(Shot_blow_destruction, 10, false);
      audio_play_sound(No, 10, false);
      break;
    case 1:
      audio_play_sound(Shot_blow_destruction, 10, false);
      room_goto(Room_twr);
      break;
  }
}