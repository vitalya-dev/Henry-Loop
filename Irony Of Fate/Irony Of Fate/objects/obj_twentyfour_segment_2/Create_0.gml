/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

execute = function(op_name) {
  switch (op_name) {
    case "add":
      obj_twentyfour.number += obj_twentyfour.numbers[1];
      break;
    case "sub":
      obj_twentyfour.number -= obj_twentyfour.numbers[1];
      break;
    case "div":
      obj_twentyfour.number /= obj_twentyfour.numbers[1];
      break;
    case "mul":
      obj_twentyfour.number *= obj_twentyfour.numbers[1];
      break;
  }
}