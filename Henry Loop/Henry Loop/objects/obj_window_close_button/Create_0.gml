

// Inherit the parent event
event_inherited();

play_sound = false;
on_click = function() {
  audio_play_sound(Short_Whoosh, 10, false);
  alarm[1] = fps / 8;
} 