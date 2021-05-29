x = oPlayer.x;
y = oPlayer.y;

image_angle = point_direction(oPlayer.x, oPlayer.y, mouse_x, mouse_y);

if (image_angle > 0 && image_angle < 180) {
	layer = layer_get_id("gunback")
} else { 
	layer = layer_get_id("gunfront")
}