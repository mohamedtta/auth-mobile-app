import 'package:auth_task/features/Auth/logic/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/login_bottom.dart';
import '../widgets/login_forms.dart';
import '../widgets/upper_auth_frame.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void dispose() {
    super.dispose();
    Get.delete<LoginController>();
  }
  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return  Scaffold(
        body: ListView(
          children: const [
            UpperAuthFrame(),
            SizedBox(height: 30,),
            Center(child: Text('Login in to your account',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),)),
            LoginForms(),
            LoginBottom()
          ],
        ),
    );
  }
}
