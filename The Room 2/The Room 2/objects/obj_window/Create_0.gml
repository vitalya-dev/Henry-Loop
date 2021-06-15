close_btn = instance_create_layer(bbox_right, bbox_top, layer, obj_window_close_btn);
close_btn.visible = false;
close_btn.on_click = function() {
  scr_camera_set_size(320, 180);
  scr_camera_follow(obj_twardowski);
}

content = noone;
