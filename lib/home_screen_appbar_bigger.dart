import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:segarsegar_dicoding_submission/page_selected_state.dart';
import 'package:segarsegar_dicoding_submission/app_colors.dart';
import 'package:segarsegar_dicoding_submission/data_template.dart';

class HomeAppbarBigger extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbarBigger(
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
  Size get preferredSize => const Size.fromHeight(160);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PageSelectedState>(context, listen: false);

    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: AppColor.colorSmoothGreen,
      elevation: 0,
      scrolledUnderElevation: 4,
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
            Image.asset(
              "images/logo_segarsegar_reversed.png",
              fit: BoxFit.fitHeight,
              height: 40,
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
            IconButton(
              onPressed: () {
                provider.changePageSelected(1);
              },
              icon: SvgPicture.asset(
                "images/gg_profile.svg",
                fit: BoxFit.fitHeight,
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
              iconSize: 32,
            )
          ],
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Container(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 150,
                child: Material(
                  type: MaterialType.transparency,
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: (selectedCategory == 0)
                          ? AppColor.colorOrange
                          : AppColor.colorDarkGreen,
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
                width: 64,
              ),
              Container(
                width: 150,
                child: Material(
                  type: MaterialType.transparency,
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: (selectedCategory == 1)
                          ? AppColor.colorOrange
                          : AppColor.colorDarkGreen,
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
                width: 64,
              ),
              Container(
                width: 150,
                child: Material(
                  type: MaterialType.transparency,
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: (selectedCategory == 2)
                          ? AppColor.colorOrange
                          : AppColor.colorDarkGreen,
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
