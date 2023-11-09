import 'package:flutter/material.dart';
import 'package:segarsegar_dicoding_submission/AppbarBigger.dart';
import 'package:segarsegar_dicoding_submission/appColors.dart';
import 'package:segarsegar_dicoding_submission/dataTemplate.dart';
import 'package:segarsegar_dicoding_submission/model/ItemData.dart';

class ItemInfoDetailBigger extends StatelessWidget {
  const ItemInfoDetailBigger(
      {super.key,
      required this.textFieldController,
      required this.itemData,
      required this.countItem,
      required this.addCount,
      required this.substractCount,
      required this.setCountItem});

  final TextEditingController textFieldController;
  final ItemData itemData;
  final int countItem;
  final Function addCount;
  final Function substractCount;
  final Function setCountItem;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColor.colorGreyBackground,
      appBar: const AppbarBigger(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 60),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              var size = constraints.maxWidth;
                              return Image.network(
                                itemData.image_link,
                                height: size,
                                width: size,
                                fit: BoxFit.cover,
                              );
                            },
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          decoration: BoxDecoration(
                              color: AppColor.colorGreyBackground,
                              borderRadius: BorderRadius.circular(8)),
                          margin: const EdgeInsets.only(top: 8),
                          child: (screenWidth >= 992)
                              ? IntrinsicHeight(
                                  child: Row(
                                    children: [
                                      const Expanded(
                                        flex: 2,
                                        child: Row(
                                          children: [
                                            Text(
                                              Texts.bannerDetail_1,
                                              style: TextStyle(
                                                fontFamily: 'Lato',
                                                fontSize: 40,
                                                fontWeight: FontWeight.normal,
                                                color: AppColor.colorOrange,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            // Container(
                                            //   margin: EdgeInsets.only(left: 20, right: 20),
                                            // child:
                                            Flexible(
                                              child: Text(
                                                Texts.bannerDetail_2,
                                                style: TextStyle(
                                                  fontFamily: 'Lato',
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  color:
                                                      AppColor.colorSmoothGreen,
                                                ),
                                              ),
                                            ),
                                            // ),
                                            SizedBox(
                                              width: 16,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 1,
                                        color: AppColor.colorOrange,
                                        height: 60,
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          // color: Colors.blue,
                                          alignment: Alignment.center,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16),
                                          child: const Text(
                                            Texts.bannerDetail_3,
                                            style: TextStyle(
                                              fontFamily: 'Lato',
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: AppColor.colorSmoothGreen,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              : Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    const Text(
                                      Texts.bannerDetail_1,
                                      style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 40,
                                        fontWeight: FontWeight.normal,
                                        color: AppColor.colorOrange,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        const Expanded(
                                          flex: 1,
                                          child: Text(
                                            Texts.bannerDetail_2,
                                            style: TextStyle(
                                              fontFamily: 'Lato',
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: AppColor.colorSmoothGreen,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 1,
                                          color: AppColor.colorOrange,
                                          height: 60,
                                        ),
                                        const Expanded(
                                          flex: 1,
                                          child: Text(
                                            Texts.bannerDetail_3,
                                            style: TextStyle(
                                              fontFamily: 'Lato',
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: AppColor.colorSmoothGreen,
                                            ),
                                            textAlign: TextAlign.end,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          itemData.title,
                          style: const TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: AppColor.colorSmoothGreen,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 24),
                          margin: const EdgeInsets.only(top: 32, bottom: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                itemData.variant,
                                style: const TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                currencyFormat(itemData.price),
                                style: const TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const Text(
                                Texts.descText,
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                itemData.description,
                                style: const TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const Text(
                                Texts.shelfLifeText,
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Di dalam pendingin : ${itemData.shelf_life[0]}",
                                style: const TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Di luar pendingin : ${itemData.shelf_life[1]}",
                                style: const TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const Text(
                                Texts.storageMethodText,
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                itemData.storage_method,
                                style: const TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(),
                        const SizedBox(
                          height: 24,
                        ),
                        Row(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Material(
                                    type: MaterialType.transparency,
                                    child: Ink(
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          bottomLeft: Radius.circular(8),
                                        ),
                                        color: AppColor.colorSmoothGreen,
                                        border: Border.all(
                                            color: AppColor
                                                .colorGreyscaleWireframe,
                                            width: 2),
                                      ),
                                      child: InkWell(
                                        highlightColor: Colors.greenAccent[100],
                                        onTap: () {
                                          if (countItem > 1) {
                                            substractCount();
                                          }
                                        },
                                        child: Container(
                                          width: 36,
                                          height: 36,
                                          alignment: Alignment.center,
                                          child: const Icon(
                                            Icons.remove,
                                            size: 24,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 48,
                                    height: 40,
                                    decoration: const BoxDecoration(
                                        border: Border.symmetric(
                                          horizontal: BorderSide(
                                              width: 2,
                                              color: AppColor
                                                  .colorGreyscaleWireframe),
                                        ),
                                        color: Colors.white),
                                    alignment: Alignment.center,
                                    child: TextField(
                                      controller: textFieldController,
                                      onChanged: (value) {
                                        setCountItem(value);
                                      },
                                      decoration:
                                          const InputDecoration.collapsed(
                                              hintText: ""),
                                      keyboardType: TextInputType.number,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Material(
                                    type: MaterialType.transparency,
                                    child: Ink(
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                          topRight: Radius.circular(8),
                                          bottomRight: Radius.circular(8),
                                        ),
                                        color: AppColor.colorSmoothGreen,
                                        border: Border.all(
                                            color: AppColor
                                                .colorGreyscaleWireframe,
                                            width: 2),
                                      ),
                                      child: InkWell(
                                        highlightColor: Colors.greenAccent[100],
                                        onTap: () {
                                          addCount();
                                        },
                                        child: Container(
                                          width: 36,
                                          height: 36,
                                          alignment: Alignment.center,
                                          child: const Icon(
                                            Icons.add,
                                            size: 24,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(flex: 2),
                            Expanded(
                              flex: 3,
                              child: ElevatedButton.icon(
                                icon: const Icon(
                                  Icons.add_shopping_cart_rounded,
                                  size: 24,
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColor.colorSmoothGreen,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  elevation: 1,
                                  minimumSize: const Size.fromHeight(40),
                                ),
                                onPressed: () {},
                                label: const Text(
                                  Texts.addText,
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
