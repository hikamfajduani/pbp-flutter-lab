import 'package:counter_7/main.dart';
import 'package:flutter/material.dart';

class MyFormPage extends StatefulWidget {
    const MyFormPage({super.key});

    @override
    State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _namaLengkap = "";
  String _judul = "";
  String tipeBudget = 'Pemasukan';
  List<String> listTipeBudget = ['Pemasukan', 'Pengeluaran'];
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Form Budget'),
            ),
            // Menambahkan drawer menu
            drawer: Drawer(
                child: Column(
                  children: [
                    // Menambahkan clickable menu
                    ListTile(
                      title: const Text('Counter'),
                      onTap: () {
                        // Route menu ke halaman utama
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const MyHomePage()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('Tambah Budget'),
                      onTap: () {
                        // Route menu ke halaman form
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const MyFormPage()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            body: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                  children: [
                      Padding(
                          // Menggunakan padding sebesar 8 pixels
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Contoh: Beli FIFA 23",
                                  labelText: "Judul",
                                  // Menambahkan icon agar lebih intuitif
                                  icon: const Icon(Icons.people),
                                  // Menambahkan circular border agar lebih rapi
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                  ),
                              ),
                              // Menambahkan behavior saat nama diketik 
                              onChanged: (String? value) {
                                  setState(() {
                                      _namaLengkap = value!;
                                  });
                              },
                              // Menambahkan behavior saat data disimpan
                              onSaved: (String? value) {
                                  setState(() {
                                      _namaLengkap = value!;
                                  });
                              },
                              // Validator sebagai validasi form
                              validator: (String? value) {
                                  if (value == null || value.isEmpty) {
                                      return 'Nama lengkap tidak boleh kosong!';
                                  }
                                  return null;
                              },
                          ),
                      ),
                      Padding(
                          // Menggunakan padding sebesar 8 pixels
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Contoh: 1000000",
                                  labelText: "Nominal",
                                  // Menambahkan icon agar lebih intuitif
                                  icon: const Icon(Icons.people),
                                  // Menambahkan circular border agar lebih rapi
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                  ),
                              ),
                              // Menambahkan behavior saat nama diketik 
                              onChanged: (String? value) {
                                  setState(() {
                                      _judul = value!;
                                  });
                              },
                              // Menambahkan behavior saat data disimpan
                              onSaved: (String? value) {
                                  setState(() {
                                      _judul = value!;
                                  });
                              },
                              // Validator sebagai validasi form
                              validator: (String? value) {
                                  if (value == null || value.isEmpty) {
                                      return 'Judul tidak boleh kosong!';
                                  }
                                  return null;
                              },
                          ),
                      ),
                      DropdownButtonHideUnderline(
                        child: DropdownButton(
                            hint: Text('Pilih jenis'),
                            items: listTipeBudget.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            value: tipeBudget,
                            onChanged: (newValue) {
                              setState(() {
                                tipeBudget = newValue!;
                              });
                            }),
                      ),
                      TextButton(
                        child: const Text(
                          "Simpan",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.red),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {}
                        },
                      ),
                  ],
                  ),
                ),
              ),
            ),
        );
    }
}