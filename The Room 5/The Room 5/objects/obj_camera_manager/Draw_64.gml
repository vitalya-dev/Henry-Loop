switch (current_camera.state) {
  case "SHOW_WINDOW":
    draw_sprite_ext(spr_window_close_btn, 0, window_get_width(), 0, 10, 10, image_angle, image_blend, image_alpha);
    break;
 }
 
draw_line_width(0, 0, window_get_width() - 2, 0, 2); // top
draw_line_width(0, window_get_height() - 2, window_get_width() - 2, window_get_height() - 2, 2); // bottom
draw_line_width(0, 0, 0, window_get_height() - 2, 2); // left
draw_line_width(window_get_width() - 2, 0, window_get_width() - 2, window_get_height() - 2, 2); // right