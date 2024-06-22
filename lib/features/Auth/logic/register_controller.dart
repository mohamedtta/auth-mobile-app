import 'package:auth_task/core/networking/api_const.dart';
import 'package:auth_task/core/networking/api_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../ui/screens/login_screen.dart';

class RegisterController extends GetxController{
  ApiFunctions apiFunctions                = ApiFunctions();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController    = TextEditingController();
  GlobalKey<FormState> globalKey           = GlobalKey();

  bool isLoaded = false;
  bool isPasswordHidden = true;

  showAndHidePassword(){
    isPasswordHidden = !isPasswordHidden;
    update();
  }
  loading(){
    isLoaded = !isLoaded;
    update();
  }

  formValidation(String value){
    if(value.isEmpty){
      return 'Please fill this form';
    }
  }



  register()async{
    if(globalKey.currentState!.validate()){
      loading();
      var response = await apiFunctions.postData(ApiConst.registerLink, {
        'email'    : emailController.text,
        'password' : passwordController.text,
      });
      if(response['error'] == 'Note: Only defined users succeed registration'){
        Get.defaultDialog(middleText: 'Only defined users succeed registration');
        loading();
      }else{
        Get.off(const LoginScreen());
        loading();
      }
    }

  }
}