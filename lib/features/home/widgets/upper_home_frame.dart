import 'package:auth_task/core/theming/my_colors.dart';
import 'package:auth_task/features/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpperHomeFrame extends StatelessWidget {
  const UpperHomeFrame({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      width: double.infinity,
      child: GetBuilder<HomeController>(builder: (homeController){
        if(homeController.userModel.avatar == null){
          return const Center(child: CircularProgressIndicator(color: MyColors.myBlue,strokeWidth: 4,));
        }else{
          return Stack(
            alignment: FractionalOffset.bottomCenter,
            children: [
              Positioned(
                  top: 0,
                  child: Image.asset('images/upper_frame_auth.png')),
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                  child: Image.network(homeController.userModel.avatar!))
            ],
          );
        }
      },)
    );
  }
}
