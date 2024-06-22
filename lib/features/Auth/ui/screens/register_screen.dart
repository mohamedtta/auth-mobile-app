import 'package:auth_task/features/Auth/logic/login_controller.dart';
import 'package:auth_task/features/Auth/logic/register_controller.dart';
import 'package:auth_task/features/Auth/ui/widgets/register_bottom.dart';
import 'package:auth_task/features/Auth/ui/widgets/register_forms.dart';
import 'package:auth_task/features/Auth/ui/widgets/upper_auth_frame.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  void dispose() {
    super.dispose();
    Get.delete<RegisterController>();
  }
  @override
  Widget build(BuildContext context) {
    RegisterController registerController = Get.put(RegisterController());
    return Scaffold(
      body: Form(
        key: registerController.globalKey,
        child: ListView(
          children: const [
            UpperAuthFrame(),
            SizedBox(height: 30,),
            Center(child: Text('Create new account',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),)),
            RegisterForms(),
            RegisterBottom(),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
