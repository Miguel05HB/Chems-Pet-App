import 'package:chems_pet_app/objects/item.dart';
import 'package:flutter/cupertino.dart';

class CarritoCompras extends ChangeNotifier {
  Map<String, Item> _items = {};
  Map<String, Item> get item {
    return {...item};
  }

  int get numeroProducts {
    return _items.length;
  }

  double get subTotal {
    var total = 0.0;
    item.forEach(
        (key, elementos) => total += (elementos.price! * elementos.cantidad!));
    return total;
  }

  double get impuesto {
    var total = 0.0;
    total = subTotal * 0.18;
    return total;
  }

  double get total {
    var total = 0.0;
    total = subTotal * 0.18;
    return total;
  }

  void agregarItem(
    String productoid,
    String title,
    double price,
    String unidad,
    String image,
    int cantidad,
  ) {
    if (_items.containsKey(productoid)) {
      _items.update(
        productoid,
        (old) => Item(
          id: old.id,
          title: old.title,
          price: old.price,
          unidad: old.unidad,
          image: old.image,
          cantidad: old.cantidad! + 1,
        ),
      );
    } else {
      _items.putIfAbsent(
        productoid,
        () => Item(
          id: productoid,
          title: title,
          price: price,
          unidad: unidad,
          image: image,
          cantidad: 1,
        ),
      );
    }
  }

  void removerItem(String productoid) {
    _items.remove(productoid);
  }

  void incrementarCantidadItem(String productoid) {
    if (_items.containsKey(productoid)) {
      _items.update(
        productoid,
        (old) => Item(
          id: old.id,
          title: old.title,
          price: old.price,
          unidad: old.unidad,
          image: old.image,
          cantidad: old.cantidad! + 1,
        ),
      );
    }
  }

  void decrementarCantidadItem(String productoid) {
    if (!_items.containsKey(productoid)) return;

    if (_items[productoid]?.cantidad != 1) {
      _items.update(
        productoid,
        (old) => Item(
          id: old.id,
          title: old.title,
          price: old.price,
          unidad: old.unidad,
          image: old.image,
          cantidad: old.cantidad! - 1,
        ),
      );
    } else {
      _items.remove(productoid);
    }
  }

  void removerCarrito() {
    _items = {};
  }
}
