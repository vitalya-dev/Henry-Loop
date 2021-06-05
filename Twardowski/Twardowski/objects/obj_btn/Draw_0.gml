switch (state) {
	case "NORMAL":
		draw_sprite_ext(self.sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, -1, 1)
		break;
	case "PRESSED":
		draw_sprite_ext(self.sprite_index, 0, x, y, image_xscale * 0.9, image_yscale * 0.9, image_angle, -1, 1)
		break;
 }