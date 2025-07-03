import 'dart:math';
import 'names.dart';
import 'package:word_generator/word_generator.dart';

void main() {
  runTask1();
  runTask2();
  runTask3();
}

void runTask1() {
  print('Task 1 --------------------------------------');

  List<int> numbers = List.generate(100, (_) => Random().nextInt(101));
  print('Повний список: $numbers');

  print('65-й елемент: ${numbers[64]}');

  numbers.insert(49, 1000000000);
  print('Після вставки 1000000000 на 50-ту позицію: $numbers');

  numbers.removeWhere((e) => [24, 45, 66, 88].contains(e));
  print('Після видалення 24, 45, 66, 88: $numbers');

  int sumDivBy3 = 0;
  for (var num in numbers) {
    if (num % 3 == 0) {
      sumDivBy3 += num;
    }
  }
  print('Сума чисел, кратних 3: $sumDivBy3');

  List<int> temp = [];
  for (var num in numbers) {
    if (num % 2 == 0) {
      temp.add(num);
    }
  }
  print('Кількість парних чисел у temp: ${temp.length}');
}

void runTask2() {
  print('Task 2 --------------------------------------');

  Set<String> uniqueNames1 = ukrainianNames1.toSet();
  Set<String> uniqueNames2 = ukrainianNames2.toSet();

  Set<String> common = uniqueNames1.intersection(uniqueNames2);
  print('Спільних імен: ${common.length}');

  Set<String> onlyIn1 = uniqueNames1.difference(uniqueNames2);
  print('Тільки в першому списку: $onlyIn1');

  Set<String> onlyIn2 = uniqueNames2.difference(uniqueNames1);
  print('Тільки в другому списку: $onlyIn2');
}


void runTask3() {
  print('Task 3 --------------------------------------');
  final wordGenerator = WordGenerator();
  List<String> nounsList = wordGenerator.randomNouns(50);

  Map<String, int> nounsMap = {
    for (var word in nounsList) word: word.length,
  };

  Map<String, int> tempNouns = {};
  for (var entry in nounsMap.entries) {
    if (entry.value % 2 == 0) {
      tempNouns[entry.key] = entry.value;
    }
  }

  print('Ключі з парною довжиною: ${tempNouns.keys.toList()}');
}