/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (place_meeting(x, y, obj_ricardo)) {
  obj_camera_manager.show_window(obj_twr_ricardo_window);
  audio_play_sound(Short_Whoosh, 10, false);
}

if (place_meeting(x, y, obj_gertrude)) {
  obj_gertrude.talk();
  audio_play_sound(Short_Whoosh, 10, false);
}
