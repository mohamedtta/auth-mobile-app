import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  void Function()? onPressed;
  Color buttonColor;
  Widget myChild;
  MyButton({super.key,required this.onPressed , required this.buttonColor,required this.myChild});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      height: 44,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide.none
      ),
      minWidth: double.infinity,
      color: buttonColor,
      child: myChild

    );
  }
}
