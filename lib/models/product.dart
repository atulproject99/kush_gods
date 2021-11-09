import 'package:get/get_rx/src/rx_types/rx_types.dart';

class Product {
  String? id;
  String? categoryId;
  String? name;
  String? mrp;
  String? discount;
  String? price;
  String? size;
  String? unit;
  String? color;
  String? quality;
  String? quantity;
  String? delStatus;
  String? date;
  String? images;
  List<dynamic>? img;

  Product(
      {this.id,
      this.categoryId,
      this.name,
      this.mrp,
      this.discount,
      this.price,
      this.size,
      this.unit,
      this.color,
      this.quality,
      this.quantity,
      this.delStatus,
      this.date,
      this.images,
      this.img});

  var quant = 1.obs;

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryId = json['category_id'];
    name = json['name'];
    mrp = json['mrp'];
    discount = json['discount'];
    price = json['price'];
    size = json['size'];
    unit = json['unit'];
    color = json['color'];
    quality = json['quality'];
    quantity = json['quantity'];
    delStatus = json['del_status'];
    date = json['date'];
    images = json['images'];
    img = json['img'] as List<dynamic>;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['category_id'] = this.categoryId;
    data['name'] = this.name;
    data['mrp'] = this.mrp;
    data['discount'] = this.discount;
    data['price'] = this.price;
    data['size'] = this.size;
    data['unit'] = this.unit;
    data['color'] = this.color;
    data['quality'] = this.quality;
    data['quantity'] = this.quantity;
    data['del_status'] = this.delStatus;
    data['date'] = this.date;
    data['images'] = this.images;
    return data;
  }
}
