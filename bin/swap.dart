import 'dart:io';
void main() {
  List<int> readArray(String prompt) {
    print(prompt);
    String? input = stdin.readLineSync();
    return input!.split(' ').map(int.parse).toList();
  }
  print('Enter values for the first array, separated by spaces:');
  List<int> array1 = readArray('Array 1');

  print('Enter values for the second array, separated by spaces:');
  List<int> array2 = readArray('Array 2');
  if (array1.length != array2.length) {
    print('Error: Arrays must be of the same length to swap values.');
    return;
  }
  print('Original Array 1: $array1');
  print('Original Array 2: $array2');

  List<int> temp = List.from(array1);
  array1 = array2;
  array2 = temp;

  print('Swapped Array 1: $array1');
  print('Swapped Array 2: $array2');
}