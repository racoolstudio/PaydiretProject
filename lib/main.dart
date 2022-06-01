import 'package:flutter/material.dart';
import 'package:ui3/screens/welcomPage.dart';

void main() {
  return runApp(const UI3());
}

class UI3 extends StatelessWidget {
  const UI3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: WelcomPage());
  }
}
