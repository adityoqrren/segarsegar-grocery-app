import 'package:intl/intl.dart';

// List<String> otherAddressList = [
//   "Jalan Jendral Ahmad Yani No 20 A/B Seberang Ulu II Palembang, Sumatera Selatan",
//   "Jalan Jendral DI Pandjaitan No 10 A/B Plaju Ilir Palembang, Sumatera Selatan"
// ];

// String mainAddress =
//     "Jalan Jendral Ahmad Yani No 20 A/B Seberang Ulu II Palembang, Sumatera Selatan";

String currencyFormat(int number) {
  NumberFormat currencyFormatter =
      NumberFormat.currency(locale: 'id', symbol: 'Rp', decimalDigits: 0);
  return currencyFormatter.format(number);
}

class Texts {
  //app text
  static const String mainTitleText = "segarSegar";
  static const String addText = "tambah";
  static const String searchHintText = "Cari produk segar disini";
  static const String vegetablesText = "Vegetables";
  static const String fruitsText = "Fruits";
  static const String meatfistText = "Meat & Fish";
  static const String homeText = "Home";
  static const String profileText = "Profile";
  static const String descText = "Deskripsi";
  static const String shelfLifeText = "Umur Simpan";
  static const String storageMethodText = "Petunjuk Penyimpanan";
  static const String bannerDetail_1 = "100%";
  static const String bannerDetail_2 = "Kualitas Terjamin";
  static const String bannerDetail_3 = "Cepat sampai, kurang dari 4 jam";
  static const String myAddressText = "Alamat Saya";
  static const String privacySettingText = "Pengaturan Privasi";
  static const String myTransactionText = "Transaksi Saya";
  static const String favoriteText = "Favorit";
  static const String userGuidesText = "Panduan Pengguna";
  static const String mainAddressText = "Alamat Utama";
  static const String otherAddressText = "Alamat Lain";
  static const String editText = "Edit";
  static const String setMainAddress = "Jadikan Utama";
  static const String logoutText = "Log Out";
  static const String editAccountText = "Edit Akun";
  static const String profileTitleText = "Profil Saya";

  //template text
  static const List<String> otherAddressTempList = [
    "Jalan Jendral Ahmad Yani No 20 A/B Seberang Ulu II Palembang, Sumatera Selatan",
    "Jalan Jendral DI Pandjaitan No 10 A/B Plaju Ilir Palembang, Sumatera Selatan"
  ];

  static const String mainAddressTemp =
      "Jalan Jendral Ahmad Yani No 20 A/B Seberang Ulu II Palembang, Sumatera Selatan";

  static const String usernameTemp = "Melonia Lemonia Applea";

  static const String userEmailTemp = "melonialemonia@gmail.com";

  static const String transactionCountTemp = "20 transaksi";

  static const String starsTemp = "20 stars";
}
