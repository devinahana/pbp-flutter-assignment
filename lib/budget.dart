import 'package:flutter/material.dart';

class Budget {
  String judul;
  int nominal;
  String jenis;
  String tanggal;

  Budget(this.judul, this.nominal, this.jenis, this.tanggal);
}

class DataBudget {
  static List<Budget> data = [];
}