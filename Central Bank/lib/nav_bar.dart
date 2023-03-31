import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:namer_app/home_widget.dart';
import 'package:namer_app/transactions_widget.dart';
import 'package:namer_app/info_page.dart';

class HomePage extends StatefulWidget {
  const HomePage(HomeWidget homeWidget, {super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000F12),
      body: IndexedStack(
        index: pageIndex,
        children: [
          HomeWidget(),
          Center(
            child: InfoPage(),
          ),
          Center(
            child: TransactionsWidget(),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 60.h,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 27, 34, 39),
          border: Border(
              top: BorderSide(
            color: Color(0xFFFFFFFF),
          )),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //Button transactions
            GestureDetector(
              onTap: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              child: SizedBox(
                height: 35.h,
                child: Image.asset(
                  'assets/images/transactions2.png',
                  color: Colors.white,
                ),
              ),
            ),

            //Button home
            GestureDetector(
              onTap: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              child: SizedBox(
                height: 25.h,
                child: Image.asset(
                  'assets/images/home2.png',
                  color: Colors.white,
                ),
              ),
            ),
            //Button menu
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 7, 0).r,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                child: SizedBox(
                  height: 25.h,
                  child: Image.asset(
                    'assets/images/menu.png',
                    color: Colors.white,
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
