twardowski = instance_find(obj_twardowski, 0);
cameras_stack = ds_stack_create();

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
  alarm[1] = 1;
}

follow_player = function() {
  ds_stack_push(cameras_stack, current_camera_copy());
  current_camera.w = 320;
  current_camera.h = 180;
  current_camera.state = "FOLLOW_PLAYER";
}

show_window = function(window_name) {
  for (var i = 0; i < instance_number(obj_window); i++) {
    var window = instance_find(obj_window, i);
    if (window.name == window_name) {
      ds_stack_push(cameras_stack, current_camera_copy());
      current_camera.w = window.sprite_width - 10;
      current_camera.h = window.sprite_height - 10;
      current_camera.x = window.x - current_camera.w / 2;
      current_camera.y = window.y - current_camera.h / 2;
      current_camera.state = "SHOW_WINDOW";
      break;
    }
  }
};

show_dialog = function(dialog) {
  ds_stack_push(cameras_stack, current_camera_copy());
  current_camera.w = dialog.sprite_width;
  current_camera.h = dialog.sprite_height;
  current_camera.x = dialog.x - current_camera.w / 2;
  current_camera.y = dialog.y - current_camera.h / 2;
  current_camera.state = "SHOW_DIALOG";
  current_camera.dialog = dialog.id;
}

show_credits = function() {
  ds_stack_push(cameras_stack, current_camera_copy());
  current_camera.w = obj_credits.sprite_width - 10;
  current_camera.h = obj_credits.sprite_height - 10;
  current_camera.x = obj_credits.x - current_camera.w / 2;
  current_camera.y = obj_credits.y - current_camera.h / 2;
  current_camera.state = "SHOW_CREDITS";
}

show_menu = function() {
  ds_stack_push(cameras_stack, current_camera_copy());
  current_camera.w = obj_menu.sprite_width - 10;
  current_camera.h = obj_menu.sprite_height - 10;
  current_camera.x = obj_menu.x - current_camera.w / 2;
  current_camera.y = obj_menu.y - current_camera.h / 2;
  current_camera.state = "SHOW_MENU";
}


show_intro = function() {
  ds_stack_push(cameras_stack, current_camera_copy());
  current_camera.w = obj_intro.sprite_width - 10;
  current_camera.h = obj_intro.sprite_height - 10;
  current_camera.x = obj_intro.x - current_camera.w / 2;
  current_camera.y = obj_intro.y - current_camera.h / 2;
  current_camera.state = "SHOW_INTRO";
  obj_intro.state = "START";
}