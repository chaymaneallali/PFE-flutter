import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:namer_app/amount_page.dart';
import 'package:flutter/services.dart';

class TransactionsWidget extends StatelessWidget {
  const TransactionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000f12),
      body: Column(
        children: [
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
                      padding: EdgeInsets.fromLTRB(0, 20, 150, 5).r,
                      child: Text(
                        "Transactions",
                        style: TextStyle(
                            fontSize: 22.sp,
                            color: Color.fromARGB(255, 139, 134, 134)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 0).r,
                      child: Container(
                        width: 270.w,
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
                              padding:
                                  const EdgeInsets.fromLTRB(0, 15, 100, 0).r,
                              child: Text(
                                "ALLALI Aymane",
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Color.fromARGB(255, 28, 25, 25)),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0, 15, 50, 0).r,
                              child: Text(
                                "9384 9524 4256 2345",
                                style: TextStyle(
                                    fontSize: 13.sp,
                                    color: Color.fromARGB(255, 47, 43, 43)),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(100, 15, 0, 0).r,
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
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 40, 160, 0).r,
                      child: Text(
                        "Transfer To :",
                        style: TextStyle(
                            color: Color.fromARGB(255, 139, 134, 134),
                            fontSize: 20.sp),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0).r,
                      child: SizedBox(
                        width: 230.0.w,
                        height: 55.h,
                        child: TextField(
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1,
                                      color: Color.fromARGB(255, 64, 63, 63))),
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "Account Number",
                              hintStyle: TextStyle(
                                  fontSize: 14.sp,
                                  color: Color.fromARGB(255, 164, 176, 185))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0).r,
                      child: SizedBox(
                        width: 230.0.w,
                        height: 55.h,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1,
                                      color: Color.fromARGB(255, 64, 63, 63))),
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "Full Name ",
                              hintStyle: TextStyle(
                                  fontSize: 14.sp,
                                  color: Color.fromARGB(255, 164, 176, 185))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                      child: InkWell(
                        onTap: () => {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => AmountPage(),
                            ),
                          )
                        },
                        child: Container(
                          width: 140.w,
                          height: 45.h,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7.w)),
                              color: Color.fromARGB(255, 65, 73, 75)),
                          alignment: Alignment.center,
                          child: Text(
                            "Proceed",
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
          ),
        ],
      ),
    );
  }
}
