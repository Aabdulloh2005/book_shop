import 'package:book_shop/ui/screens/homepage.dart';
import 'package:book_shop/ui/screens/test_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MainRunner());
}

class MainRunner extends StatelessWidget {
  const MainRunner({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.grey[50]),
      debugShowCheckedModeBanner: false,
      home: TestScreen(),
    );
  }
}
