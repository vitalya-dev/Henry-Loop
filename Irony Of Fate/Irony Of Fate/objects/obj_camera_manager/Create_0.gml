twardowski = instance_find(obj_twardowski, 0);
cameras_stack = ds_stack_create();

next_state = "";
current_camera = {
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

camera_pop = function() {
  if (ds_stack_size(cameras_stack) > 1) {
    current_camera = ds_stack_pop(cameras_stack);
    next_state = current_camera.state;
    current_camera.state = "TRANSITION";
    alarm[1] = 1;
  }
}

follow_player = function() {
  ds_stack_push(cameras_stack, current_camera_copy());
  current_camera.w = 320;
  current_camera.h = 180;
  current_camera.state = "TRANSITION";
  next_state = "FOLLOW_PLAYER";
  alarm[1] = 1;
}

show_window = function(window) {
  ds_stack_push(cameras_stack, current_camera_copy());
  current_camera.w = window.sprite_width - 10;
  current_camera.h = window.sprite_height - 10;
  current_camera.x = window.x - current_camera.w / 2;
  current_camera.y = window.y - current_camera.h / 2;
  current_camera.state = "TRANSITION";
  next_state = "SHOW_WINDOW";
  alarm[1] = 1;
};

show_dialog = function(dialog) {
  ds_stack_push(cameras_stack, current_camera_copy());
  current_camera.w = dialog.sprite_width;
  current_camera.h = dialog.sprite_height;
  current_camera.x = dialog.x - current_camera.w / 2;
  current_camera.y = dialog.y - current_camera.h / 2;
  current_camera.state = "TRANSITION";
  next_state = "SHOW_DIALOG";
  alarm[1] = 1;
}

show_credits = function() {
}

show_menu = function() {
  ds_stack_push(cameras_stack, current_camera_copy());
  current_camera.w = obj_menu.sprite_width - 10;
  current_camera.h = obj_menu.sprite_height - 10;
  current_camera.x = obj_menu.x - current_camera.w / 2;
  current_camera.y = obj_menu.y - current_camera.h / 2;
  current_camera.state = "TRANSITION";
  next_state = "SHOW_MENU";
  alarm[1] = 1;
}


show_intro = function() {
}