draw_self();
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fn_dialog);

var message = string_copy(current_message, 2, string_length(current_message) - 1);
var avatar = string_char_at(current_message, 1);
draw_text_ext(x - sprite_xoffset + 180, y, message, 80, sprite_width - 200);

switch (avatar) {
  case "@":
    draw_sprite(spr_avatar_twardowski, 0, x - sprite_xoffset + sprite_get_xoffset(spr_avatar_twardowski) + 10, y);
    break;
  case "#":
    draw_sprite(spr_avatar_gertrude, 0, x - sprite_xoffset + sprite_get_xoffset(spr_avatar_gertrude) + 10, y);
    break;
}
