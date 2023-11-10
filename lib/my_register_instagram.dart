import 'package:flutter/material.dart';

class MyRegisterInsta extends StatefulWidget {
  const MyRegisterInsta({super.key});

  @override
  State<MyRegisterInsta> createState() => _MyRegisterInstaState();
}

class _MyRegisterInstaState extends State<MyRegisterInsta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              child: Text(
                "Instagram",
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: "Billabong",
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Column(
                children: [
                  Text(
                    'Sign up to see photos and videos',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Raleway',
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'from your friends.',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Raleway',
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 325,
              height: 45,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.facebook_outlined,
                      color: Colors.white,
                      size: 32,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Log in with Facebook',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'OR',
              style: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white38,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Mobile Number or Email",
                  hintStyle: TextStyle(
                    color: Colors.white60,
                    fontSize: 18,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white38,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Full Name",
                  hintStyle: TextStyle(
                    color: Colors.white60,
                    fontSize: 18,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white38,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Username",
                  hintStyle: TextStyle(
                    color: Colors.white60,
                    fontSize: 18,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white38,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(
                    color: Colors.white60,
                    fontSize: 18,
                  ),
                  border: InputBorder.none,
                  suffixIcon: InkWell(
                    onTap: () {
                      // Toggle password visibility here
                    },
                    child: Icon(
                      Icons.visibility,
                      color: Colors.white60,
                      size: 24,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        'People who use our service may have uploaded',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13.5,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Raleway',
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        children: [
                          Text(
                            'your contact information to Instagram. ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Raleway',
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'LearnMore',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Raleway',
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        'By signing up, you agree to our ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13.5,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Raleway',
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        children: [
                          Text(
                            'Terms, Privacy Policy',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                              fontFamily: 'Raleway',
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            ' and',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Raleway',
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            ' Cookies Policy.',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                              fontFamily: 'Raleway',
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            SizedBox(
              width: 380,
              height: 40,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: ElevatedButton(
                  onPressed: () {

                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(color: Colors.white12),
                    ),
                  ),
                  child: Text("Sin up", style: TextStyle(fontSize: 20)),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
          child: Padding(
            padding: EdgeInsets.only(top: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Have an account? ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Log in",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
