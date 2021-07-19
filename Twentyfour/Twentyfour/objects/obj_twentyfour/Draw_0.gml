draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);


draw_set_font(fn_twentyfour_small);
draw_text(x - 0.6 * sprite_width, y - 0.6 * sprite_width,  numbers[0]);
draw_text(x + 0.6 * sprite_width, y - 0.6 * sprite_width,  numbers[1]);
draw_text(x +  0.6 * sprite_width, y + 0.6 * sprite_width, numbers[2]);
draw_text(x - 0.6 * sprite_width, y + 0.6 * sprite_width,  numbers[3]);

draw_set_font(fn_twentyfour_small);
draw_set_color(c_black);
draw_text(x, y, "24");