import 'package:flutter/material.dart';
import 'package:first_app/role_dice.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientBackground extends StatelessWidget {
  const GradientBackground({super.key, required this.colors});
  const GradientBackground.purple({super.key})
      : colors = const [Colors.purple, Colors.black12];
  final List<Color> colors;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: colors, begin: startAlignment, end: endAlignment)),
      child: Center(
        child: RoleDice()
      ),
    );
  }
}

class StyleText extends StatelessWidget {
  const StyleText(this.text, {super.key});
  final String text;
  @override
  Widget build(conext) {
    return Text(
      text,
      style: const TextStyle(color: Colors.white, fontSize: 24),
    );
  }
}
