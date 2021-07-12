event_inherited();

state = "WAIT";

open = function(by) {
  switch (state) {
    case "WAIT":
      obj_man_woman.visible = true;
      obj_twardowski.playable = false;
      _open_helper(by);
      state = "NORMAL";
      alarm[1] = fps;
      break;
    case "NORMAL":
      _open_helper(by);
      break;
  }
}

