import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/drawer.dart';
import 'package:counter_7/model/budget.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  String _judul = "";
  int _nominal = 0;
  String _jenis = 'Pemasukan';
  DateTime? _date;
  List<String> listJenis = ['Pemasukan', 'Pengeluaran'];
  List<Budget> _budgets = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Form Budget'),
        ),
        drawer: MyDrawer(),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Judul",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          _judul = value!;
                        });
                      },
                      onSaved: (String? value) {
                        setState(() {
                          _judul = value!;
                        });
                      },
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Judul tidak boleh kosong!';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Nominal",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          _nominal = int.parse(value!);
                        });
                      },
                      onSaved: (String? value) {
                        setState(() {
                          _nominal = int.parse(value!);
                        });
                      },
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Nominal tidak boleh kosong!';
                        } else if (int.tryParse(value) == null) {
                          return 'Nominal harus berupa bilangan bulat';
                        }
                        return null;
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Pilih Jenis'),
                    trailing: DropdownButton(
                      value: _jenis,
                      items: listJenis.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          _jenis = newValue!;
                        });
                      },
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2005),
                          lastDate: DateTime(2025),
                        ).then((value) {
                          setState(() {
                            _date = value;
                          });
                        });
                      },
                      child: Text("Pilih Tanggal"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: Container(
          alignment: Alignment.bottomCenter,
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              padding: MaterialStateProperty.all(
                const EdgeInsets.all(20.0),
              ),
            ),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                setState(() {
                  String tanggal = _date.toString();
                  tanggal = tanggal.substring(0, 10);
                  Budget newBudget = Budget(_judul, _nominal, _jenis, tanggal);
                  DataBudget.data.add(newBudget);
                });
                showDialog(
                  context: context,
                  builder: (context) {
                    String tanggal = _date.toString();
                    tanggal = tanggal.substring(0, 10);
                    return Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 15,
                      child: Container(
                        child: ListView(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          shrinkWrap: true,
                          children: <Widget>[
                            Center(
                                child: Column(
                              children: [
                                const Text(
                                  "Data berhasil disimpan!",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Judul: $_judul"),
                                Text("Nominal: $_nominal"),
                                Text("Jenis: $_jenis"),
                                Text("Tanggal: $tanggal"),
                              ],
                            )),
                            SizedBox(height: 20),
                            TextButton(
                              child: Text('Kembali'),
                              onPressed: () {
                                Navigator.pop(context);
                                setState(() {
                                  _judul = "";
                                  _nominal = 0;
                                  _jenis = "Pemasukan";
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }
            },
            child: const Text(
              "Simpan",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ));
  }
}
