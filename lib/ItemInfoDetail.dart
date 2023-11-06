import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:segarsegar_dicoding_submission/ItemInfoDetailBigger.dart';
import 'package:segarsegar_dicoding_submission/appColors.dart';
import 'package:segarsegar_dicoding_submission/model/ItemData.dart';

var textTemplate =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vehicula interdum lacus quis vehicula. Ut ultricies dui vel lacus scelerisque, vel euismod tortor condimentum. Phasellus nec dui quis lacus gravida condimentum vel sed arcu. Fusce tristique dignissim justo, eu pharetra turpis. Proin in augue venenatis, tempus enim nec, egestas lectus. Ut ultricies dui vel lacus scelerisque, vel euismod tortor condimentum. Phasellus nec dui quis lacus gravida condimentum vel sed arcu. Fusce tristique dignissim justo, eu pharetra turpis. Proin in augue venenatis, tempus enim nec, egestas lectus.";

class ItemInfoDetail extends StatefulWidget {
  const ItemInfoDetail({super.key, required this.itemData});

  final ItemData itemData;

  @override
  State<ItemInfoDetail> createState() => _ItemInfoDetailState();
}

class _ItemInfoDetailState extends State<ItemInfoDetail> {
  final _textFieldController = TextEditingController();

  int _countItem = 1;
  double _opacity = 0;

  final ScrollController _scrollController = ScrollController();

