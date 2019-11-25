import 'package:flutter/material.dart';

class Tuntunan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Tuntunan Makan"),
      ), //AppBar

      body: PageView(
        children: <Widget>[
          _createPageItemUI(
              '1.Makan dengan makanan yang halal',
              'http://www.halalunmabanten.id/halal/media/k2/items/cache/7539a1b30386b8951ffea14c91e802dc_XL.jpg',
              'Makan dengan makanan dan minuman yang halal, karena didalam agama islam kita diharamkan memakan dan meminum selain yang halal seperti daging babi, khamr, hewan yang bertaring dan lain lain.'),
          _createPageItemUI(
              '2.Membaca Doa, sebelum makan',
              'https://lh3.googleusercontent.com/-1_7lglsuLy0/Xds_Wx4-coI/AAAAAAAABiU/MUfg7D-l9UczpVdjgLb3VTX-ADJTzvbKwCK8BGAsYHg/s512/2019-11-24.jpg',
              'Sebelum makan kita dianjurkan untuk berdoa terlebih dahulu supaya setan tidak ikut makan dengan kita.'),
          _createPageItemUI(
              '3.Ketika makan duduk',
              'http://4.bp.blogspot.com/-669v7XadTR4/VhfRbY206aI/AAAAAAAAAJc/dXWoeOljE04/s1600/makan%2Bsehat.jpg',
              'Saat makan atau minum harus duduk karena rasulullah memerintahkan ketika makan dan minum dengan duduk kecuali dalam keadaan darurat dan terpaksa.'),
          _createPageItemUI(
              '4.Memakai tangan kanan',
              'http://www.helalsiteler.com/wp-content/uploads/2015/2017/08/ivanmubarak-BXPP-xPgN0k.jpg',
              'Kita Diwajibkan untuk makan dan minum dengan menggunakan tangan Kanan, karena Tangan kiri kita kotor'),
          _createPageItemUI(
              'Jangan makan dengan tergesa gesa',
              'https://cdn-image.hipwee.com/wp-content/uploads/2016/03/makan-terlalu-cepat-terburu-buru.jpg',
              'Larangan tergesa-gesa saat makan, rupanya terkait erat dengan pengaruh makanan bagi kesehatan. “Makan dengan cepat,” tulis Yuga Pramita dalam Diet Islami, “di samping berpeluang menimbulkan refluks asam lambung, juga berperan penting dalam pencegahan dan penanggulangan kegemukan.”'),
          _createPageItemUI(
              'Makan dengan tiga jari',
              'https://islami.co/wp-content/uploads/2018/02/Inilah-Keajaiban-Makan-3-Jari-Cara-Nabi-Muhammad.jpg',
              'Dianjurkan untuk makan dengan tiga jari, yaitu jari tengah, jari telunjuk, dan jempol, karena hal tersebut menunjukkan tidak rakus dan ketawadhu’an. Akan tetapi hal ini berlaku untuk makanan yang bisa dimakan dengan menggunakan tiga jari. Adapun makanan yang tidak bisa dimakan dengan menggunakan tiga jari, maka diperbolehkan untuk menggunakan lebih dari tiga jari, misalnya nasi. Namun, makanan yang bisa dimakan dengan menggunakan tiga jari maka hendaknya kita hanya menggunakan tiga jari saja, karena hal itu merupakan sunnah Nabi shallallahu ‘alaihi wa sallam.'),
          _createPageItemUI(
              'Mengambil makanan dari yang terdekat',
              'https://dolandolen.com/wp-content/uploads/2017/09/Alas-Daun-via-bdgsociety.jpg',
              'Adab makan yang dicontohkan oleh Rasulullah memulai dengan menyebut basmalah, menggunakan tangan kanan, serta memakan makanan yang berada paling dekat dengan kita'),
          _createPageItemUI(
              'Tidak mencela makanan',
              'https://steemitimages.com/640x0/https://img.esteem.ws/812opzhch6.jpg',
              '“Tidaklah Nabi shallallahu ‘alaihi wa sallam mencela suatu makanan sedikit pun. Seandainya beliau menyukainya, beliau menyantapnya. Jika tidak menyukainya, beliau meninggalkannya (tidak memakannya).” (Muttafaqun ‘alaih. HR. Bukhari no. 5409 dan Muslim no. 2064), Namun tidak mengapa jika memberi kritikan pada yang masak, misalnya dengan berkata, “Hari ini masakanmu terlalu banyak garam, terlalu pedas atau semacam itu.” Yang disebutkan ini bukan maksud menjelakkan makanan, namun hanyalah masukan biar dapat diperbaiki.'),
          _createPageItemUI(
            'Membaca Doa Setelah makan',
            'https://lh3.googleusercontent.com/-uoo7t8YHRVQ/XdtJSELY2uI/AAAAAAAABiw/CEdz4YxUHkAGE1LxQBrsxdyNQ5-plapCACK8BGAsYHg/s512/2019-11-24.png',
            'Setelah makan jangan lupa untuk membaca doa setelah makan agar menunjukkan rasa syukur kepada allah karena telah mamberi nikmat dan rahmatya, yaitu Alhamdulillah al-Ladzii Ath amanii Haadzaa wa Razaqaniihi min Ghairi Haulin minni walaa Quwwatin',)
        ],
      ), //PageView
    ); //Sccafold
  }
}

_createPageItemUI(String nama, String gambar, String deskripsi) {
  return Container(
    child: ListView(
      children: <Widget>[
        Image(
          image: NetworkImage(gambar),
          height: 300.0,
          fit: BoxFit.cover,
        ),

        SizedBox(
          height: 20.0,
        ), //SizedBox

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(nama,
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
        ), //Padding

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            deskripsi,
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.justify,
          ),
        )
      ],
    ),
  );
}