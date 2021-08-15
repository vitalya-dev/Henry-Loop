/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

visible = false;

interact = function(by) {
  obj_camera_manager.show_dialog(obj_gertrude_first_meet_dialog);    
  audio_play_sound(Short_Whoosh, 10, false);
}