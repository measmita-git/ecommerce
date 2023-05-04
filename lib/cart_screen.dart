import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  //list of items on sale
  final List _shopItems = [
    //[itemName,itemPrice,imagePath,color]

    ["Tshirt", "600", "assets/item/tshirt.png", Colors.green],
    ["Varsity Jacket", "3200", "assets/item/varsity.jpg", Colors.red],
    ["Jacket", "2600", "assets/item/jacket.png", Colors.black],
    ["Sneakers", "2800", "assets/item/snicker.png", Colors.grey],
    ["Bag", "1600", "assets/item/bag.png", Colors.green],
    ["Bodycon dress", "1500", "assets/item/bodycon.jpg", Colors.green],
    ["Flannel", "1100", "assets/item/Flannel.jpg", Colors.green],
    ["Hoodie", "1800", "assets/item/hoodie.jpg", Colors.purple],
    ["Necklace", "1800", "assets/item/necklace.jpg", Colors.purple],
    ["Bracelet", "1800", "assets/item/bracelet.jpg", Colors.purple],
  ];

  //list of cart items
  List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  //add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  //calculate total price

  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
