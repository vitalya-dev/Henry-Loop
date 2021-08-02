draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(fn_twentyfour_big);

if (obj_twentyfour_segment_1.visible) {
  draw_text(x - 0.6 * sprite_width, y - 0.6 * sprite_width,  numbers[0]);
}

if (obj_twentyfour_segment_2.visible) {
  draw_text(x + 0.6 * sprite_width, y - 0.6 * sprite_width,  numbers[1]);
}

if (obj_twentyfour_segment_3.visible) {
  draw_text(x +  0.6 * sprite_width, y + 0.6 * sprite_width, numbers[2]);
}

if (obj_twentyfour_segment_4.visible) {
  draw_text(x - 0.6 * sprite_width, y + 0.6 * sprite_width,  numbers[3]);
}

draw_set_font(fn_twentyfour_small);
draw_set_color(c_black);
draw_text(x, y, number);