import '../constants.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final String label;
  final IconData icon;

  const IconContent({Key? key, required this.label, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80),
        const SizedBox(height: 15),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
