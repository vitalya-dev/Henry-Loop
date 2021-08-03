event_inherited();
number = 0;


on_click = function() {
  number += 1;
  number = number mod 10;
  audio_play_sound(Key, 10, false);
}