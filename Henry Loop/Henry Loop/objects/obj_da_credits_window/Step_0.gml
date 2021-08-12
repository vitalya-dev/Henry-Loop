if (position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left)) {
  switch (image_index) {
    case 0:
      image_index = 1;
      break;
    case 1:
      image_index = 2;
      break;
    case 2:
      break;
  }
}

if (image_index == 2 and keyboard_check_pressed(vk_space)) {
  if (audio_is_playing(Demon_Alcohol)) {
    audio_sound_gain(Demon_Alcohol, 0, 1000 * 15);
  }
  room_goto(Room_epilogue); 
}