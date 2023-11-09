import 'package:flutter/material.dart';
import 'package:segarsegar_dicoding_submission/AppbarBigger.dart';
import 'package:segarsegar_dicoding_submission/MyAccountAppbar.dart';
import 'package:segarsegar_dicoding_submission/MyAccountContent.dart';
import 'package:segarsegar_dicoding_submission/MyAccountContentBigger.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
        appBar: (screenSize.width >= 768)
            ? AppbarBigger()
            : MyAccountAppbar() as PreferredSizeWidget,
        body: (screenSize.width >= 768)
            ? MyAccountContentBigger()
            : MyAccountContent());
  }
}
