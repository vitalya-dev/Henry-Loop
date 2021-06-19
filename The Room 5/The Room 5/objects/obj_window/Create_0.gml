close_btn = instance_create_layer(bbox_right, bbox_top, layer, obj_window_close_btn);
close_btn.visible = false;
close_btn.on_click = function() {
  obj_camera_manager.camera_pop();
}

content = noone;
