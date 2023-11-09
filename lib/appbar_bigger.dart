import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:segarsegar_dicoding_submission/main_page.dart';
import 'package:segarsegar_dicoding_submission/page_selected_state.dart';
import 'package:segarsegar_dicoding_submission/app_colors.dart';
import 'package:segarsegar_dicoding_submission/data_template.dart';

class AppbarBigger extends StatelessWidget implements PreferredSizeWidget {
  const AppbarBigger({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PageSelectedState>(context, listen: false);

    return AppBar(
      backgroundColor: AppColor.colorSmoothGreen,
      elevation: 0,
      scrolledUnderElevation: 4,
      automaticallyImplyLeading: false,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      flexibleSpace: Container(
        height: 80,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        alignment: Alignment.center,
        child: Row(
          children: [
            InkWell(
              onTap: () {
                provider.changePageSelected(0);
                Navigator.pushAndRemoveUntil(context,
                    MaterialPageRoute(builder: (context) {
                  return const MainPage();
                }), (route) => false);
              },
              child: Image.asset(
                "images/logo_segarsegar_reversed.png",
                fit: BoxFit.fitHeight,
                height: 40,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: const Text(
                Texts.mainTitleText,
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontFamily: 'Lato'),
              ),
            ),
            Expanded(
              child: Container(
                height: 32,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: Texts.searchHintText,
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(28.0),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                  ),
                  textAlignVertical: TextAlignVertical.center,
                ),
              ),
            ),
            const SizedBox(
              width: 64,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart_outlined),
              iconSize: 32,
              color: Colors.white,
            ),
            const SizedBox(
              width: 40,
            ),
            // IconButton(
            //   onPressed: () {
            //     provider.changePageSelected(1);
            //     Navigator.push(context, MaterialPageRoute(builder: (context) {
            //       return const MainPage();
            //     }));
            //   },
            //   icon: SvgPicture.asset(
            //     "images/gg_profile.svg",
            //     fit: BoxFit.fitHeight,
            //   ),
            //   iconSize: 32,
            // )
          ],
        ),
      ),
    );
  }
}
