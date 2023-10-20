import 'package:flutter/material.dart';
import 'package:kisiler_uygulamasi/data/entity/kisiler.dart';
import 'package:kisiler_uygulamasi/ui/views/detay_sayfa.dart';
import 'package:kisiler_uygulamasi/ui/views/kayit_sayfa.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kisiler Uygulamasi'),
      ),
      body: ElevatedButton(
        onPressed: () {
          var kisi = Kisiler(kisi_id: 1, kisi_ad: 'Yusif', kisi_tel: '21231311');
          Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfa(kisi: kisi)))
              .then((value){}
          );
        },
        child: const Text('Guncelle'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const KayitSayfa()))
              .then((value){}
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
