import 'package:flutter/material.dart';
import 'GetStarted.dart';
void main(){
  runApp(const Coffee());
}
class Coffee extends StatefulWidget {
  const Coffee({super.key});

  @override
  State<Coffee> createState() => _CoffeeState();
}

class _CoffeeState extends State<Coffee> {
  @override
  Widget build(BuildContext context) {
    return
        MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            brightness: Brightness.dark,
            primaryColor: Colors.orange,
            // accentColor: Colors.orange,
            scaffoldBackgroundColor: Colors.black,
            textTheme: TextTheme(
            ),
            iconTheme: IconThemeData(color: Colors.white),
          ),
          home: Getstarted(),
        );


  }
}
