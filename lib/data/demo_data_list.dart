import 'package:tme_pune/constants.dart';
import 'package:tme_pune/data/models/quick_action_model.dart';
import 'package:tme_pune/data/models/reward_model.dart';

List<QuickActionModel> quickActionsList = [
  QuickActionModel(
      imagePath: "assets/icons/spin_to_win.png",
      title: "Spin to Win",
      description: "Upto ${rupee}18 worth of Extra Gold"),
  QuickActionModel(
      imagePath: "assets/icons/credit_score.png",
      title: "Credit Score",
      description: "Check and improve your financial health"),
  QuickActionModel(
      imagePath: "assets/icons/emi_cal.png",
      title: "EMI Calculator",
      description: "See EMI rates for any amount & interest value"),
  QuickActionModel(
      imagePath: "assets/icons/savings_cal.png",
      title: "Savings Calculator",
      description: "Plan your financial future"),
  QuickActionModel(
      imagePath: "assets/icons/health_insurance.png",
      title: "Health Insurance",
      description: "Hospital bills covered up tp ${rupee}10 lakh"),
];

List<RewardModel> rewardsList = [
  RewardModel(
      imagePath: "assets/icons/refer_n_earn.png", title: "Refer and Earn"),
  RewardModel(imagePath: "assets/icons/magic.png", title: "Weekly Magic"),
  RewardModel(imagePath: "assets/icons/spin_to_win.png", title: "Spins"),
  RewardModel(imagePath: "assets/icons/offers.png", title: "Offers"),
  RewardModel(imagePath: "assets/icons/promo_code.png", title: "Promo Code"),
  RewardModel(
      imagePath: "assets/icons/spends_tracker.png", title: "Spends Tracker"),
  RewardModel(imagePath: "assets/icons/gold.png", title: "GoldX"),
];
