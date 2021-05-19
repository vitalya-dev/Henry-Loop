switch (state) {
  case "OPEN":
    draw_self();
    draw_sprite_ext(spr_deck, 0, x + 3 * image_xscale, y + 4 * image_yscale, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
    break;
  case "CLOSE":
    draw_self();
    break;
}