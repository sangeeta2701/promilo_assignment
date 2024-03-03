import 'package:flutter/material.dart';
import 'package:promilo_assignment/Screens/main_screen.dart';
import 'package:promilo_assignment/utils/colors.dart';
import 'package:promilo_assignment/utils/constants.dart';
import 'package:promilo_assignment/widget/dialogs/loading_dialog.dart';
import 'package:promilo_assignment/widget/sizedbox.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController =
      TextEditingController(text: 'test45@yopmail.com');
  final TextEditingController passwordController =
      TextEditingController(text: 'Test@123');
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                      child: Text(
                    "promilo",
                    style: blackHeading,
                    textAlign: TextAlign.center,
                  )),
                  height32,
                  Center(
                      child: Text(
                    "Hi, Welcome Back!",
                    style: blackHeading,
                    textAlign: TextAlign.center,
                  )),
                  height30,
                  Text(
                    "Please Sign in to continue",
                    style: blackText,
                  ),
                  height4,
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    style: blackText,
                    decoration:
                        InputDecoration(hintText: "Enter Email or Mob No."),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter Email";
                      } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                          .hasMatch(value)) {
                        return "Enter Correct Email Address";
                      } else {
                        return null;
                      }
                    },
                  ),
                  height4,
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Sign In With OTP",
                        style: themeText,
                      )),
                  height16,
                  Text(
                    "Password",
                    style: blackText,
                  ),
                  height4,
                  TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    style: blackText,
                    decoration: InputDecoration(hintText: "Enter Password"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter password";
                      } else if (!RegExp(
                              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                          .hasMatch(value)) {
                        return "Enter Correct password";
                      } else {
                        return null;
                      }
                    },
                  ),
                  height4,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          checkColor: wColor,
                          activeColor: themeColor,
                          value: rememberMe,
                          onChanged: (newVal) {
                            setState(() {
                              rememberMe = newVal!;
                            });
                          },
                          title: Text(
                            "Remember Me",
                            style: gText,
                          ),
                        ),
                      ),
                      Text(
                        "Forget Password",
                        style: themeText,
                      ),
                    ],
                  ),
                  height16,
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: themeColor, width: 2),
                                borderRadius: BorderRadius.circular(8)),
                            backgroundColor: lightthemeColor),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return LoadingDialog(
                                      message: "Please wait......");
                                });
                            Future.delayed(Duration(seconds: 2), () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MainScreen()));
                            });
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Text(
                            "Submit",
                            style: TextStyle(
                              fontSize: 16,
                              color: wColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )),
                  ),
                  height16,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Divider(
                        color: gColor.withOpacity(0.3),
                        thickness: 1,
                      ),
                      Text(
                        "or",
                        style: blackText,
                      ),
                      Divider(
                        color: gColor.withOpacity(0.3),
                        thickness: 1,
                      ),
                    ],
                  ),
                  height12,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          "assets/logo/google.png",
                          height: 30,
                        ),
                        Image.asset(
                          "assets/logo/linkedin.png",
                          height: 30,
                        ),
                        Image.asset(
                          "assets/logo/facebook.png",
                          height: 30,
                        ),
                        Image.asset(
                          "assets/logo/insta.png",
                          height: 30,
                        ),
                        Image.asset(
                          "assets/logo/whatsapp.jpg",
                          height: 30,
                        )
                      ],
                    ),
                  ),
                  height20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Business User?",
                            style: gText,
                          ),
                          Text(
                            "Login Here",
                            style: themeText,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: gText,
                          ),
                          Text(
                            "Sign Up",
                            style: themeText,
                          ),
                        ],
                      ),
                    ],
                  ),
                  height16,
                  Align(
                    alignment: Alignment.center,
                    child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                            text: "By continuing, you agree to",
                            style: gText,
                          ),
                          TextSpan(text: "\nPromilo's ", style: gText),
                          TextSpan(
                              text: "Terms of Use & Privacy Policy.",
                              style: blackText),
                        ])),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
