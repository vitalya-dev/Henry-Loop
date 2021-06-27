event_inherited();
state = "OPEN";
open = function(by) {
  switch (state) {
    case "OPEN":
      _open_helper(by);
      break;
  }  
}