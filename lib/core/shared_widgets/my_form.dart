import 'package:auth_task/core/theming/my_text_style.dart';
import 'package:flutter/material.dart';

class MyForm extends StatelessWidget {
  String labelText;
  Widget? suffixIcon;
  TextEditingController controller = TextEditingController();
  String? Function(String?)? validator;
  bool showText;
  MyForm({super.key,required this.labelText,required this.controller,required this.validator,this.showText=false,this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(labelText,style: MyTextStyle.labelTextStyle),
      subtitle: TextFormField(
        validator: validator,
        obscureText: showText,
        controller: controller,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15)
          )
        ),
      ),
    );
  }
}
