import 'package:flutter/material.dart';

class SpaceH extends StatelessWidget {
  double horizontal;
  SpaceH({Key? key, required this.horizontal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: horizontal,
    );
  }
}

class SpaceV extends StatelessWidget {
  double vertical;
  SpaceV({required this.vertical});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: vertical,
    );
  }
}
