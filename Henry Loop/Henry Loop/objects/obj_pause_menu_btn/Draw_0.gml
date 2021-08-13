if (is_mouse_hover) {
  draw_self();
}

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

draw_set_font(fn_pause_menu);

draw_text(x, y, text);