import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'LoginUi',
    home: Home(),
  ));
}

final rec1 = 'images/Rect1.svg';
final rec2 = 'images/Rect2.svg';
final rec3 = 'images/Rect3.svg';
final logo = 'images/logo.svg';
final google = 'images/google_logo.svg';
final fb = 'images/fb_logo.svg';
final apple = 'images/apple_logo.svg';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Positioned(top: 0, child: SvgPicture.asset(rec1)),
            Positioned(top: 0, child: SvgPicture.asset(rec2)),
            Positioned(bottom: 0, child: SvgPicture.asset(rec3)),
            Positioned(
              bottom: 20,
              right: 30,
              child: SizedBox(
                height: 50,
                width: 130,
                child: OutlinedButton(
                  child: Text(
                    'Get Started',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.white, width: 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                    ),
                  ),
                  onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()))
                  },
                ),
              ),
            ),
            Positioned(
                left: 40,
                bottom: 190,
                child: Container(
                  height: 200,
                  width: 150,
                  // color: Colors.red,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SvgPicture.asset(logo),
                      Text(
                        'Lorem',
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 30,
                            color: Color(0xFF2F80ED)),
                      ),
                      Text(
                        'consequat duis enim velit ',
                        style: TextStyle(
                            color: Color(0xFF2F80ED),
                            fontSize: 20,
                            fontWeight: FontWeight.w200),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    ));
  }
}

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Positioned(top: 0, child: SvgPicture.asset(rec1)),
            Positioned(top: 0, child: SvgPicture.asset(rec2)),
            Positioned(bottom: 0, child: SvgPicture.asset(rec3)),
            Positioned(
              bottom: 20,
              right: 30,
              child: SizedBox(
                height: 50,
                width: 130,
                child: OutlinedButton(
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.white, width: 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                    ),
                  ),
                  onPressed: () => {print('logged in')},
                ),
              ),
            ),
            Positioned(
              top: 20,
              left: 10,
              child: BackButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Positioned(
                bottom: 20,
                left: 20,
                child: Row(
                  children: <Widget>[
                    Text(
                      'New Here ?',
                      style: TextStyle(color: Colors.white),
                    ),
                    GestureDetector(
                      onTap: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Register()))
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Text(
                          "Register",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    )
                  ],
                )),
            Positioned(
                left: 20,
                bottom: 200,
                child: Container(
                  height: 220,
                  width: 250,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 30.0),
                          child: Text("Login",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 30,
                                  color: Color(0xFF2F80ED))),
                        ),
                        Padding(
                          padding: EdgeInsets.all(1),
                          child: Text(
                            'Email',
                            style: TextStyle(
                                color: Color(0xFF2F80ED), fontSize: 15),
                          ),
                        ),
                        TextField(
                          decoration: new InputDecoration(
                              contentPadding: EdgeInsets.all(5.0),
                              enabledBorder: new OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(15.0),
                                ),
                                borderSide:
                                    BorderSide(color: Color(0xFF2F80ED)),
                              ),
                              focusedBorder: new OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(15.0),
                                ),
                                borderSide:
                                    BorderSide(color: Color(0xFF2F80ED)),
                              ),
                              filled: true,
                              fillColor: Colors.white70),
                        ),
                        Padding(
                          padding: EdgeInsets.all(1),
                          child: Text(
                            'Password',
                            style: TextStyle(
                                color: Color(0xFF2F80ED), fontSize: 15),
                          ),
                        ),
                        TextField(
                          decoration: new InputDecoration(
                              contentPadding: EdgeInsets.all(5.0),
                              enabledBorder: new OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(15.0),
                                ),
                                borderSide:
                                    BorderSide(color: Color(0xFF2F80ED)),
                              ),
                              focusedBorder: new OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(15.0),
                                ),
                                borderSide:
                                    BorderSide(color: Color(0xFF2F80ED)),
                              ),
                              filled: true,
                              fillColor: Colors.white70),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 120),
                          child: Text('Forgot Password ?',
                              style: TextStyle(
                                  color: Color(0xFF2F80ED), fontSize: 15)),
                        ),
                      ]),
                )),
            Positioned(
                left: 20,
                bottom: 130,
                child: Container(
                  height: 60,
                  width: 210,
                  // color: Colors.red,
                    child: Row(
                    children: <Widget>[
                      SvgPicture.asset(google),
                      SvgPicture.asset(fb),
                      SvgPicture.asset(apple),
                      ],
                  ),
                )),
          ],
        ),
      ),
    ));
  }
}

