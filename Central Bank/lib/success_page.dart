import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:namer_app/home_widget.dart';

import 'nav_bar.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({super.key});
  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000F12),
      body: Center(
        child: Container(
          width: 300.w,
          height: 500.h,
          decoration: BoxDecoration(
              color: Color(0xfFFFFFFf),
              border: Border.all(width: 2.w, color: Color(0xFF41E2BA)),
              borderRadius: BorderRadius.circular(15.w)),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 60, 0, 0).r,
                child: Text(
                  "Operation Successful",
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 70, 0, 0).r,
                child: SizedBox(
                  width: 150.w,
                  child: Image.asset(
                    'assets/images/check.png',
                    color: Color(0xFF41E2BA),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 80, 0, 0).r,
                  child: SizedBox(
                    width: 140.w,
                    height: 50.h,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => HomePage(HomeWidget())),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 65, 73, 75),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.w))),
                        child: Text(
                          "Dismiss",
                          style: TextStyle(fontSize: 20.sp),
                        )),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
