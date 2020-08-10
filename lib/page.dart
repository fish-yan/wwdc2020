import 'package:flutter/material.dart';
import 'package:wwdc2020/otherPage.dart';
import 'package:wwdc2020/constant.dart';

class PicPage extends StatelessWidget {
  final bool isPic;
  PicPage({this.isPic = true}) : super();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        child: Container(
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: Image.asset("res/$pageIndex.png"),
            )),
        onTapDown: (detail) {
          var dx = detail.localPosition.dx;
          if (dx > MediaQuery.of(context).size.width / 2) {
            pageIndex++;
            if (isPic) {
              Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => PicPage()));
            } else {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => OtherPage()));
            }
          } else {
            pageIndex--;
            Navigator.of(context).pop();
          }
        },
      ),
    );
  }
}
