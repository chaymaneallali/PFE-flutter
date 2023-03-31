import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000f12),
      body: Column(children: [
        Center(
          child: Image(
            width: 130.w,
            image: AssetImage('assets/images/logo.png'),
          ),
        ),
        Center(
          child: Container(
            width: 310.w,
            height: 470.h,
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(10.w),
            ),
            child: SizedBox(
              width: double.infinity.w,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 190, 5).r,
                    child: Text(
                      "Home",
                      style: TextStyle(
                          fontSize: 22.sp,
                          color: Color.fromARGB(255, 139, 134, 134)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0).r,
                    child: Container(
                      width: 290.w,
                      height: 110.h,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        border: Border.all(
                          width: 1.w,
                          color: Color.fromARGB(255, 76, 85, 83),
                        ),
                        borderRadius: BorderRadius.circular(15.w),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15, 100, 0).r,
                            child: Text(
                              "ALLALI Aymane",
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  color: Color.fromARGB(255, 28, 25, 25)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15, 50, 0).r,
                            child: Text(
                              "9384 9524 4256 2345",
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color: Color.fromARGB(255, 47, 43, 43)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(100, 15, 0, 0).r,
                            child: Text(
                              "+65 000.00  MAD",
                              style: TextStyle(
                                  fontSize: 20.sp, color: Color(0xFF41E2BA)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 150.h,
                    width: 330,
                    color: Color(0xFFFFFFFF),
                    child: ListView(
                      shrinkWrap: true,
                      children: <Widget>[
                        SizedBox(
                          height: 35.h,
                          child: ListTile(
                            leading: Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                              child: Text(
                                "3/21",
                                style: TextStyle(
                                    fontSize: 13.sp,
                                    color: Color.fromARGB(255, 110, 107, 107)),
                              ),
                            ),
                            title: Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 15).r,
                                child: Text(
                                  "3452 3634 3454",
                                  style: TextStyle(fontSize: 14.sp),
                                ),
                              ),
                            ),
                            trailing: Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 15).r,
                              child: Text(
                                "+750.00 MAD",
                                style: TextStyle(
                                    fontSize: 15.sp, color: Color(0xff41E2BA)),
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 2.h,
                          endIndent: 20.w,
                          indent: 20.w,
                        ),
                        SizedBox(
                          height: 35.h,
                          child: ListTile(
                            leading: Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                              child: Text(
                                "3/14",
                                style: TextStyle(
                                    fontSize: 13.sp,
                                    color: Color.fromARGB(255, 110, 107, 107)),
                              ),
                            ),
                            title: Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 15).r,
                                child: Text(
                                  "5742 6435 8646",
                                  style: TextStyle(fontSize: 14.sp),
                                ),
                              ),
                            ),
                            trailing: Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 15).r,
                              child: Text(
                                "-235.00 MAD",
                                style: TextStyle(
                                    fontSize: 15.sp, color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 2.h,
                          endIndent: 20.w,
                          indent: 20.w,
                        ),
                        SizedBox(
                          height: 35.h,
                          child: ListTile(
                            leading: Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                              child: Text(
                                "2/28",
                                style: TextStyle(
                                    fontSize: 13.sp,
                                    color: Color.fromARGB(255, 110, 107, 107)),
                              ),
                            ),
                            title: Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 15).r,
                                child: Text(
                                  "8468 2345 9676",
                                  style: TextStyle(fontSize: 14.sp),
                                ),
                              ),
                            ),
                            trailing: Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 15).r,
                              child: Text(
                                "+100.00 MAD",
                                style: TextStyle(
                                    fontSize: 15.sp, color: Color(0xFF41E2BA)),
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 2.h,
                          endIndent: 20.w,
                          indent: 20.w,
                        ),
                        SizedBox(
                          height: 35.h,
                          child: ListTile(
                            leading: Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 15).r,
                              child: Text(
                                "2/05",
                                style: TextStyle(
                                    fontSize: 13.sp,
                                    color: Color.fromARGB(255, 110, 107, 107)),
                              ),
                            ),
                            title: Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 15).r,
                                child: Text(
                                  "3452 3634 3454",
                                  style: TextStyle(fontSize: 14.sp),
                                ),
                              ),
                            ),
                            trailing: Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 15).r,
                              child: Text(
                                "-550.00 MAD",
                                style: TextStyle(
                                    fontSize: 15.sp, color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 2.h,
                    endIndent: 0.w,
                    indent: 0.w,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(25, 7, 0, 0).r,
                        child: Image(
                          width: 30.w,
                          image: AssetImage('assets/images/e-mail.png'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 7, 0, 0).r,
                        child: Text(
                          "Important Information",
                          style: TextStyle(
                            fontSize: 13.sp,
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0).r,
                    child: Text(
                      "**Legal Text and Informations**",
                      style: TextStyle(fontSize: 10.sp),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
