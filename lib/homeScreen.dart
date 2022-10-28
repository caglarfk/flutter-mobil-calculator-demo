// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  num sayi1 = 0, sayi2 = 0, sonuc = 0;

  var t1 = TextEditingController();
  var t2 = TextEditingController();
  sayiTopla() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 + sayi2;
    });
  }

  sayiCikar() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 - sayi2;
    });
  }

  sayiCarp() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 / sayi2;
    });
  }

  sayiBol() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 * sayi2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(50),
      child: Center(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  style: TextStyle(
                      color: const Color.fromARGB(255, 203, 23, 23).withOpacity(1.0)),
                  "Sonuç :"),
              Text(sonuc.toString()),
            ],
          ),
          TextField(
            decoration: (const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Sayı Giriniz',
            )),
            controller: t1,
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 10),
          TextField(
            decoration: (const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Sayı Giriniz',
            )),
            controller: t2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: sayiTopla, child: const Text("topla")),
              const SizedBox(width: 30),
              ElevatedButton(onPressed: sayiCikar, child: const Text("çıkar")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: sayiCarp, child: const Text("çarp")),
              const SizedBox(width: 30),
              ElevatedButton(onPressed: sayiBol, child: const Text("böl")),
            ],
          ),
        ],
      )),
    );
  }
}