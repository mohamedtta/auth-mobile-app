import 'package:auth_task/features/Auth/logic/register_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../../core/shared_widgets/my_form.dart';

class RegisterForms extends StatelessWidget {
  const RegisterForms({super.key});

  @override
  Widget build(BuildContext context) {
    RegisterController registerController = Get.find();
    return Column(
      children: [
        const SizedBox(height: 20,),
        MyForm(labelText: 'Username', controller: registerController.usernameController,validator: (String? value){
          return registerController.formValidation(value!);
        },),
        MyForm(labelText: 'Email', controller: registerController.emailController,validator: (String? value){
          return registerController.formValidation(value!);
        }),
        MyForm(labelText: 'Password', controller: registerController.passwordController,validator: (String? value){
          return registerController.formValidation(value!);
        }),
        const SizedBox(height: 20,),
      ],
    );
  }
}
