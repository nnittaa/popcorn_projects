import 'package:flutter/cupertino.dart';
import 'package:popcorn_projects/models/shoe.dart';
import 'package:provider/provider.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'CRYBABY X Powerpuff Girls\nSeries Figures',
      price: '15.99',
      description: '',
      imagePath: 'lib/images/1b8b4331-46dc-40d6-9146-9492f8dcfea1.jpg',
    ),

    Shoe(
        name: 'LABUBU MACARON V2\nTHE MONSTERS',
        price: '24.72',
        description: '',
        imagePath: 'lib/images/c266f9be-d24a-4e51-96e6-e37f11b81ee0.jpg',
    ),

    Shoe(
        name: 'MAGA SPACE MOLLY 400%\nGIRLS-Blossom',
        price: '299.90',
        description: '',
        imagePath: 'lib/images/4d7ce6dd-3301-4603-9b3b-c2851db1cf79.jpg',
    ),
    Shoe(
      name: 'HIRONO THE Other One Series',
      price: '15.99',
      description: '',
      imagePath: 'lib/images/495b0fa2-30c2-4a78-9200-c192a08941e1.jpg',
    ),
  ];
  // list of items in user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }
  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add item to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}