import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:segarsegar_dicoding_submission/PageSelectedState.dart';
import 'package:segarsegar_dicoding_submission/appColors.dart';
import 'package:segarsegar_dicoding_submission/main.dart';

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
        // color: Colors.pink,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        alignment: Alignment.center,
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                provider.changePageSelected(0);
                // Navigator.pushReplacement(context,
                //     MaterialPageRoute(builder: (context) {
                //   return const MainPage();
                // }));
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
                "segarSegar",
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
                    hintText: 'Cari produk segar disini',
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
