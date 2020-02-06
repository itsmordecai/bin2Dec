import 'dart:math';
import 'package:bin2Dec/bin2Dec.dart' as bin2Dec;
import 'dart:io';

void main() {
  //Input of a binary value from the user
  print('Enter a binary number: (Only 0\'s and 1\'s)');
  var binaryNum = int.tryParse(stdin.readLineSync());

  int decimalNum = binary2Dec(binaryNum);
  print('The decimal value of the binary $binaryNum is $decimalNum');

}

// Function to convert binary to decimal
int binary2Dec(int binaryNum){
  int decimalNum = 0;
  int i = 0;

  while(true){
    int tempVar = binaryNum % 10;
    decimalNum += tempVar * pow(2, i);
    binaryNum = binaryNum ~/ 10;

    if(binaryNum == 0){
      break;
    }

    i++;
  }
  return decimalNum;
}