class Register extends StatefulWidget {
  @override
  _Register createState() => _Register();
}

class _Register extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Positioned(top: -50, child: SvgPicture.asset(rec1)),
            Positioned(top: -50, child: SvgPicture.asset(rec2)),
            Positioned(bottom: 0, child: SvgPicture.asset(rec3)),
            Positioned(
              bottom: 20,
              right: 30,
              child: SizedBox(
                height: 50,
                width: 130,
                child: OutlinedButton(
                  child: Text(
                    'Register',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.white, width: 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                    ),
                  ),
                  onPressed: () => {print('Registered')},
                ),
              ),
            ),
            Positioned(
              top: 20,
              left: 10,
              child: BackButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Positioned(
                bottom: 20,
                left: 20,
                child: Row(
                  children: <Widget>[
                    Text(
                      'Already a member',
                      style: TextStyle(color: Colors.white),
                    ),
                    GestureDetector(
                      onTap: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()))
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    )
                  ],
                )),
            Positioned(
                left: 20,
                bottom: 200,
                child: Container(
                  height: 270,
                  width: 250,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 30.0),
                          child: Text("Register",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 30,
                                  color: Color(0xFF2F80ED))),
                        ),
                        Padding(
                          padding: EdgeInsets.all(1),
                          child: Text(
                            'Fullname',
                            style: TextStyle(
                                color: Color(0xFF2F80ED), fontSize: 15),
                          ),
                        ),
                        TextField(
                          decoration: new InputDecoration(
                              contentPadding: EdgeInsets.all(5.0),
                              enabledBorder: new OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(15.0),
                                ),
                                borderSide:
                                    BorderSide(color: Color(0xFF2F80ED)),
                              ),
                              focusedBorder: new OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(15.0),
                                ),
                                borderSide:
                                    BorderSide(color: Color(0xFF2F80ED)),
                              ),
                              filled: true,
                              fillColor: Colors.white70),
                        ),
                        Padding(
                          padding: EdgeInsets.all(1),
                          child: Text(
                            'Email',
                            style: TextStyle(
                                color: Color(0xFF2F80ED), fontSize: 15),
                          ),
                        ),
                        TextField(
                          decoration: new InputDecoration(
                              contentPadding: EdgeInsets.all(5.0),
                              enabledBorder: new OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(15.0),
                                ),
                                borderSide:
                                    BorderSide(color: Color(0xFF2F80ED)),
                              ),
                              focusedBorder: new OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(15.0),
                                ),
                                borderSide:
                                    BorderSide(color: Color(0xFF2F80ED)),
                              ),
                              filled: true,
                              fillColor: Colors.white70),
                        ),
                        Padding(
                          padding: EdgeInsets.all(1),
                          child: Text(
                            'Password',
                            style: TextStyle(
                                color: Color(0xFF2F80ED), fontSize: 15),
                          ),
                        ),
                        TextField(
                          decoration: new InputDecoration(
                              contentPadding: EdgeInsets.all(5.0),
                              enabledBorder: new OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(15.0),
                                ),
                                borderSide:
                                    BorderSide(color: Color(0xFF2F80ED)),
                              ),
                              focusedBorder: new OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(15.0),
                                ),
                                borderSide:
                                    BorderSide(color: Color(0xFF2F80ED)),
                              ),
                              filled: true,
                              fillColor: Colors.white70),
                        ),
                      ]),
                )),
            Positioned(
                left: 20,
                bottom: 120,
                child: Container(
                  height: 60,
                  width: 210,
                  // color: Colors.red,
                    child: Row(
                    children: <Widget>[
                      SvgPicture.asset(google),
                      SvgPicture.asset(fb),
                      SvgPicture.asset(apple),
                      ],
                  ),
                )),
          ],
        ),
      ),
    ));
  }
}
