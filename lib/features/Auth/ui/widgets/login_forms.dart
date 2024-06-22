import 'package:auth_task/features/Auth/logic/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/shared_widgets/my_form.dart';

class LoginForms extends StatelessWidget {
  const LoginForms({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.find();
    return Form(
      key: loginController.globalKey,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          MyForm(
            labelText: 'Email',
            controller: loginController.emailController,
            validator: (String? value) {
              return loginController.formValidation(value!);
            },
          ),
          GetBuilder<LoginController>(
              builder: (loginController){
                return MyForm(
                  labelText: 'Password',
                  showText: loginController.isPasswordHidden,
                  suffixIcon: IconButton(
                    onPressed: (){
                      loginController.showAndHidePassword();
                    },
                    icon: loginController.isPasswordHidden ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
                  ),
                  controller: loginController.passwordController,
                  validator: (String? value) {
                    return loginController.formValidation(value!);
                  },
                );
              }
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
