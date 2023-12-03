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

List<String> storyImagesList = [
  "https://i.pinimg.com/736x/e5/73/63/e5736352361ae7483a7f8bb4e1c7c801.jpg",
  "https://www.shutterstock.com/shutterstock/photos/2136269523/display_1500/stock-vector-hi-tech-hologram-of-planet-earth-with-glowing-vector-chart-of-investment-financial-data-graph-2136269523.jpg",
  "https://www.shutterstock.com/shutterstock/photos/1322351879/display_1500/stock-vector-business-arrow-target-direction-concept-to-success-finance-growth-vision-stretching-rising-up-1322351879.jpg"
];

List<double> rupeeSampleList = [10, 15, 20, 25, 50];
List<double> gramSampleList = [0.1, 0.5, 1.0, 1.5, 2.0];
