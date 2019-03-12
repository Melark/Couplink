import 'package:couplink/src/pages/widgets/path_painter.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundPainter(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                        BoxShadow(color: Colors.black.withOpacity(0.5), blurRadius: 5.0)
                      ],
              ), child: Image.network("https://placehold.it/100x100"),),
              SizedBox(
                height: 50.0,
              ),
              Padding(
                padding: EdgeInsets.all(45.0),
                child: Container(
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
                            prefixIcon:
                                Icon(Icons.person, color: Color(0xff790010))),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
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
                            prefixIcon:
                                Icon(Icons.lock, color: Color(0xff790010))),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              RaisedButton(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 24.0, color: Colors.white),
                  ),
                ),
                color: Color(0xffBC1D48),
                onPressed: () {},
              ),
              FlatButton(
                child: Text(
                  "Allready have an account? Log In",
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
}
