/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

on_show = function() {
  audio_stop_all();
  audio_play_sound(Shot_blow_destruction, 10, false);
}