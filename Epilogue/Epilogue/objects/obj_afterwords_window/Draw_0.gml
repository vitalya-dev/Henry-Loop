draw_self();
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fn_afterwords);

draw_set_alpha(alpha);
draw_text_ext(x, y, current_message, 80, sprite_width);
