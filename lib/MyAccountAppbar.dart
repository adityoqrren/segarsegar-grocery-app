import 'package:flutter/material.dart';
import 'package:segarsegar_dicoding_submission/appColors.dart';

class MyAccountAppbar extends StatelessWidget implements PreferredSizeWidget {
  const MyAccountAppbar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      scrolledUnderElevation: 1,
      backgroundColor: AppColor.colorDarkGreen,
      title: const Text(
        "Profil Saya",
        style: TextStyle(
            fontFamily: 'Lato',
            fontSize: 24,
            fontWeight: FontWeight.normal,
            color: Colors.white),
      ),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 8),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              size: 32,
              color: Colors.white,
            ),
            // Icons.shopping_cart_outlined,
            // size: 32,
            // color: Colors.white,
          ),
        ),
      ],
    );
  }
}
