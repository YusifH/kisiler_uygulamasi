import 'package:flutter/material.dart';
import 'package:kisiler_uygulamasi/data/entity/kisiler.dart';

class DetaySayfa extends StatefulWidget {

  Kisiler kisi;
  DetaySayfa({required this.kisi});

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  var kisi_ad = TextEditingController();
  var kisi_tel = TextEditingController();

  Future<void> guncelle(int kisi_id, String kisi_ad, String kisi_tel) async{
    print("Kisi kaydet:  $kisi_id - $kisi_ad - $kisi_tel");
  }

  @override
  void initState() {
    super.initState();
    var kisi = widget.kisi;
    kisi_ad.text = kisi.kisi_ad;
    kisi_tel.text = kisi.kisi_tel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detay Sayfasi'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: kisi_ad,
                decoration: const InputDecoration(
                    hintText: 'Kisi adi girin'
                ),
              ),
              TextField(
                controller: kisi_tel,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    hintText: 'Kisi telefon girin'
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  guncelle(widget.kisi.kisi_id, kisi_ad.text, kisi_tel.text);
                  kisi_tel.clear();
                  kisi_ad.clear();
                },
                child: const Text('Guncelle'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
