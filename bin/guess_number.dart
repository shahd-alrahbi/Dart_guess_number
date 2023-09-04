import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int numberofGuess = random.nextInt(20) + 1;
  print("Guess a number between 1 and 20");
  int? userInput = int.tryParse(stdin.readLineSync() ?? "");

  while (userInput != numberofGuess) {
    if (userInput! > 1 || userInput <= 20) {
      if (userInput > numberofGuess) {
        print("The number is less then guess");
        userInput = int.tryParse(stdin.readLineSync() ?? "");
      } else if (userInput < numberofGuess) {
        print("The number is more then  guess");
        userInput = int.tryParse(stdin.readLineSync() ?? "");
      } else {
        print("falid ");
      }
    }
  }

  if (userInput == numberofGuess) {
    print("guess correct");
  }
}
