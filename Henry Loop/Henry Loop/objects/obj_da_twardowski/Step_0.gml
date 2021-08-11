/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (dead) {
  alarm[1] = -1;
	return;
}

if (x_move != 0 || y_move != 0) {
  if (alarm[1] == -1) {
    alarm[1] = random_range(5, 15) * fps;
  }
}

