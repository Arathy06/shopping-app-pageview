

import 'package:flutter/material.dart';
import 'package:flutter_pageview/Views/Pageviewdemo.dart';

void main()
{
  runApp(Mypage());
}

class Mypage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Flipkart")),
        ),
        body: PageViewDemo(),
      ),
    );
  }
}
