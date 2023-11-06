import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:segarsegar_dicoding_submission/AppbarBigger.dart';
import 'package:segarsegar_dicoding_submission/MyAccountAppbar.dart';
import 'package:segarsegar_dicoding_submission/MyAccountContent.dart';
import 'package:segarsegar_dicoding_submission/MyAccountContentBigger.dart';
import 'package:segarsegar_dicoding_submission/PageSelectedState.dart';
import 'package:segarsegar_dicoding_submission/appColors.dart';
import 'package:segarsegar_dicoding_submission/main.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    final provider = Provider.of<PageSelectedState>(context, listen: false);

    return
        // WillPopScope(
        //   onWillPop: () async {
        //     provider.changePageSelected(0);
        //     return false;
        //   },
        //   child:
        Scaffold(
            appBar: (screenSize.width >= 768)
                ? AppbarBigger()
                : MyAccountAppbar() as PreferredSizeWidget,
            body: (screenSize.width >= 768)
                ? MyAccountContentBigger()
                : MyAccountContent());
    // );
  }
}
