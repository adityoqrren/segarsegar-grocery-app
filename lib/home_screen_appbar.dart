import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:segarsegar_dicoding_submission/app_colors.dart';
import 'package:segarsegar_dicoding_submission/data_template.dart';

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
      ),
      title: Container(
        height: 32,
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            hintText: Texts.searchHintText,
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
        child: Container(
          height: 88,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
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
                            const Text(Texts.vegetablesText),
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
                            const Text(Texts.fruitsText),
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
                            const Text(Texts.meatfistText),
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
      ),
    );
  }
}
