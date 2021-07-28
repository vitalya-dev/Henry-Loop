numbers[0] = 0;
numbers[1] = 0;
numbers[2] = 0;
numbers[3] = 0;

number = 24;

shuffle_numbers = function() {
  randomize();
  for (var i = 0; i < 4; i++) {
  	var j = irandom_range(1, 3);
  	var tmp = numbers[j];
  	numbers[j] = numbers[0];
  	numbers[0] = tmp;
  }
}