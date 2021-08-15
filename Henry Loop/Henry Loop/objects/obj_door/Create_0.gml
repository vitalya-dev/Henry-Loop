event_inherited();

open = function(by) { }

interact = function(by) {
  open(by);
  audio_play_sound(Door_open, 10, false);
}