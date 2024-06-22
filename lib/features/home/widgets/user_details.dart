import 'package:auth_task/core/theming/my_colors.dart';
import 'package:auth_task/features/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (homeController){
      if(homeController.userModel.email == null){
        return const Center(child: CircularProgressIndicator(strokeWidth: 4,color: MyColors.myBlue,),);
      }else{
        return Column(
          children: [
            Center(child: Text('${homeController.userModel.firstName} ${homeController.userModel.lastName}',style: const TextStyle(fontWeight: FontWeight.w700,fontSize: 20),)),
            const SizedBox(height: 50,),
            ListTile(
              title: const Text('Username'),
              subtitle: Text('${homeController.userModel.firstName} ${homeController.userModel.lastName}'),
            ),
            ListTile(
              title: const Text('Email'),
              subtitle: Text(homeController.userModel.email!),
            ),
          ],
        );
      }

    });
  }
}
