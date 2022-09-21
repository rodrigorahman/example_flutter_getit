
import 'package:flutter/cupertino.dart';

class HomeController extends ChangeNotifier {
  String nome = 'Rodrigo Rahman';

  void changeName(String newName) {
    nome = newName;
    notifyListeners();
  }
  
}