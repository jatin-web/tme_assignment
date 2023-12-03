import 'package:tme_pune/constants.dart';

double goldWtFromRupee(double rupee) => (1 / oneGramGoldPrice) * rupee;
double rupeeFromGoldWt(double goldWt) => goldWt * oneGramGoldPrice;
