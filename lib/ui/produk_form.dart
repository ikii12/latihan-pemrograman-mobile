import 'package:flutter/material.dart';
import 'package:tes_project/ui/produk_detail.dart';
class Produkform extends StatefulWidget {
  @override
  _Produkformstate createState() => _Produkformstate();
}

class _Produkformstate extends State<Produkform> {
  final _kodeProdukTextboxController = TextEditingController();
  final _namaProdukTextboxController = TextEditingController();
  final _hargaProdukTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form Produk')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _textboxKodeProduk(),
            _textboxNamaProduk(),
            _textboxHargaProduk(),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }

  _textboxKodeProduk() {
    return TextField(
      decoration: InputDecoration(labelText: "Kode Produk"),
      controller: _kodeProdukTextboxController,
    );
  }

  _textboxNamaProduk() {
    return TextField(
      decoration: InputDecoration(labelText: "Nama Produk"),
      controller: _namaProdukTextboxController,
    );
  }

  _textboxHargaProduk() {
    return TextField(
      decoration: InputDecoration(labelText: "Harga Produk"),
      controller: _hargaProdukTextboxController,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      child: Text('Simpan'),
      onPressed: () {
        String kodeProduk = _kodeProdukTextboxController.text;
        String namaProduk = _namaProdukTextboxController.text;
        int harga = int.parse(_hargaProdukTextboxController.text);

        // Navigasi ke halaman detail sambil membawa data [cite: 37]
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ProdukDetail(
            kodeProduk: kodeProduk,
            namaProduk: namaProduk,
            harga: harga,
          ),
        ));
      },
    );
  }
}