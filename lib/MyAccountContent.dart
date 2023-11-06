import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:segarsegar_dicoding_submission/appColors.dart';

class MyAccountContent extends StatelessWidget {
  const MyAccountContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
              color: AppColor.colorDarkGreen,
            ),
            // child: SafeArea(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 24),
                  alignment: Alignment.center,
                  child: SvgPicture.asset('images/gg_profile.svg'),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  child: const Text(
                    "Melonia Lemonia Applea",
                    style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  child: const Text(
                    "melonialemonia@gmail.com",
                    style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: AppColor.colorGreyBackground),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Edit Akun",
                        style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Icon(
                        Icons.edit_outlined,
                        color: Colors.white,
                        size: 16,
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: FractionallySizedBox(
                    widthFactor: 0.7,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      margin: const EdgeInsets.only(bottom: 16, top: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: IntrinsicHeight(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                // color: Colors.red,
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.price_check,
                                      color: AppColor.colorDarkerGreen,
                                      size: 28,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text("20 transaksi")
                                  ],
                                ),
                              ),
                            ),
                            const VerticalDivider(
                              width: 1,
                            ),
                            Expanded(
                              child: Container(
                                // color: Colors.pink,
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star_rate_rounded,
                                      color: AppColor.colorBlueStar,
                                      size: 28,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text("20 stars")
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            // ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, left: 16, right: 16),
            child: Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    height: 40,
                    // color: Colors.pink,
                    child: Row(
                      children: [
                        SvgPicture.asset('images/location_away_outline.svg'),
                        const SizedBox(
                          width: 16,
                        ),
                        const Text(
                          "Alamat Saya",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Lato'),
                        )
                      ],
                    ),
                  ),
                ),
                const Divider(
                  height: 1,
                  color: AppColor.colorGreyscaleWireframe,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    height: 40,
                    // color: Colors.pink,
                    child: const Row(
                      children: [
                        Icon(
                          Icons.privacy_tip_outlined,
                          size: 24,
                          color: AppColor.colorDarkGreen,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Pengaturan Privasi",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Lato'),
                        )
                      ],
                    ),
                  ),
                ),
                const Divider(
                  height: 1,
                  color: AppColor.colorGreyscaleWireframe,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    height: 40,
                    // color: Colors.pink,
                    child: const Row(
                      children: [
                        Icon(
                          Icons.shopping_bag_outlined,
                          size: 24,
                          color: AppColor.colorDarkGreen,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Transaksi Saya",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Lato'),
                        )
                      ],
                    ),
                  ),
                ),
                const Divider(
                  height: 1,
                  color: AppColor.colorGreyscaleWireframe,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    height: 40,
                    // color: Colors.pink,
                    child: const Row(
                      children: [
                        Icon(
                          Icons.favorite_border_rounded,
                          size: 24,
                          color: AppColor.colorDarkGreen,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Favorit",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Lato'),
                        )
                      ],
                    ),
                  ),
                ),
                const Divider(
                  height: 1,
                  color: AppColor.colorGreyscaleWireframe,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    height: 40,
                    // color: Colors.pink,
                    child: Row(
                      children: [
                        SvgPicture.asset("images/solar_book-linear.svg"),
                        const SizedBox(
                          width: 16,
                        ),
                        const Text(
                          "Panduan Pengguna",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Lato'),
                        )
                      ],
                    ),
                  ),
                ),
                const Divider(
                  height: 1,
                  color: AppColor.colorGreyscaleWireframe,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 40),
            child: TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.logout,
                size: 24,
                color: Colors.red,
              ),
              label: const Text(
                "Log Out",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Lato',
                    color: Colors.red),
              ),
            ),
          )
        ],
      ),
    );
  }
}
