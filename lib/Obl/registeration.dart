import 'package:flutter/material.dart';
import 'package:flutter_application_1/Obl/home1.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isMale = true;
  bool isSignupScreen = true;
  bool isRememberMe = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 220,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  'assets/UOC.jpg',
                ),
              )),
              child: Container(
                padding: EdgeInsets.only(
                  left: 20,
                  top: 30,
                ),
                color: Color(0xFF3b5999).withOpacity(.84),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(
                            text: 'Welcome to ',
                            style: TextStyle(
                              color: Colors.yellow[700],
                              fontSize: 25,
                            ),
                            children: [
                          TextSpan(
                            text: isSignupScreen ? 'UOC,' : 'Back',
                            style: TextStyle(
                                color: Colors.yellow[700],
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ])),
                    Text(
                      isSignupScreen
                          ? 'SignUp to Continue'
                          : 'Login to Continue',
                      style: TextStyle(
                        color: Colors.amber,
                        letterSpacing: 1,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: 200,
              child: Container(
                padding: EdgeInsets.only(top: 5),
                height: 380,
                width: MediaQuery.of(context).size.width - 40,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 15,
                        spreadRadius: 5,
                        color: Colors.black.withOpacity(0.3),
                      )
                    ]),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isSignupScreen = false;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                'Login',
                                style: TextStyle(
                                  color: !isSignupScreen
                                      ? Colors.purple
                                      : Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              if (!isSignupScreen)
                                Container(
                                  margin: EdgeInsets.only(top: 3),
                                  height: 2,
                                  width: 55,
                                  color: Colors.orange,
                                )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isSignupScreen = true;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                'SignUp',
                                style: TextStyle(
                                  color: isSignupScreen
                                      ? Colors.purple
                                      : Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              if (isSignupScreen)
                                Container(
                                  margin: EdgeInsets.only(top: 3),
                                  height: 2,
                                  width: 55,
                                  color: Colors.orange,
                                )
                            ],
                          ),
                        )
                      ],
                    ),
                    isSignupScreen
                        ? buildSignupScreen()
                        : Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 100, horizontal: 40),
                            child: Column(
                              children: [
                                buildTextFormField(
                                    Icons.email, 'Email', false, true),
                                SizedBox(
                                  height: 10,
                                ),
                                buildTextFormField(
                                    Icons.password, 'Password', true, false),
                              ],
                            ),
                          )
                  ],
                ),
              )),
          Positioned(
            top: 535,
            right: 0,
            left: 0,
            child: Center(
              child: Container(
                height: 90,
                width: 90,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                      spreadRadius: 1,
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: isSignupScreen
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignupSucess()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 2,
                                spreadRadius: 1,
                                color: Colors.black.withOpacity(0.3),
                                offset: Offset(0, 1),
                              ),
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.orange,
                          ),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginSucess()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 2,
                                spreadRadius: 1,
                                color: Colors.black.withOpacity(0.3),
                                offset: Offset(0, 1),
                              ),
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.orange,
                          ),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ),
                      ),
              ),
            ),
          ),
          // SingleChildScrollView(
          //   child: Positioned(
          //     top: MediaQuery.of(context).size.height - 70,
          //     child: Column(
          //       children: [
          //         Text(
          //           'Or Signup With',
          //           style: TextStyle(
          //             color: Colors.black,
          //             fontSize: 20,
          //           ),
          //         ),
          //         Row(
          //           children: [
          //             TextButton(
          //               onPressed: () {},
          //               child: Row(
          //                 children: [
          //                   Icon(Icons.facebook),
          //                   SizedBox(
          //                     width: 5,
          //                   ),
          //                   Text('Facebook'),
          //                 ],
          //               ),
          //               style: TextButton.styleFrom(
          //                   maximumSize: Size(155, 25),
          //                   backgroundColor: Colors.purple,
          //                   shape: RoundedRectangleBorder(
          //                     borderRadius: BorderRadius.circular(15),
          //                   )),
          //             )
          //           ],
          //         ),
          //       ],
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }

  Container buildSignupScreen() {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(
        top: 20,
      ),
      child: Column(
        children: [
          buildTextFormField(Icons.person, 'User Name', false, false),
          SizedBox(
            height: 10,
          ),
          buildTextFormField(Icons.email, 'Email', false, true),
          SizedBox(
            height: 10,
          ),
          buildTextFormField(Icons.person, 'Password', true, false),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = true;
                    });
                  },
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        margin: EdgeInsets.only(right: 8),
                        // color:
                        //     isMale ? Colors.orange : Colors.green,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1,
                                color: isMale ? Colors.grey : Colors.green),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Icon(
                          Icons.person,
                          color: isMale ? Colors.orange : Colors.grey,
                        ),
                      ),
                      Text(
                        'male'.toUpperCase(),
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = false;
                    });
                  },
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        margin: EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: isMale ? Colors.grey : Colors.green,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Icon(
                          Icons.person,
                          color: !isMale ? Colors.orange : Colors.grey,
                        ),
                      ),
                      Text(
                        'female'.toUpperCase(),
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 200,
            margin: EdgeInsets.only(top: 20),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: "By processing 'Submit' you agree to our ",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: 'term and condition',
                      style: TextStyle(
                        color: Colors.orange,
                      ),
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
  }

  TextFormField buildTextFormField(
    IconData icon,
    String hintText,
    bool IsPassword,
    bool IsEmail,
  ) {
    return TextFormField(
      obscureText: IsPassword,
      keyboardType: IsEmail ? TextInputType.emailAddress : TextInputType.text,
      decoration: InputDecoration(
          prefixIcon: Icon(icon),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green),
              borderRadius: BorderRadius.all(Radius.circular(35.0))),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
            borderRadius: BorderRadius.all(
              Radius.circular(35.0),
            ),
          ),
          contentPadding: EdgeInsets.all(10),
          hintText: hintText,
          helperStyle: TextStyle(fontSize: 14, color: Colors.black)),
    );
  }
}
