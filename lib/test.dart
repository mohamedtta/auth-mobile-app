import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    String name = 'DfD';
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          if(name.isUppercase){
            print('dd');
          }else if(name.isLowercase){
            print('d');
          }
        }, child: Text('data')),
      ),
    );
  }
}
