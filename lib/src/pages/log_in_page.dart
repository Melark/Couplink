import 'package:couplink/src/pages/widgets/path_painter.dart';
import 'package:couplink/src/pages/widgets/shadow_icon.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundPainter(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ShadowIcon(),
              verticalSpacing(50.0),
              Padding(padding: EdgeInsets.all(45.0), child: buildSignupForm()),
              verticalSpacing(30.0),
              RaisedButton(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Log In",
                    style: TextStyle(fontSize: 24.0, color: Colors.white),
                  ), 
                ),
                color: Color(0xffBC1D48),
                onPressed: () {},
              ),
              FlatButton(
                child: Text(
                  "Do not have an account yet? Register Here.",
                  style: TextStyle(color: Color(0xff15114B), fontSize: 16.0),
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }

  buildSignupForm() {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(color: Colors.grey, blurRadius: 15.0)
          ],
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5.0))),
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
                hintText: 'Email',
                prefixIcon: Icon(
                  Icons.email,
                  color: Color(0xff790010),
                )),
          ),
          SizedBox(
            height: 5.0,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock, color: Color(0xff790010))),
          ),
        ],
      ),
    );
  }

  verticalSpacing(double spacing) {
    return SizedBox(
      height: 50.0,
    );
  }
}
