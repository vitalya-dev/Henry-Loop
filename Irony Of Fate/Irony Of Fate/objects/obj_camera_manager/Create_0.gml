twardowski = instance_find(obj_twardowski, 0);
cameras_stack = ds_stack_create();

current_camera = {
  x : 0,
  y : 0,
  w : 0,
  h : 0,
  state : ""
};

next_camera = {
  x : 0,
  y : 0,
  w : 0,
  h : 0,
  state : ""
};

current_camera_copy = function() {
  return {
    x : current_camera.x,
    y : current_camera.y,
    w : current_camera.w, 
    h : current_camera.h,
    state : current_camera.state
  };
}

next_camera_copy = function() {
  return {
    x : next_camera.x,
    y : next_camera.y,
    w : next_camera.w, 
    h : next_camera.h,
    state : next_camera.state
  };
}

camera_pop = function() {
  if (ds_stack_size(cameras_stack) > 1) {
    next_camera = ds_stack_pop(cameras_stack);
    current_camera.state = "TRANSITION";
    alarm[1] = 1;
  }
}

follow_player = function() {
  if (current_camera.state == "TRANSITION") {
    current_camera = next_camera_copy();
  }
  ds_stack_push(cameras_stack, current_camera_copy());
  next_camera.w = 320;
  next_camera.h = 180;
  next_camera.state = "FOLLOW_PLAYER";
  current_camera.state = "TRANSITION";
  alarm[1] = 1;
}

show_window = function(window) {
  if (current_camera.state == "TRANSITION") {
    current_camera = next_camera_copy();
  }
  ds_stack_push(cameras_stack, current_camera_copy());
  next_camera.w = window.sprite_width;
  next_camera.h = window.sprite_height;
  next_camera.x = window.x - next_camera.w / 2;
  next_camera.y = window.y - next_camera.h / 2;
  next_camera.state = "SHOW_WINDOW";
  current_camera.state = "TRANSITION";
  alarm[1] = 1;
};

show_dialog = function(dialog) {
  if (current_camera.state == "TRANSITION") {
    current_camera = next_camera_copy();
  }
  ds_stack_push(cameras_stack, current_camera_copy());
  next_camera.w = dialog.sprite_width;
  next_camera.h = dialog.sprite_height;
  next_camera.x = dialog.x - next_camera.w / 2;
  next_camera.y = dialog.y - next_camera.h / 2;
  next_camera.state = "SHOW_DIALOG";
  current_camera.state = "TRANSITION";
  alarm[1] = 1;
}

show_menu = function() {
  if (current_camera.state == "TRANSITION") {
    current_camera.state = next_camera_copy();
  }
  ds_stack_push(cameras_stack, current_camera_copy());
  next_camera.w = obj_menu.sprite_width - 10;
  next_camera.h = obj_menu.sprite_height - 10;
  next_camera.x = obj_menu.x - next_camera.w / 2;
  next_camera.y = obj_menu.y - next_camera.h / 2;
  next_camera.state = "SHOW_MENU";
  current_camera.state = "TRANSITION";
  alarm[1] = 1;
}



