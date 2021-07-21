if (obj_twentyfour.number == 0) {
  numbers[0] = 0;
  numbers[1] = 0;
  numbers[2] = 0;
  numbers[3] = 0;
  obj_camera_manager.camera_pop();
}

with (obj_twentyfour_op) {
  visible = true;  
}

with (obj_twentyfour_segment) {
  visible = true;  
}

obj_twentyfour_op_add.x = obj_twentyfour_op_add.start_x;
obj_twentyfour_op_add.y = obj_twentyfour_op_add.start_y;

obj_twentyfour_op_div.x = obj_twentyfour_op_div.start_x;
obj_twentyfour_op_div.y = obj_twentyfour_op_div.start_y;

obj_twentyfour_op_mul.x = obj_twentyfour_op_mul.start_x;
obj_twentyfour_op_mul.y = obj_twentyfour_op_mul.start_y;

obj_twentyfour_op_sub.x = obj_twentyfour_op_sub.start_x;
obj_twentyfour_op_sub.y = obj_twentyfour_op_sub.start_y;


number = 24;