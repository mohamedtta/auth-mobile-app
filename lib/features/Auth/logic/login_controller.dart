import 'package:auth_task/core/networking/api_const.dart';
import 'package:auth_task/core/networking/api_functions.dart';
import 'package:auth_task/features/home/home_screen.dart';
import 'package:auth_task/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  ApiFunctions apiFunctions = ApiFunctions();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> globalKey = GlobalKey();
  bool isLoaded = false;
  bool isPasswordHidden = true;
  bool rememberMe = false;

  checkRememberMe(bool value){
    rememberMe = value;
    update();
  }

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



  login()async{
    if(globalKey.currentState!.validate()){
      loading();
      var response = await apiFunctions.postData(ApiConst.registerLink, {
        'email'    : emailController.text,
        'password' : passwordController.text,
      });
      if(response['error'] == 'Note: Only defined users succeed registration'){
        Get.defaultDialog(middleText: 'User not found');
        loading();
      }else{
        sharedPreferences.setInt('id', response['id']);
        if(rememberMe)sharedPreferences.setString('token', response['token']);
        Get.off(const HomeScreen());
        loading();
      }
    }

  }
}