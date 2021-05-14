switch (state) {
  case "FLICKERING":
    if (!self.is_flick) {
      draw_rectangle_colour(x, y, x + sprite_width, y + sprite_height, colour, colour, colour, colour, false);
    }
    break;
  case "SOLID":
    draw_rectangle_colour(x, y, x + sprite_width, y + sprite_height, colour, colour, colour, colour, false);
    break;
  case "OFF":
    break;
 }