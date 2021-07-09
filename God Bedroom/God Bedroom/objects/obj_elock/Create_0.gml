// Inherit the parent event
event_inherited();

state = "LOCKED";
code = string(irandom(9)) + string(irandom(9)) + string(irandom(9));

get_input = function() {
  return string(obj_elock_button_1.number) + string(obj_elock_button_2.number) + string(obj_elock_button_3.number);  
}


