event_inherited();
state = "OPEN_0";
open = function(by) {
  switch (state) {
    case "OPEN_0":
      _open_helper(by);
      break;
    case "OPEN_1":
      _open_helper(by);
      state = "OPEN_0";
      alarm[1] = 3 * fps;
      break;
  }  
}