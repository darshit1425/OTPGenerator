import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  TextEditingController txtlenth = TextEditingController();

  int otp = 0;
  bool D1 = false;
  String N1 = "";
  int Lenth = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF15172B),
        appBar: AppBar(
          title: Text(
            "OTP GENERATOR",
            style: TextStyle(color: Colors.black87),
          ),
          centerTitle: true,
          backgroundColor: Color(0xFFF6DB87),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 70, top: 50),
                    child: Text(
                      "OTP Generator",
                      style: TextStyle(fontSize: 35, color: Color(0xffFEF0B9)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: EdgeInsets.all(62),
                child: TextField(
                  controller: txtlenth,
                  style: TextStyle(
                    color: Color(0xFFFCF6Bf),
                  ),
                  decoration: InputDecoration(
                    hintText: "Enter the No. ",
                    hintStyle: TextStyle(
                      fontSize: 25,
                      color: Colors.grey,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffFCF6BA),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              InkWell(
                onTap: () {
                  N1 = txtlenth.text;
                  Lenth = int.parse(N1);
                  var ot1 = Random();

                  setState(
                    () {
                      D1 = !D1;
                      otp = ot1.nextInt(999999999 - 100000000);
                    },
                  );
                },
                child: Container(
                  height: 55,
                  width: 260,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFFFE8B8),
                        Color(0xFFF6DB87),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Generate OTP",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Visibility(
                visible: D1,
                child: Container(
                  height: 66,
                  width: 360,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFFFE8B8),
                        Color(0xFFF6DB87),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "${(otp == 0) ? otp : otp.toString().substring(0, Lenth)}",
                    style: TextStyle(fontSize: 30, letterSpacing: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              InkWell(
                onTap: () {
                  setState(
                    () {
                      otp = 0;
                    },
                  );
                },
                child: Container(
                  height: 45,
                  width: 170,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffFEF0B9),
                        Color(0xffFEF0B9),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Reset",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
