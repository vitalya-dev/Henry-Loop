if (!surface_exists(graph_surface)) {
  graph_surface = surface_create(sprite_width, sprite_height);
}

surface_set_target(graph_surface);
draw_clear_alpha(c_black, 0);
switch (state) {
  case "ON":
    var origin_x = sprite_width - 4;
    var origin_y = 3;
    for (var i = self.offset; i < array_length(data) - 1; i++) {
      var x1 = (i - self.offset) * scale;
      var y1 = data[i] == 0 ? 37 : 0;
      var x2 = ((i + 1) - self.offset) * scale;
      var y2 = data[i + 1] == 0 ? 37 : 0;
      if (x2 > sprite_width - 6) {
        break;
      } 
      draw_line_width_color(origin_x - x1, origin_y + y1, origin_x - x2, origin_y + y2, 2, c_green, c_green);
    }
    break;
  case "OFF":
    break;
}
surface_reset_target();