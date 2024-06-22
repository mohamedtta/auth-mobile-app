import 'package:auth_task/core/networking/api_const.dart';
import 'package:auth_task/core/networking/api_functions.dart';
import 'package:auth_task/features/Auth/ui/screens/login_screen.dart';
import 'package:auth_task/features/home/user_model.dart';
import 'package:auth_task/main.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  ApiFunctions apiFunctions = ApiFunctions();
  UserModel userModel = UserModel();



  getUserInfo()async{
    var response = await apiFunctions.queryUser('${ApiConst.getUserLink}/${sharedPreferences.getInt('id')}');
    userModel = UserModel.fromJson(response['data']);
    update();
  }

  logout(){
    sharedPreferences.clear();
    Get.delete<HomeController>();
    Get.off(const LoginScreen());
  }

  @override
  void onInit() {
    super.onInit();
    getUserInfo();
  }
}