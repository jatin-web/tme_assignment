import 'package:flutter/material.dart';
import 'package:tme_pune/utils.dart';

class GoldPriceProvider extends ChangeNotifier {
  double _rupees = 0;
  double _goldWt = 0;

  double get rupees => _rupees;
  double get goldWt => _goldWt;

  void updateByRupee(double rs) {
    _rupees = rs;
    _goldWt = goldWtFromRupee(rs);
    notifyListeners();
  }

  void updateByGoldWt(double wt) {
    _goldWt = wt;
    _rupees = rupeeFromGoldWt(wt);
    notifyListeners();
  }

  void clearData() {
    _rupees = 0;
    _goldWt = 0;
    notifyListeners();
  }
}
