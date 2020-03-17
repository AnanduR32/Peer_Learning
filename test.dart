import 'dart:io';

main() {
  var timer = stdin.readLineSync();
  timer.split(' ');
  print(timer[2]);
  var times = stdin.readLineSync();
  timer.split('');
  print(times[2]);
  var time = times;
  print(time);
  if ((int.parse(times[0]) == int.parse(timer[0])) &
      (int.parse(times[2]) == int.parse(timer[2]))) {
    print('\nMentor Available: ');
  }
}
