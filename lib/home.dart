import 'package:flutter/material.dart';
import 'package:wwdc2020/constant.dart';
import 'package:wwdc2020/page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Center(child: Image.asset("res/0.png"),)
      ),
      onTap: () {
        pageIndex = 1;
        Navigator.push(context, MaterialPageRoute(builder: (context) => PicPage()));
      },
      )
    );
  }
}
