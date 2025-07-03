import 'dart:math';

void main() {
  runTask1();
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