var op = instance_place(x, y, obj_twentyfour_op);

if (op != noone) {
  switch (op.state) {
    case "DRAG":
      image_index = 1;
      break;
    case "NORMAL":
      obj_twentyfour_big_circle.execute(op, id);
      break;
  }
} else {
  image_index = 0;   
}