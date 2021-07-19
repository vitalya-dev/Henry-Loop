var op = instance_place(x, y, obj_twentyfour_op);

if (op != noone) {
  image_index = 1;
} else {
  image_index = 0;   
}


if (image_index = 1 and op.state == "NORMAL") {
  execute(op.name);
  instance_deactivate_object(self);
  instance_deactivate_object(op);
}