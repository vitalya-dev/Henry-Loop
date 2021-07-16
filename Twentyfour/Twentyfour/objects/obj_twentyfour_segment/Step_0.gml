var _inst = instance_place(x, y, obj_twentyfour_op);

if (_inst != noone) {
  switch (_inst.state) {
    case "DRAG":
      image_index = 1;
      break;
    case "NORMAL":
      instance_destroy();
      instance_destroy(_inst);
      break;
  }
} else {
  image_index = 0;   
}