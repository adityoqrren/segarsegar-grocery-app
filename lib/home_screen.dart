import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:segarsegar_dicoding_submission/home_screen_appbar.dart';
import 'package:segarsegar_dicoding_submission/home_screen_appbar_bigger.dart';
import 'package:segarsegar_dicoding_submission/app_colors.dart';
import 'package:segarsegar_dicoding_submission/item_info_detail.dart';
import 'package:segarsegar_dicoding_submission/data_template.dart';
import 'dart:convert';

import 'package:segarsegar_dicoding_submission/model/item_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  // final Function changeIndexPageSelected;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ItemData> _items = [];
  String _searchValue = "";
  int _selectedCategory = 0;
  final ScrollController _scrollController =
      ScrollController(initialScrollOffset: 0);

  Future<void> readJson(int code) async {
    String locationFile = (code == 0)
        ? "assets/segar_detailvegetables.json"
        : (code == 1)
            ? "assets/segar_detailfruits.json"
            : "assets/segar_detailmeatfish.json";
    try {
      final String response = await rootBundle.loadString(locationFile);
      final dataResponse = await json.decode(response);
      final data = dataResponse["data"] as List;
      List<ItemData> itemData =
          data.map((itemJson) => ItemData.fromJson(itemJson)).toList();
      //converting to object
      setState(() {
        _items = itemData;
      });
    } catch (e) {
      debugPrint("error on getting data $e");
    }
    // print(itemData[0].shelf_life);
  }

  @override
  void initState() {
    super.initState();
    readJson(0);
  }

  void changeSelectedCategory(int selected) {
    setState(() {
      _selectedCategory = selected;
      readJson(selected);
      if (_items.isNotEmpty) {
        _scrollController.animateTo(0,
            duration: const Duration(milliseconds: 100), curve: Curves.linear);
      }
    });
  }

  void changeSearchValue(String value) {
    setState(() {
      _searchValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: (screenSize.width >= 768)
          ? HomeAppbarBigger(
              selectedCategory: _selectedCategory,
              searchValue: _searchValue,
              changeSelectedCategory: changeSelectedCategory,
              changeSearchValue: changeSearchValue)
          : HomeAppBar(
              selectedCategory: _selectedCategory,
              searchValue: _searchValue,
              changeSelectedCategory: changeSelectedCategory,
              changeSearchValue: changeSearchValue) as PreferredSizeWidget,
      body: Container(
        // color: Colors.amber,
        child: _items.isNotEmpty
            ? GridView.count(
                crossAxisCount: (screenSize.width < 576)
                    ? 2
                    : (screenSize.width < 768)
                        ? 3
                        : (screenSize.width < 992)
                            ? 4
                            : 5,
                crossAxisSpacing: 8,
                childAspectRatio: 1 / 1.6,
                padding: (screenSize.width < 576)
                    ? const EdgeInsets.all(16)
                    : (screenSize.width < 992)
                        ? const EdgeInsets.all(24)
                        : const EdgeInsets.symmetric(
                            vertical: 32, horizontal: 60),
                controller: _scrollController,
                children: _items.map(
                  (itemData) {
                    return InkWell(
                      borderRadius: BorderRadius.circular(8),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ItemInfoDetail(
                            itemData: itemData,
                          );
                        }));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        clipBehavior: Clip.antiAlias,
                        child: Column(
                          children: [
                            AspectRatio(
                              aspectRatio: 1 / 0.9,
                              //OPEN THIS LINE WHEN WE WANT TO DEPLOY (SUBMIT)
                              child: FadeInImage.assetNetwork(
                                placeholder: 'images/placeholder.png',
                                image: itemData.image_link,
                                fit: BoxFit.cover,
                                imageErrorBuilder:
                                    (context, error, stackTrace) {
                                  return Image.asset(
                                    "images/placeholder.png",
                                    fit: BoxFit.cover,
                                  );
                                },
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                child: Stack(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Text(
                                          itemData.title,
                                          style: const TextStyle(
                                              fontFamily: 'Lato', fontSize: 14),
                                          textAlign: TextAlign.start,
                                        ),
                                        Text(
                                          itemData.variant,
                                          style: const TextStyle(
                                              fontFamily: 'Lato',
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(top: 12),
                                          child: Text(
                                            currencyFormat(itemData.price),
                                            style: const TextStyle(
                                                fontFamily: 'Lato',
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        )
                                      ],
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      left: 0,
                                      right: 0,
                                      child: Material(
                                        color: AppColor.colorSmoothGreen,
                                        borderRadius: BorderRadius.circular(8),
                                        child: InkWell(
                                          splashColor: Colors.greenAccent[100],
                                          onTap: () {},
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Container(
                                            // decoration: BoxDecoration(
                                            //     color: AppColor.colorSmoothGreen,
                                            //     borderRadius:
                                            //         BorderRadius.circular(8)),
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 2),
                                            child: const Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons
                                                      .add_shopping_cart_rounded,
                                                  size: 20,
                                                  color: Colors.white,
                                                ),
                                                Text(
                                                  Texts.addText,
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontFamily: 'Lato',
                                                      color: Colors.white),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ).toList(),
              )
            : Container(),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
