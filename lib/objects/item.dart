class Item {
  String? id;
  String? title;
  double? price;
  String? unidad;
  String? image;
  int? cantidad;

  Item({
    this.id,
    this.title,
    this.price,
    this.unidad,
    this.image,
    this.cantidad,
  });

  Item.map(dynamic o) {
    id = o["id"];
    title = o["title"];
    price = o["price"];
    unidad = o["unidad"];
    image = o["image"];
    cantidad = o["cantidad"];
  }

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["id"] = id;
    map["title"] = title;
    map["price"] = price;
    map["unidad"] = unidad;
    map["image"] = image;
    map["cantidad"] = cantidad;

    return map;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data["id"] = id;
    data["title"] = title;
    data["price"] = price;
    data["unidad"] = unidad;
    data["image"] = image;
    data["cantidad"] = cantidad;

    return data;
  }
}
