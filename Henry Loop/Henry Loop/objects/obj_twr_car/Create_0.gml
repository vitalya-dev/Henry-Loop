/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

state = "GERTRUDE";

interact = function() {
  switch (state) {
    case "EMPTY":
      obj_camera_manager.show_dialog(obj_to_soon_dialog);
      break;
    case "GERTRUDE":
      obj_twardowski.playable = false;
      obj_twardowski.visible = false;
      alarm[1] = fps;
      break;
  }
}

