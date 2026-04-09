// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:tes_project/column_widget.dart';
import 'package:tes_project/row_widget.dart';
import 'package:tes_project/ui/produk_form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'menampilkan hello world', home: Produkform());
  }
}
