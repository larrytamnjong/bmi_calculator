import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  final String buttonTitle;
  final Function onTap;
  BottomButton({required this.buttonTitle, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        child: Center(
            child: Text(
          buttonTitle,
          style: kcalculateButton,
        )),
        margin: EdgeInsets.only(top: 15),
        height: kbuttomContainerHeight,
        width: double.infinity,
        color: kbuttomBarColor,
        padding: EdgeInsets.only(bottom: 15),
      ),
    );
  }
}
