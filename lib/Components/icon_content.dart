import 'package:flutter/material.dart';
import '../constants.dart';
// final textStyle = TextStyle(
//   color: Color(0xFF8D8E98),
//   fontSize: 18,
// );

class IconContent extends StatelessWidget {
  final Icon icon;
  final String label;
  IconContent({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: ktextStyle,
        )
      ],
    );
  }
}
