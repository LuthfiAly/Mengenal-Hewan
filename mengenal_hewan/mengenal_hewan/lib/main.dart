import 'package:flutter/material.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Mengenal Hewan',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Mengenal Buah"),
            centerTitle: true,
          ),
          body: TampilanUtama(),
        ));
  }
}

class TampilanUtama extends StatelessWidget {
  List<String> namahewan = [
    "Anjing",
    "Ayam",
    "Babi",
    "Bebek",
    "Burung Hantu",
    "Cat",
    "Domba",
    "Elang",
    "Gajah",
    "Harimau",
    "Katak",
    "Kucing",
    "Kuda",
    "Lumba lumba",
    "Monyet",
    "Panda",
    "Sapi",
    "Serigala",
    "Singa",
    "Ular",
  ];

  List<String> gambarHewan = [
    "assets/images/anjing.png",
    "assets/images/ayam.png",
    "assets/images/babi.png",
    "assets/images/bebek.png",
    "assets/images/burung_hantu.png",
    "assets/images/cat.png",
    "assets/images/domba.png",
    "assets/images/elang.png",
    "assets/images/gajah.png",
    "assets/images/harimau.png",
    "assets/images/katak.png",
    "assets/images/kucing.png",
    "assets/images/kuda.png",
    "assets/images/lumba2.png",
    "assets/images/monyet.png",
    "assets/images/panda.png",
    "assets/images/sapi.png",
    "assets/images/serigala.png",
    "assets/images/singa.png",
    "assets/images/ular.png",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: namahewan.length,
        itemBuilder: (BuildContext context, int index) {
          return _getItemUI(context, index);
        });
  }

  Widget _getItemUI(BuildContext context, int position) {
    return ListTile(
      title: Text(namahewan[position]),
      leading: Image.asset(gambarHewan[position]),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    DetailHewan(namahewan, gambarHewan, position)));
      },
    );
  }
}

class DetailHewan extends StatelessWidget {
  List<String> nama, gambar;
  int position;

  DetailHewan(this.nama, this.gambar, this.position);

  List<String> detailHewan = [
    "Ini anjing",
    "Ini ayam",
    "Ini babi",
    "Ini bebek",
    "Ini burung hantu",
    "Ini cat",
    "Ini domba",
    "Ini elang",
    "Ini gajah",
    "Ini harimau",
    "Ini katak",
    "Ini kucing",
    "Ini kuda",
    "Ini lumba lumba",
    "Ini monyet",
    "Ini panda",
    "Ini sapi",
    "Ini serigala",
    "Ini singa",
    "Ini ular",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Hewan"),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Image.asset(gambar[position], height: 200.0, scale: 10.0),
            Text(nama[position], textAlign: TextAlign.center),
            Text(detailHewan[position], textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}
