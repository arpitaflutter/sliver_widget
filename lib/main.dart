import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliver_widget/screens/Sliver/view/sliverScreen.dart';

void main()
{
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (p0) => sliverScreen(),
      },
    ),
  );
}