  void _scrollListener() {
    if (_scrollController.offset < 70) {
      setState(() {
        _opacity = 1 * (_scrollController.offset / 70);
      });
    } else {
      setState(() {
        _opacity = 1;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _textFieldController.text = _countItem.toString();
    _scrollController.addListener(_scrollListener);
  }

  void addCount() {
    setState(() {
      _countItem++;
      _textFieldController.text = _countItem.toString();
    });
  }

  void substractCount() {
    setState(() {
      _countItem--;
      _textFieldController.text = _countItem.toString();
    });
  }

  void setCountItem(String value) {
    setState(() {
      _countItem = int.parse(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    var statusBarHeight = MediaQuery.of(context).viewPadding.top;
    Size screenSize = MediaQuery.of(context).size;

    if (screenSize.width >= 768) {
      return ItemInfoDetailBigger(
        textFieldController: _textFieldController,
        itemData: widget.itemData,
        countItem: _countItem,
        addCount: addCount,
        substractCount: substractCount,
        setCountItem: setCountItem,
      );
    } else {
      return AnnotatedRegion(
        value: SystemUiOverlayStyle(
          statusBarColor:
              Colors.transparent, // Set the status bar color to transparent
          statusBarIconBrightness: (_opacity >= 0.5)
              ? Brightness.dark
              : Brightness.light, // Adjust status bar icon color (dark/light)
        ),
        child: Scaffold(
          backgroundColor: AppColor.colorGreyBackground,
          body: Stack(
            fit: StackFit.expand,
            alignment: Alignment.topLeft,
            children: [
              //content
              SingleChildScrollView(
                controller: _scrollController,
                padding: const EdgeInsets.all(
                    0), //by default, listview add padding. avoid padding of statusbar with this way
                // color: Colors.green, // Replace with your content
                // child: Column(
                child: Column(
                  children: [
                    // Container(
                    //   height: 320,
                    //   child:
                    Image.network(
                      widget.itemData.image_link,
                      height: 320,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    // ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 16),
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            widget.itemData.title,
                            style: const TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            widget.itemData.variant,
                            style: const TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 8),
                            child: Text(
                              "Rp${widget.itemData.price}",
                              style: const TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: AppColor.colorOrange,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    ConstrainedBox(
                      constraints: const BoxConstraints(minHeight: 100),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 16),
                        margin: const EdgeInsets.only(top: 8),
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text(
                              "Deskripsi",
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 4),
                              child: Text(
                                widget.itemData.description,
                                style: const TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 16),
                      margin: const EdgeInsets.only(top: 8),
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Text(
                            "Umur Simpan",
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 4),
                            child: Text(
                              "Di dalam pendingin : ${widget.itemData.shelf_life[0]}",
                              style: const TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                            // ${widget.itemData.shelf_life[0]}
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 4),
                            child: Text(
                              "Di luar pendingin : ${widget.itemData.shelf_life[1]}",
                              style: const TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 16),
                      margin: const EdgeInsets.only(top: 8),
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Text(
                            "Petunjuk Penyimpanan",
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 4),
                            child: Text(
                              widget.itemData.storage_method,
                              style: const TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 16),
                      color: Colors.white,
                      margin: const EdgeInsets.only(top: 8),
                      child: IntrinsicHeight(
                        child: Row(
                          children: [
                            const Expanded(
                              flex: 2,
                              child: Row(
                                children: [
                                  Text(
                                    "100%",
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
                                      "Kualitas Terjamin",
                                      style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: AppColor.colorSmoothGreen,
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: const Text(
                                  "Cepat sampai, kurang dari 4 jam",
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
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    )
                  ],
                ),
                // ),
              ),
              //appbar
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Material(
                  elevation: (_opacity == 1) ? 2 : 0,
                  color: Colors.white.withOpacity(_opacity),
                  child: Container(
                    alignment: Alignment.topCenter,
                    height: statusBarHeight + kToolbarHeight,
                    child: Container(
                      height: kToolbarHeight,
                      margin: EdgeInsets.only(top: statusBarHeight),
                      // color: Colors.orange,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back_ios_rounded,
                              size: 24,
                              color: (_opacity >= 0.5)
                                  ? AppColor.colorSmoothGreen
                                  : Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.shopping_cart_outlined,
                            size: 32,
                            color: (_opacity >= 0.5)
                                ? AppColor.colorSmoothGreen
                                : Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              //bottom bar
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Material(
                  elevation: 10,
                  child: Container(
                    color: Colors.white,
                    // decoration: BoxDecoration(
                    //   // color: Colors.white,
                    //   // boxShadow: [
                    //   //   BoxShadow(
                    //   //     color: Colors.black54,
                    //   //     blurRadius: 5,
                    //   //     offset: Offset(0, 4),
                    //   //   )
                    //   // ],
                    // ),
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Material(
                                type: MaterialType.transparency,
                                // borderRadius: BorderRadius.only(
                                //   topLeft: Radius.circular(8),
                                //   bottomLeft: Radius.circular(8),
                                // ),
                                child: Ink(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      bottomLeft: Radius.circular(8),
                                    ),
                                    color: AppColor.colorSmoothGreen,
                                    border: Border.all(
                                        color: AppColor.colorGreyscaleWireframe,
                                        width: 2),
                                  ),
                                  child: InkWell(
                                    highlightColor: Colors.greenAccent[100],
                                    onTap: () {
                                      if (_countItem > 1) {
                                        setState(() {
                                          _countItem--;
                                          _textFieldController.text =
                                              _countItem.toString();
                                        });
                                      }
                                    },
                                    child: Container(
                                      // color: Colors.purple,
                                      width: 36,
                                      height: 36,
                                      alignment: Alignment.center,
                                      child: const Icon(
                                        Icons.remove,
                                        size: 24,
                                        color: Colors.white,
                                      ),
                                      // decoration: BoxDecoration(
                                      //   // AppColor.colorGreyscaleWireframe,
                                      //   border: Border.all(
                                      //       color: AppColor.colorGreyscaleWireframe,
                                      //       width: 2),
                                      //   borderRadius: BorderRadius.only(
                                      //     topLeft: Radius.circular(8),
                                      //     bottomLeft: Radius.circular(8),
                                      //   ),
                                      // ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 48,
                                height: 40,
                                // color: Colors.red,
                                decoration: const BoxDecoration(
                                    border: Border.symmetric(
                                      horizontal: BorderSide(
                                          width: 2,
                                          color:
                                              AppColor.colorGreyscaleWireframe),
                                    ),
                                    color: Colors.white),
                                alignment: Alignment.center,
                                child: TextField(
                                  controller: _textFieldController,
                                  onChanged: (value) {
                                    setState(() {
                                      _countItem = int.parse(value);
                                    });
                                  },
                                  decoration: const InputDecoration.collapsed(
                                      hintText: ""),
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Material(
                                type: MaterialType.transparency,
                                // borderRadius: BorderRadius.only(
                                //   topLeft: Radius.circular(8),
                                //   bottomLeft: Radius.circular(8),
                                // ),
                                child: Ink(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                    ),
                                    color: AppColor.colorSmoothGreen,
                                    border: Border.all(
                                        color: AppColor.colorGreyscaleWireframe,
                                        width: 2),
                                  ),
                                  child: InkWell(
                                    highlightColor: Colors.greenAccent[100],
                                    onTap: () {
                                      setState(() {
                                        _countItem++;
                                        _textFieldController.text =
                                            _countItem.toString();
                                      });
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
                        SizedBox(
                          width: 30,
                          child: Container(
                            color: Colors.black,
                          ),
                        ),
                        Expanded(
                          flex: 1,
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
                              "tambah",
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }
  }

  @override
  void dispose() {
    _textFieldController.dispose();
    super.dispose();
  }
}
