import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:segarsegar_dicoding_submission/appColors.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar(
      {super.key,
      required this.selectedCategory,
      required this.searchValue,
      required this.changeSelectedCategory,
      required this.changeSearchValue});

  final int selectedCategory;
  final String searchValue;
  final Function changeSelectedCategory;
  final Function changeSearchValue;

  @override
  Size get preferredSize => const Size.fromHeight(152);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.colorSmoothGreen,
      toolbarHeight: 64,
      leadingWidth: 54,
      elevation: 0,
      scrolledUnderElevation: 4,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      leading: Container(
        padding: const EdgeInsets.only(left: 16),
        child: Image.asset(
          'images/logo_segarsegar_reversed.png',
          fit: BoxFit.fitWidth,
        ),
        // Text("SegarSegar"),
      ),
      title:
          // Padding(
          //   padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          //   child:
          Container(
        height: 32,
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            hintText: 'Cari produk segar disini',
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black, width: 1),
              borderRadius: BorderRadius.circular(28.0),
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(horizontal: 8),
          ),
          onChanged: (String value) {
            changeSearchValue(value);
          },
          textAlignVertical: TextAlignVertical.center,
        ),
      ),
      // ),
      actions: [
        Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 16, 0),
          child: const Icon(
            Icons.shopping_cart_outlined,
            size: 32,
          ),
        )
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(88),
        // child: ClipRRect(
        //   borderRadius: BorderRadius.only(
        //     bottomLeft: Radius.circular(16),
        //     bottomRight: Radius.circular(16),
        //   ),
        // child: ClipRRect(
        //   borderRadius: BorderRadius.only(
        //     bottomLeft: Radius.circular(16),
        //     bottomRight: Radius.circular(16),
        //   ),
        child: Container(
          height: 88,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.only(
          //     bottomLeft: Radius.circular(16),
          //     bottomRight: Radius.circular(16),
          //   ),
          // color: Colors.red,
          // ),
          // color: Colors.red,
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: Material(
                  type: MaterialType.transparency,
                  child: Ink(
                    decoration: BoxDecoration(
                      color: (selectedCategory == 0)
                          ? AppColor.colorOrange
                          : AppColor.colorDarkGreen,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: InkWell(
                      onTap: () {
                        changeSelectedCategory(0);
                      },
                      borderRadius: BorderRadius.circular(16),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset("images/vegetables_icon.svg"),
                            const SizedBox(
                              height: 4,
                            ),
                            const Text("Vegetables"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 26,
              ),
              Expanded(
                flex: 1,
                child: Material(
                  type: MaterialType.transparency,
                  child: Ink(
                    decoration: BoxDecoration(
                      color: (selectedCategory == 1)
                          ? AppColor.colorOrange
                          : AppColor.colorDarkGreen,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: InkWell(
                      onTap: () {
                        changeSelectedCategory(1);
                      },
                      borderRadius: BorderRadius.circular(16),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset("images/fruits_icon.svg"),
                            const SizedBox(
                              height: 4,
                            ),
                            const Text("Fruits"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 26,
              ),
              Expanded(
                flex: 1,
                child: Material(
                  type: MaterialType.transparency,
                  child: Ink(
                    decoration: BoxDecoration(
                      color: (selectedCategory == 2)
                          ? AppColor.colorOrange
                          : AppColor.colorDarkGreen,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: InkWell(
                      onTap: () {
                        changeSelectedCategory(2);
                      },
                      borderRadius: BorderRadius.circular(16),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset("images/meats_fish_icon.svg"),
                            const SizedBox(
                              height: 4,
                            ),
                            const Text("Meat & Fish"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // ),
        // ),
      ),
    );
  }
}