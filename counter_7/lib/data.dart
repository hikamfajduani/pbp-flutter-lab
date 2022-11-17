import 'package:counter_7/main.dart';
import 'package:counter_7/form.dart';
import 'package:flutter/material.dart';

class MyDataPage extends StatefulWidget {
    const MyDataPage({super.key});

    @override
    State<MyDataPage> createState() => _MyDataPageState();
}

class _MyDataPageState extends State<MyDataPage> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Data Budget'),
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
      body: ListView.separated(
        shrinkWrap: true,
        padding: const EdgeInsets.all(8.0),
        itemCount: judul.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            borderOnForeground: true,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                ListTile(
                  leading: (tipePilihan[index] == "Pemasukan")?
                  const Icon(Icons.savings):const Icon(Icons.paid),
                  title: Text(judul[index]),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(nominal[index]),
                      const SizedBox(width: 8),
                      Text(tipePilihan[index])
                    ],
                  ),
                )
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),

      ),
        );
    }
}