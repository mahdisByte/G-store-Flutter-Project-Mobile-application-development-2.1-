
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../models/product.dart';

class CartProvider extends ChangeNotifier{
  final List<Product> _cart =[];
  List<Product> get cart => _cart;
  void toggleFavourite(Product product){
    if(_cart.contains(product)){
      for(Product element in _cart){
        element.quantity++;
      }
    }else{
      _cart.add(product);
    }
    notifyListeners();
  }
  incrementQnt(int index) => _cart[index].quantity++;
  decrementQnt(int index) => _cart[index].quantity--;
  totalPrice() {
    double total1 = 0.0;
    for(Product element in _cart) {
      total1 = total1 +(element.price * element.quantity);
    }
    return total1;
  }
  static CartProvider of(
      BuildContext context,{
        bool listen = true,
  }) {
    return Provider.of<CartProvider>(
      context,
      listen: listen,
    );
  }
}





















