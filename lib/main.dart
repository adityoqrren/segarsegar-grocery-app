import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:segarsegar_dicoding_submission/HomeScreen.dart';
import 'package:segarsegar_dicoding_submission/MyAccountScreen.dart';
import 'package:segarsegar_dicoding_submission/PageSelectedState.dart';
import 'package:segarsegar_dicoding_submission/appColors.dart';
import 'package:segarsegar_dicoding_submission/dataTemplate.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor:
        Colors.transparent, // Set the status bar color to transparent
  ));
  runApp(ChangeNotifierProvider(
    create: (context) => PageSelectedState(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
      // MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // int indexPageSelected = 0;
  List<Widget> screenList = [const HomeScreen(), const MyAccountScreen()];

  // void changeIndexPageSelected(int pageSelected) {
  //   setState(() {
  //     indexPageSelected = pageSelected;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        var myProvider = Provider.of<PageSelectedState>(context, listen: false);
        if (myProvider.pageSelected == 0) {
          return true;
        }
        myProvider.changePageSelected(0);
        return false;
      },
      child: Scaffold(
        body:
            //     IndexedStack(
            //   index: indexPageSelected,
            //   children: screenList,
            // ),
            Consumer<PageSelectedState>(
          builder: (_, pageState, __) => IndexedStack(
            index: pageState.pageSelected,
            children: screenList,
          ),
        ),
        bottomNavigationBar: Consumer<PageSelectedState>(
          builder: (context, value, child) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 768) {
                return BottomNavigationBar(
                  currentIndex: value.pageSelected,
                  onTap: (index) {
                    value.changePageSelected(index);
                  },
                  selectedItemColor: AppColor.colorOrange,
                  items: [
                    BottomNavigationBarItem(
                        icon: SvgPicture.asset(
                          "images/lucide_home.svg",
                          colorFilter: ColorFilter.mode(
                              (value.pageSelected == 0)
                                  ? AppColor.colorOrange
                                  : AppColor.colorGreyDarker,
                              BlendMode.srcIn),
                        ),
                        label: Texts.homeText),
                    BottomNavigationBarItem(
                        icon: SvgPicture.asset(
                          "images/iconamoon_profile.svg",
                          colorFilter: ColorFilter.mode(
                              (value.pageSelected == 1)
                                  ? AppColor.colorOrange
                                  : AppColor.colorGreyDarker,
                              BlendMode.srcIn),
                        ),
                        label: Texts.profileText),
                  ],
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ),
      ),
    );
  }
}
