import 'package:my_first_flutterapp/model/wisata_model.dart';

class WisataData {
//set Data Wisata
  static var itemWisata = [
    WisataModel(
        namaWisata: "Hotel Aston",
        alamatWisata:
            "Jl. HBR Motik No.4, RW.10, Gn. Sahari Sel., Kec. Kemayoran, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10610•(021) 39712828",
        gambar: "aston.jpg",
        webWisata:
            "https://www.astonhotelsinternational.com/en?_affclk=adn:3817::Cj0KCQiA0p2QBhDvARIsAACSOONU1mPn5AWOwnLjV7szs9JJ6YmFrpbri_HzgAcKfw-V9Woob5E7a8waArFLEALw_wcB:8002y1"),
    WisataModel(
        namaWisata: "Reddorz",
        alamatWisata: "Jl. Raya Kelapa Nias Blok LB20 No.9, RT.8/RW.18, East Kelapa Gading, Kelapa Gading, North Jakarta City, Jakarta 14240•0821-1258-5240",
        gambar: "red.jpg",
        webWisata:
            "https://www.reddoorz.com/"),
    WisataModel(
        namaWisata: "Oyo",
        alamatWisata: "Jl. Perjuangan No.58, RW.5, Tugu Sel., Kec. Koja, Kota Jkt Utara, Daerah Khusus Ibukota Jakarta 14260•(021) 29707601",
        gambar: "oyo.jpg",
        webWisata: "https://www.oyorooms.com/id/"),
    WisataModel(
        namaWisata: "Hotel Harris",
        alamatWisata:
            "Summarecon Mall Kelapa Gading Jl. Boulevard Bar. Raya No.RT.13, RT.13/RW.18 · (021) 45878200",
        gambar: "haris.jpg",
        webWisata:
            "https://www.traveloka.com/id-id/hotel/indonesia/harris-hotel--convention-kelapa-gading-182170"),
    WisataModel(
        namaWisata: "Hotel Fave",
        alamatWisata: "Jl. Raya Gading Indah No.8, RT.13/RW.18, Klp. Gading Tim., Kec. Klp. Gading, Kota Jkt Utara, Daerah Khusus Ibukota Jakarta 14240•(021) 4514048",
        gambar: "fave.jpg",
        webWisata:
            "https://www.favehotels.com/en"),
    WisataModel(
        namaWisata: "Hotel Neo ",
        alamatWisata: "Rukan Mangga Dua Square Blok A No.10-12/15-23, RT.11/RW.6, Ancol, Kec. Pademangan, Kota Jkt Utara, Daerah Khusus Ibukota Jakarta 14430•(021) 29618888",
        gambar: "neo.jpg",
        webWisata: "https://www.neohotels.com/en/?_affclk=adn:3817::Cj0KCQiA0p2QBhDvARIsAACSOOO4k__m0BagGjmjWaG8VxcadOBZe0rDTKSlI6JjcaQSu7OGp7bzkqsaArLgEALw_wcB:8002y1"),
    WisataModel(
        namaWisata: "Hotel Royale",
        alamatWisata: "Jl. Raya Gading Kirana No.Kav.1, RT.18/RW.8, Klp. Gading Bar., Kec. Klp. Gading, Kota Jkt Utara, Daerah Khusus Ibukota Jakarta 14240",
        gambar: "royale.jpg",
        webWisata: "https://jakarta.el-hotels.com/"),
    WisataModel(
        namaWisata: "Hotel Monopoli",
        alamatWisata: "Jl. Taman Kemang No.12, RT.14/RW.1, Bangka, Kec. Mampang Prpt., Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12730",
        gambar: "monopoli.jpg",
        webWisata:
            "https://hotelmonopolijakarta.com/"),
    
  ];

  //get all data
  static var itemCount = itemWisata.length; // 15 item

  //get data by index
  static WisataModel? getItemWisata(int index) {
    return itemWisata[index];
  }
}
