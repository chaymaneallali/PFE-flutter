import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:namer_app/success_page.dart';
import 'package:flutter/services.dart';

class AmountPage extends StatefulWidget {
  const AmountPage({super.key});
  @override
  State<AmountPage> createState() => _AmountPageState();
}

// ignore: duplicate_ignore
class _AmountPageState extends State<AmountPage> {
  final primaryColor = Colors.black;
  // ignore: non_constant_identifier_names
  bool sms_check = false;
  // ignore: non_constant_identifier_names
  bool email_check = false;
  // ignore: unused_element, non_constant_identifier_names
  void _onsms_checkChanged(bool newValue) => setState(() {
        sms_check = newValue;

        if (sms_check) {
          // ignore: todo
          // TODO: Here goes your functionality that remembers the user.
        } else {
          // ignore: todo
          // TODO: Forget the user
        }
      });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF000F12),
        appBar: AppBar(backgroundColor: Color(0xFF000F12)),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(35, 80, 0, 0),
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(10.w)),
            width: 340,
            height: 500,
            child: Column(children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 35, 170, 0).r,
                child: Text(
                  "Amount ",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 22.sp),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(60, 40, 0, 0).r,
                    child: SizedBox(
                      width: 150.w,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: Text(
                      "MAD",
                      style: TextStyle(color: Colors.grey, fontSize: 20.sp),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 50, 0, 0).r,
                    child: Text(
                      "Receive an email with details\n about this transfer .",
                      style: TextStyle(fontSize: 14.sp),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 50, 0, 0).r,
                    child: SizedBox(
                        width: 70.w,
                        child: Checkbox(value: true, onChanged: null)),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 10, 0, 0).r,
                    child: Text(
                      "Receive an SMS with details\n about this transfer .",
                      style: TextStyle(fontSize: 14.sp),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 10, 0, 0).r,
                    child: SizedBox(
                        width: 70.w,
                        child: Checkbox(value: sms_check, onChanged: null)),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(75, 60, 0, 0).r,
                    child: SizedBox(
                      width: 150.w,
                      height: 50.h,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => SuccessPage(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 65, 73, 75),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.w))),
                          child: Text("Confirm",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w400))),
                    ),
                  )
                ],
              ),
            ]),
          ),
        ));
  }
}
