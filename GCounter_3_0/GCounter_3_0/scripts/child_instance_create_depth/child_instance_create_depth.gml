// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function child_instance_create_depth(x, y, depth, obj) {
	child = instance_create_depth(self.x + x * image_xscale, self.y + y * image_yscale, depth, obj);
	child.image_xscale = image_xscale
	child.image_yscale = image_yscale
	child.image_angle = image_angle
  return child
}

