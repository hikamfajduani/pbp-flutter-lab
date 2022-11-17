import 'package:counter_7/main.dart';
import 'package:counter_7/data.dart';
import 'package:flutter/material.dart';

class MyFormPage extends StatefulWidget {
    const MyFormPage({super.key});

    @override
    State<MyFormPage> createState() => _MyFormPageState();
}

List<String> judul =[];
List<String> nominal =[];
List<String> tipePilihan =[];

class _MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _judul = "";
  String _nominal = "";
  String tipeBudget = '';
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
                      title: const Text('counter_7'),
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
                    ListTile(
                    title: const Text('Data Budget'),
                    onTap: () {
                      // Route menu ke halaman form
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const MyDataPage()),
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                      Padding(
                          // Menggunakan padding sebesar 8 pixels
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Contoh: Beli FIFA 23",
                                  labelText: "Judul",
                                  // Menambahkan icon agar lebih intuitif
                                  icon: const Icon(Icons.list),
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
                                      judul.add(_judul);
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
                                  icon: const Icon(Icons.money),
                                  // Menambahkan circular border agar lebih rapi
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                  ),
                              ),
                              // Menambahkan behavior saat nama diketik 
                              onChanged: (String? value) {
                                  setState(() {
                                      _nominal = value!;
                                  });
                              },
                              // Menambahkan behavior saat data disimpan
                              onSaved: (String? value) {
                                  setState(() {
                                      _nominal = value!;
                                      nominal.add(_nominal);
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
                      DropdownButtonFormField(
                        decoration: const InputDecoration(
                            hintText: "Pilih jenis",
                            labelText: "Jenis",
                            icon: const Icon(Icons.wallet),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5.0)),
                            ),
                            border: OutlineInputBorder()
                        ),
                        items: const [
                          DropdownMenuItem(
                            value: "Pemasukan",
                            child: Text("Pemasukan"),
                          ),
                          DropdownMenuItem(
                            value: "Pengeluaran",
                            child: Text("Pengeluaran"),
                          )
                        ],
                        icon: const Icon(Icons.arrow_drop_down_rounded),
                        onChanged: (value) {
                          setState(() {
                            tipeBudget = value!;
                          });
                        },
                        onSaved: (value) {
                          setState(() {
                            tipeBudget = value!;
                            tipePilihan.add(tipeBudget);
                          });
                        },
                        validator: (value) {
                          if (value == null || value == 0) {
                            return "Pilih jenis budget";
                          }
                          return null;
                        },
                      ),
                  ],
                  ),
                ),
              ),
            ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
            padding: const EdgeInsets.all(50.0),
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  fixedSize: const Size.fromHeight(42.0)
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  _formKey.currentState!.reset();
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        elevation: 15,
                        child: ListView(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          shrinkWrap: true,
                          children: <Widget>[
                            Center(
                              child: Column(
                                children: <Widget>[
                                  const Text("Informasi Budget"),
                                  const SizedBox(height: 10),
                                  Text("Budget: $_judul"),
                                  Text("Nominal: $_nominal"),
                                  Text("Jenis: ${tipeBudget}"),
                                  const SizedBox(height: 10),
                                  TextButton(
                                    onPressed: () {
                                      setState(() {
                                      });
                                      Navigator.pop(context);
                                    },
                                    child: const Text("Kembali"),
                                  )
                                ],
                              ),
                            ),
                          ],
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
            )
        )
        );
    }
}