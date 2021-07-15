draw_self();

draw_sprite(spr_twenty_four_segment_1, 0, x - 3, y - 3);
draw_sprite(spr_twenty_four_segment_2, 0, x + 5, y - 5);
draw_sprite(spr_twenty_four_segment_3, 0, x + 5, y + 5);
draw_sprite(spr_twenty_four_segment_4, 0, x - 4, y + 4);

draw_sprite(spr_twentyfour_small_circle, 0, x, y);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fn_twentyfour_small);
draw_set_color(c_black);
draw_text(x, y, "24");

draw_set_font(fn_twentyfour_big);
draw_text(x - sprite_width / 3, y, "7");
draw_text(x, y - sprite_width / 3, "8");
draw_text(x + sprite_width / 3, y, "8");
draw_text(x, y + sprite_width / 3, "4");


