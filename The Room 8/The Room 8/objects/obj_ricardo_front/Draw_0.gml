draw_self()

switch (state) {
  case "INIT":
    image_index = 0;
    draw_set_color(make_colour_rgb(57, 160, 15));
    draw_set_halign(fa_center);
    draw_set_font(fn_ricardo_head);
    draw_text(x, y - 115, string(floor(lerp(0, obj_card.sum(), progress))));
    break;
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