import 'package:flutter/material.dart';
import 'package:segarsegar_dicoding_submission/appbar_bigger.dart';
import 'package:segarsegar_dicoding_submission/my_account_appbar.dart';
import 'package:segarsegar_dicoding_submission/my_account_content.dart';
import 'package:segarsegar_dicoding_submission/my_account_content_bigger.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
        appBar: (screenSize.width >= 768)
            ? const AppbarBigger()
            : const MyAccountAppbar() as PreferredSizeWidget,
        body: (screenSize.width >= 768)
            ? const MyAccountContentBigger()
            : const MyAccountContent());
  }
}
