var op = instance_place(x, y, obj_twentyfour_op);

if (op != noone) {
  image_index = 1;
} else {
  image_index = 0;   
}


if (visible && image_index = 1 and op.state == "NORMAL") {
  execute(op.name);
	audio_play_sound(Beepbox, 10, false);
  self.visible = false;
  op.visible = false;
}