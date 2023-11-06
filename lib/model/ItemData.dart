class ItemData {
  int id_item;
  String image_link;
  String title;
  String variant;
  int price;
  String description;
  List<String> shelf_life;
  String storage_method;

  ItemData(
      {required this.id_item,
      required this.image_link,
      required this.title,
      required this.variant,
      required this.price,
      required this.description,
      required this.shelf_life,
      required this.storage_method});

  factory ItemData.fromJson(dynamic json) {
    List shelf_life_list = json['shelf_life'] as List;
    List<String> shelf_life_list_string =
        shelf_life_list.map((item) => item.toString()).toList();

    return ItemData(
        id_item: json['id_item'] as int,
        image_link: json['image_link'] as String,
        title: json['title'] as String,
        variant: json['variant'] as String,
        price: json['price'] as int,
        description: json['description'] as String,
        shelf_life: shelf_life_list_string,
        storage_method: json['storage_method'] as String);
  }

  @override
  String toString() {
    // TODO: implement toString
    return '{${this.id_item},${this.image_link},${this.title},${this.variant},${this.price},${this.description},${this.shelf_life},${this.storage_method}}';
    //return '{${this.id_item},${this.image_link},${this.title},${this.variant},${this.price},${this.description},${this.storage_method}}';
  }
}

//class ItemDataDetail
