import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});
  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  final primaryColor = Color(0xFF000F12);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000F12),
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0).r,
        child: Column(
          children: [
            Center(
              child: Image(
                width: 130.w,
                image: AssetImage('assets/images/logo.png'),
              ),
            ),
            Center(
              child: Container(
                width: 320.w,
                height: 470.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.w),
                  color: Color(0xFFFFFFFF),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 0).r,
                  child: Column(
                    children: [
                      Text(
                        "Account Information",
                        style: TextStyle(
                          fontSize: 22.sp,
                          color: Color.fromARGB(255, 119, 117, 117),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 30, 150, 10).r,
                        child: Text(
                          "Account Number",
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: Color.fromARGB(255, 119, 117, 117),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 10).r,
                        child: Text(
                          "3134 1513 4275",
                          style: TextStyle(fontSize: 15.sp),
                        ),
                      ),
                      Divider(
                        thickness: 1.h,
                        height: 10.h,
                        indent: 20.w,
                        endIndent: 20.w,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 170, 10).r,
                        child: Text(
                          "Full Name",
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: Color.fromARGB(255, 119, 117, 117),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 10).r,
                        child: Text(
                          "ALLALI CH-Cherkaoui Aymane",
                          style: TextStyle(fontSize: 15.sp),
                        ),
                      ),
                      Divider(
                        thickness: 1.h,
                        height: 10.h,
                        indent: 20.w,
                        endIndent: 20.w,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 170, 10).r,
                        child: Text(
                          "Email Adress",
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: Color.fromARGB(255, 119, 117, 117),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 10).r,
                        child: Text(
                          "ch.allaliaymane@gmail.com",
                          style: TextStyle(fontSize: 15.sp),
                        ),
                      ),
                      Divider(
                        thickness: 1.h,
                        height: 10.h,
                        indent: 20.w,
                        endIndent: 20.w,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 0).r,
                                child: Text(
                                  "Location",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Color.fromARGB(255, 119, 117, 117),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(40, 5, 0, 10).r,
                                child:
                                    Text("Blvrd palestine  \n Hay eL Qods 2"),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(45, 0, 0, 10).r,
                                child: Text(
                                  "Birth Date",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 119, 117, 117),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(60, 5, 0, 0).r,
                                child: Text("15/12/2003"),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1.h,
                        height: 10.h,
                        indent: 20.w,
                        endIndent: 20.w,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 0).r,
                                child: Text(
                                  "BANK",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Color.fromARGB(255, 119, 117, 117),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(40, 5, 0, 0).r,
                                child: Text("Central Bank \n of Morocco"),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(70, 0, 0, 0).r,
                                child: Text(
                                  "Currency",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 119, 117, 117),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(60, 5, 0, 0).r,
                                child: Text("MAD"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
