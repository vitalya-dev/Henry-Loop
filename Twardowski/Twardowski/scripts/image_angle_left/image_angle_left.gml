// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function image_angle_left(){
  return point_direction(0, 0, lengthdir_y(1, image_angle), -lengthdir_x(1, image_angle));
}