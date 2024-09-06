import 'dart:io';
void main(){
  print("enter the string");
  String num =(stdin.readLineSync()!);
  var pal=num==num.split("").reversed.join();
  if(pal){
    print("it is palindrome");
  }else{
    print("it is not palindrome");
  }}