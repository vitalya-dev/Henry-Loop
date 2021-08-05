// Inherit the parent event
event_inherited();

state = "WAIT";

open = function(by) {
  switch (state) {
    case "WAIT":
      _open_helper(by);
      alarm[1] = fps;
      obj_man_woman.visible = true;
      obj_twardowski.playable = false;
      state = "NORMAL";
      break;
    case "NORMAL":
      _open_helper(by);
      break;
  }
}

