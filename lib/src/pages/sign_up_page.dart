import 'package:couplink/src/blocs/auth/auth_bloc.dart';
import 'package:couplink/src/pages/log_in_page.dart';
import 'package:couplink/src/pages/widgets/path_painter.dart';
import 'package:couplink/src/pages/widgets/shadow_icon.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  AuthBloc bloc;

  SignUpPage(){
    bloc = AuthBloc();
  }

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
                  padding: EdgeInsets.fromLTRB(20,10,20,10),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 24.0, color: Colors.white, fontFamily: "Noteworthy", fontWeight: FontWeight.bold),
                  ),
                ),
                color: Color(0xffBC1D48),
                onPressed: () {},
              ),
              FlatButton(
                child: Text(
                  "Already have an account? Log In",
                  style: TextStyle(color: Color(0xff15114B), fontSize: 16.0, fontFamily: "Noteworthy", fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
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
                hintText: 'Name',
                border: InputBorder.none,
                prefixIcon: Icon(Icons.person, color: Color(0xff790010))),
          ),
          SizedBox(
            height: 5.0,
          ),
          Divider(),
          TextField(
            decoration: InputDecoration(
                hintText: 'Email',
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.email,
                  color: Color(0xff790010),
                )),
          ),
          SizedBox(
            height: 5.0,
          ),
          Divider(),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                hintText: 'Password',
                border: InputBorder.none,
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
