import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:segarsegar_dicoding_submission/home_screen.dart';
import 'package:segarsegar_dicoding_submission/my_account_screen.dart';
import 'package:segarsegar_dicoding_submission/page_selected_state.dart';
import 'package:segarsegar_dicoding_submission/app_colors.dart';
import 'package:segarsegar_dicoding_submission/data_template.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> screenList = [const HomeScreen(), const MyAccountScreen()];

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
        body: Consumer<PageSelectedState>(
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
