switch (image_index) {
  case 0:
    if (position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left)) {
      audio_play_sound(Shot_blow_destruction, 10, false);
      image_index = 1;
    }
    break;
  case 1:
    if (not audio_is_playing(Shot_blow_destruction)) {
      game_end()
    }
    break;
}