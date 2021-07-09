switch (state) {
  case "ON":
    image_index = 1;
    if (position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left)) {
      state = "OFF";
      on_click();
      audio_play_sound(Tumbler, 10, false);
    }
    break;
  case "OFF":
    image_index = 0;
    if (position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left)) {
      state = "ON";
      on_click();
      audio_play_sound(Tumbler, 10, false);
    }
    break;
}





