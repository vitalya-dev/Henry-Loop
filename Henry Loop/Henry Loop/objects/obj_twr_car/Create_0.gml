/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

state = "EMPTY";

interact = function() {
  switch (state) {
    case "EMPTY":
      obj_camera_manager.show_dialog(obj_to_soon_dialog);
      break;
    case "GERTRUDE":
      break;
  }
}

