// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function shuffle_array(arr) {
  randomize();
  for (var i = 0; i < array_length_1d(arr); i++) {
  	var j = irandom_range(1, array_length_1d(arr) - 1);
  	var tmp = arr[j];
  	arr[@j] = arr[0];
  	arr[@0] = tmp;
    show_debug_message("foo");
  }
}