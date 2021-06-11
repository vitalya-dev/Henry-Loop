state = "NORMAL";

mouse_last_pos_x = -1;
mouse_last_pos_y = -1;

close_btn = instance_create_layer(bbox_right, bbox_top, layer, obj_window_close_btn);
close_btn.visible = false;
close_btn.on_click = function() {
  x = 999999;
  y = 999999;
}

content = noone;
