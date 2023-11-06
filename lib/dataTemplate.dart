import 'package:intl/intl.dart';

List<String> otherAddressList = [
  "Jalan Jendral Ahmad Yani No 20 A/B Seberang Ulu II Palembang, Sumatera Selatan",
  "Jalan Jendral DI Pandjaitan No 10 A/B Plaju Ilir Palembang, Sumatera Selatan"
];

String mainAddress =
    "Jalan Jendral Ahmad Yani No 20 A/B Seberang Ulu II Palembang, Sumatera Selatan";

String currencyFormat(int number) {
  NumberFormat currencyFormatter =
      NumberFormat.currency(locale: 'id', symbol: 'Rp', decimalDigits: 0);
  return currencyFormatter.format(number);
}
