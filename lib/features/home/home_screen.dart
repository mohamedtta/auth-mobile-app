import 'package:auth_task/core/shared_widgets/my_button.dart';
import 'package:auth_task/core/theming/my_colors.dart';
import 'package:auth_task/features/home/home_controller.dart';
import 'package:auth_task/features/home/widgets/upper_home_frame.dart';
import 'package:auth_task/features/home/widgets/user_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
      body: Column(
        children: [
          const UpperHomeFrame(),
          const SizedBox(height: 10,),
          const UserDetails(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: MyButton(onPressed: (){
              homeController.logout();
            }, buttonColor: MyColors.myRed, myChild: const Text('Log out')),
          )


        ],
      )
    );
  }
}
