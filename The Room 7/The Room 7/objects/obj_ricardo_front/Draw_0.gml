draw_self()

switch (state) {
  case "ERROR":
    image_index = 0;
    draw_set_color(make_colour_rgb(231, 16, 34));
    draw_set_halign(fa_center);
    draw_set_font(fn_ricardo_head);
    draw_text(x, y - 115, "≠3086");
    break;
  case "READY":
    image_index = 1;
    break;
}