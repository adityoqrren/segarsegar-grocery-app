import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:segarsegar_dicoding_submission/appColors.dart';
import 'package:segarsegar_dicoding_submission/dataTemplate.dart';

class MyAccountContentBigger extends StatelessWidget {
  const MyAccountContentBigger({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 60),
      child: Column(
        children: [
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(16),
                                bottomRight: Radius.circular(16)),
                            color: AppColor.colorDarkGreen,
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 16, left: 16, right: 16),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      Texts.profileTitleText,
                                      style: TextStyle(
                                          fontFamily: 'Lato',
                                          fontSize: 24,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 24),
                                alignment: Alignment.center,
                                child:
                                    SvgPicture.asset('images/gg_profile.svg'),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 8),
                                child: const Text(
                                  Texts.usernameTemp,
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
                                  Texts.userEmailTemp,
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
                                      Texts.editAccountText,
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
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 4),
                                    margin: const EdgeInsets.only(
                                        bottom: 16, top: 20),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.white,
                                    ),
                                    child: IntrinsicHeight(
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 8),
                                              // color: Colors.red,
                                              child: const Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.price_check,
                                                    color: AppColor
                                                        .colorDarkerGreen,
                                                    size: 28,
                                                  ),
                                                  SizedBox(
                                                    width: 4,
                                                  ),
                                                  Flexible(
                                                    child: Text(
                                                      Texts
                                                          .transactionCountTemp,
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        fontFamily: 'Lato',
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          const VerticalDivider(
                                            width: 1,
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              // color: Colors.pink,
                                              child: const Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.star_rate_rounded,
                                                    color:
                                                        AppColor.colorBlueStar,
                                                    size: 28,
                                                  ),
                                                  SizedBox(
                                                    width: 4,
                                                  ),
                                                  Flexible(
                                                    child: Text(
                                                      Texts.starsTemp,
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        fontFamily: 'Lato',
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // height: 400,
                          margin: const EdgeInsets.only(
                              top: 20, left: 16, right: 16),
                          child: Column(
                            children: [
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12),
                                    height: 40,
                                    // color: Colors.pink,
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                            'images/location_away_outline.svg'),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        const Text(
                                          Texts.myAddressText,
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: 'Lato'),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const Divider(
                                height: 1,
                                color: AppColor.colorGreyscaleWireframe,
                              ),
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12),
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
                                          Texts.privacySettingText,
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: 'Lato'),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const Divider(
                                height: 1,
                                color: AppColor.colorGreyscaleWireframe,
                              ),
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12),
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
                                          Texts.myTransactionText,
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: 'Lato'),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const Divider(
                                height: 1,
                                color: AppColor.colorGreyscaleWireframe,
                              ),
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12),
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
                                          Texts.favoriteText,
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: 'Lato'),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const Divider(
                                height: 1,
                                color: AppColor.colorGreyscaleWireframe,
                              ),
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12),
                                    height: 40,
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                            "images/solar_book-linear.svg"),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        const Text(
                                          Texts.userGuidesText,
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: 'Lato'),
                                        )
                                      ],
                                    ),
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
                          margin: const EdgeInsets.only(top: 40, bottom: 40),
                          child: TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.logout,
                              size: 24,
                              color: Colors.red,
                            ),
                            label: const Text(
                              Texts.logoutText,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'Lato',
                                  color: Colors.red),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 24,
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white),
                    // height: 1000,
                    constraints: const BoxConstraints(minHeight: 600),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text(
                          Texts.myAddressText,
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 24,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                Texts.mainAddressText,
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 24,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              const SizedBox(
                                height: 28,
                              ),
                              Text(
                                Texts.mainAddressTemp,
                                style: const TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColor.colorSmoothGreen,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    elevation: 1,
                                  ),
                                  child: const Text(Texts.editText),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                Texts.otherAddressText,
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 24,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              const SizedBox(
                                height: 28,
                              ),
                              Column(
                                children: Texts.otherAddressTempList
                                    .map((addressItem) {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        addressItem,
                                        style: const TextStyle(
                                          fontFamily: 'Lato',
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 8),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    AppColor.colorSmoothGreen,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                elevation: 1,
                                              ),
                                              child: const Text(
                                                  Texts.setMainAddress),
                                            ),
                                            const SizedBox(
                                              width: 40,
                                            ),
                                            ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    AppColor.colorSmoothGreen,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                elevation: 1,
                                              ),
                                              child: const Text(Texts.editText),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Divider(
                                        color: AppColor.colorGreyBackground,
                                      ),
                                      const SizedBox(
                                        height: 14,
                                      )
                                    ],
                                  );
                                }).toList(),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
