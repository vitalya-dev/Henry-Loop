var pd = point_direction(x, y, mouse_x, mouse_y);
var dd = angle_difference(image_angle, pd);

draw_text(0, 0, point_distance(x, y, mouse_x, mouse_y));