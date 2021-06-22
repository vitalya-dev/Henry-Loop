/// @description Delayed camera pop
if (ds_stack_size(cameras_stack) > 1) {
  current_camera = ds_stack_pop(cameras_stack);
}
