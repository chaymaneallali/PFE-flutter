import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:namer_app/home_widget.dart';
import 'package:namer_app/nav_bar.dart';
import 'package:namer_app/login_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CodePage extends StatefulWidget {
  const CodePage({super.key});
  @override
  State<CodePage> createState() => _CodePageState();
}

class _CodePageState extends State<CodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000F12),
      body: Column(
        children: [
          Container(
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(200.w)),
            child: Image(
              width: 200.w,
              image: AssetImage('assets/images/logo.png'),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 60, 0, 0).r,
            child: Center(
              child: Container(
                width: 290.w,
                height: 220.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.w),
                  color: Color.fromARGB(255, 246, 246, 246),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 40, 0, 20).r,
                      child: Text(
                        "Enter your Code",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w400,
                          fontSize: 22.sp,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 55.h,
                      width: 180.w,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        textAlign: TextAlign.center,
                        textAlignVertical: TextAlignVertical.center,
                        maxLength: 6,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.w)),
                            filled: true,
                            fillColor: Color.fromARGB(255, 182, 180, 180),
                            hintStyle: TextStyle(
                                fontSize: 18.sp,
                                color: Color.fromARGB(255, 94, 105, 112))),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(13, 20, 0, 0).r,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 120.w,
                            height: 40.h,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(5, 0, 0, 0).r,
                              child: ElevatedButton(
                                  onPressed: () => {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const LoginPage(),
                                          ),
                                        )
                                      },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 116, 121, 124),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.w))),
                                  child: Text("Cancel",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.sp,
                                      ))),
                            ),
                          ),
                          SizedBox(
                            width: 135.w,
                            height: 40.h,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0).r,
                              child: ElevatedButton(
                                  onPressed: () => {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                HomePage(HomeWidget()),
                                          ),
                                        )
                                      },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 0, 95, 135),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.w))),
                                  child: Text("Next",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.sp,
                                      ))),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
