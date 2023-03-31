import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:namer_app/code_page.dart';

import 'package:email_validator/email_validator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;
  TextEditingController emailController = TextEditingController();
  void emailvalidator() {
    final bool isValid = EmailValidator.validate(emailController.text.trim());

    if (isValid) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const CodePage(),
        ),
      );

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Connected Successfully, Please Enter your Code ")));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Please enter a Valid E-mail")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000F12),
      body: Center(
        child: SizedBox(
          child: Flexible(
            child: Column(children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(200.w)),
                child: Image(
                  width: 200.w,
                  image: AssetImage('assets/images/logo.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 0).r,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.w),
                    color: Color(0xFFFFFFFF),
                  ),
                  height: 290.h,
                  width: 280.w,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 60, 0, 0).r,
                        child: SizedBox(
                          width: 230.0.w,
                          height: 55.h,
                          child: TextField(
                            controller: emailController,
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black)),
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Email@gmail.com',
                                hintStyle: TextStyle(
                                    fontSize: 14.sp, color: Color(0xFF4D5B65))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: SizedBox(
                          width: 230.0.w,
                          height: 55.h,
                          child: TextField(
                            obscureText: _isObscure,
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black)),
                                suffixIcon: IconButton(
                                    icon: Icon(_isObscure
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                    onPressed: () {
                                      setState(() {
                                        _isObscure = !_isObscure;
                                      });
                                    }),
                                filled: true,
                                fillColor: Colors.white,
                                hintText: ' Password',
                                hintStyle: TextStyle(
                                    fontSize: 14.sp, color: Color(0xFF4D5B65))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                        child: InkWell(
                          onTap: () => emailvalidator(),
                          child: Container(
                            width: 140.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.w)),
                                color: Color.fromARGB(255, 0, 95, 135)),
                            alignment: Alignment.center,
                            child: Text(
                              "Log In",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
