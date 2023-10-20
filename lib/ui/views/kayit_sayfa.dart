import 'package:flutter/material.dart';

class KayitSayfa extends StatefulWidget {
  const KayitSayfa({super.key});

  @override
  State<KayitSayfa> createState() => _KayitSayfaState();
}

class _KayitSayfaState extends State<KayitSayfa> {

  var kisi_ad = TextEditingController();
  var kisi_tel = TextEditingController();

  Future<void> kaydet(String kisi_ad, String kisi_tel) async{
    print("Kisi kaydet:  $kisi_ad - $kisi_tel");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kayit Ekle'),
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
                  kaydet(kisi_ad.text, kisi_tel.text);
                  kisi_tel.clear();
                  kisi_ad.clear();
                },
                child: const Text('KAYDET'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
