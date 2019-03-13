import 'package:flutter/material.dart';

class ShadowIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    try {
      return Container(
      decoration: BoxDecoration(
        //image: DecorationImage(image: AssetImage('/images/healthcare.png')),
        // boxShadow: <BoxShadow>[
        //   BoxShadow(color: Colors.black.withOpacity(0.5), blurRadius: 5.0)
        // ],
      ),
      child: Image.asset('assets/images/healthcare.png'),
    );
    } catch (e) {
      return null;
    }
  }
}

