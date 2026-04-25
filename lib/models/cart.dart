import 'package:my_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom Flix',
      price: '2300',
      imagePath: 'lib/images/nike1.png',
      description: 'Lightweight and stylish running shoe',
    ),
    Shoe(
      name: 'Air Runner',
      price: '2500',
      imagePath: 'lib/images/nike2.png',
      description: 'Comfortable for daily wear',
    ),
    Shoe(
      name: 'Street Flex',
      price: '2100',
      imagePath: 'lib/images/nike3.png',
      description: 'Perfect for casual street style',
    ),
    Shoe(
      name: 'Pro Max',
      price: '2800',
      imagePath: 'lib/images/nike4.png',
      description: 'High performance sports shoe',
    ),
  ];
  List<Shoe> userCart = [];

  List<Shoe>  getShoeShop(){
    return shoeShop;
  }
  List<Shoe> getUserCart(){
    return userCart;
  }
  void addToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
    print(userCart);

  }
  void removeFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();

  }
}
