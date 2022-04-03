import '../constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({Key? key, required this.onTap, required this.buttonTitle})
      : super(key: key);

  final void Function()? onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child: Text(buttonTitle, style: kLargeButtonTextStyle)),
        color: kBottomContainerColour,
        margin: const EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
