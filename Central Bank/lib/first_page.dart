import 'package:flutter/material.dart';
import 'package:namer_app/login_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, child) {
        return Scaffold(
          backgroundColor: Color(0xFF000F12),
          body: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(flex: 2),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(200.w)),
                  child: Image(
                    width: 220.w,
                    image: AssetImage('assets/images/logo.png'),
                  ),
                ),
                Spacer(flex: 7),
                SizedBox(
                  width: 140.0.w,
                  height: 50.0.h,
                  child: ElevatedButton(
                      onPressed: () => {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const LoginPage(),
                              ),
                            )
                          },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF36454F),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.w))),
                      child: Text("Get Started",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                          ))),
                ),
                Spacer(
                  flex: 3,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
