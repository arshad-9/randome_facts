

import 'dart:math';

String getRandomImage(){
  List <String> cats = [
    'assets/Images/blackcat.png',
  'assets/Images/cat1.png',
  'assets/Images/cat2.png',
  'assets/Images/cat3.png',
  'assets/Images/cat4.png'];
  var random = Random();
  return cats[random.nextInt(cats.length)];
}