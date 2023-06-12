import 'package:coding_education_mobile/views/screens/progress/components/chart/individual_bar.dart';

class BarData {
  final double monAmount;
  final double tueAmount;
  final double wedAmount;
  final double thurAmount;
  final double friAmount;
  final double satAmount;
  final double sunAmount;
  BarData({
    required this.monAmount,
    required this.tueAmount,
    required this.wedAmount,
    required this.thurAmount,
    required this.friAmount,
    required this.satAmount,
    required this.sunAmount,
  });

  List<IndividualBar> barData = [];

  void initializedBarData() {
    barData = [
      IndividualBar(x: 2, y: monAmount),
      IndividualBar(x: 3, y: tueAmount),
      IndividualBar(x: 4, y: wedAmount),
      IndividualBar(x: 5, y: thurAmount),
      IndividualBar(x: 6, y: friAmount),
      IndividualBar(x: 7, y: satAmount),
      IndividualBar(x: 8, y: sunAmount),
    ];
  }
}
