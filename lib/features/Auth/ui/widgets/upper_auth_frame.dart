import 'package:flutter/cupertino.dart';

class UpperAuthFrame extends StatelessWidget {
  const UpperAuthFrame({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      width: double.infinity,
      child: Stack(
        alignment: FractionalOffset.bottomCenter,
        children: [
          Positioned(
            top: 0,
              child: Image.asset('images/upper_frame_auth.png')),
          Image.asset('images/logo_auth.png'),
        ],
      ),
    );
  }
}
