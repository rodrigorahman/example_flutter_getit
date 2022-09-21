import 'package:flutter/material.dart';

class ProductsController extends ChangeNotifier {
  String product = 'Academia do Flutter';

  void changeProduct(String newProduct) {
    product  = newProduct;
    notifyListeners();
  }
}