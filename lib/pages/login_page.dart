import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: screenSize.height/4.4,
              width: screenSize.width/1,
              margin: EdgeInsets.only(top: kToolbarHeight, bottom: 10),
              child: Image.asset('assets/icon.png'),
            ),
            Container(
              height: screenSize.height/2.4,
              width: screenSize.width/1,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(6))),
                margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 20),
                child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 24, bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Login', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                      TextField(
                        decoration: InputDecoration(
                            hintText: 'Enter Username',
                            labelText: 'Username',
                            suffixIcon: Icon(Icons.person_outline, color: Color(0xff38b7e0),)

                        ),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Enter Password',
                            labelText: 'Password',
                            suffixIcon: Icon(Icons.lock_outline, color: Color(0xff38b7e0),)
                        ),
                      ),
                      Divider(
                        height: 20,
                        color: Colors.transparent,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text('Forgot Password?', style: TextStyle(color: Color(0xff687dea), fontWeight: FontWeight.w600),),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: screenSize.height/8,
              width: screenSize.width/1,
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Remember me', style: TextStyle(color: Colors.grey),),
                  RaisedButton(
                    onPressed: (){},
                    child: Text('Login', style: TextStyle(color: Colors.white),),
                    elevation: 10,
                    color: Color(0xff18e2d4),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                  ),
                ],
              ),
            ),
            Container(
              height: screenSize.height/40,
              width: screenSize.width/1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 1,
                    width: screenSize.width/4,
                    color: Colors.grey,
                    margin: EdgeInsets.only(right: 6),
                  ),
                  Text('Social Login', style: TextStyle(color: Colors.grey),),
                  Container(
                    height: 1,
                    width: screenSize.width/4,
                    color: Colors.grey,
                    margin: EdgeInsets.only(left: 6),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 40,
                    margin: EdgeInsets.only(left: 20),
                    child: Image.asset('assets/google.png'),
                  ),
                  Container(
                    width: 40,
                    margin: EdgeInsets.only(left: 20),
                    child: Image.asset('assets/facebook.png'),
                  ),
                  Container(
                    width: 40,
                    margin: EdgeInsets.only(left: 20),
                    child: Image.asset('assets/google.png'),
                  ),
                  Container(
                    width: 40,
                    margin: EdgeInsets.only(left: 20),
                    child: Image.asset('assets/facebook.png'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}