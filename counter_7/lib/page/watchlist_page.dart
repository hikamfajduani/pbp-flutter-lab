import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/data.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/model/watchlist_data.dart';
import 'package:flutter/material.dart';


class MyWatchlistPage extends StatefulWidget {
    const MyWatchlistPage({Key? key}) : super(key: key);

    @override
    _MyWatchlistState createState() => _MyWatchlistState();
}

class _MyWatchlistState extends State<MyWatchlistPage> {
    Future<List<Watchlist>> fetchToDo() async {
        var url = Uri.parse('https://jsonplaceholder.typicode.com/todos?_start=0&_limit=10');
        var response = await http.get(
        url,
        headers: {
            "Access-Control-Allow-Origin": "*",
            "Content-Type": "application/json",
        },
        );

        // melakukan decode response menjadi bentuk json
        var data = jsonDecode(utf8.decode(response.bodyBytes));

        // melakukan konversi data json menjadi object ToDo
        List<Watchlist> listToDo = [];
        for (var d in data) {
        if (d != null) {
            listToDo.add(Watchlist.fromJson(d));
        }
        }

        return listToDo;
    }
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
          title: const Text('My Watchlist'),
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
                    MaterialPageRoute(builder: (context) => const MyApp()),
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
            ListTile(
                title: const Text('To Do'),
                onTap: () {
                    // Route menu ke halaman to do
                    Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyWatchlistPage()),
                    );
                },
            ),
            ],
          ),
        ),
    body: FutureBuilder(
        future: fetchToDo(),
        builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
            } else {
            if (!snapshot.hasData) {
                return Column(
                children: const [
                    Text(
                    "Tidak ada to do list :(",
                    style: TextStyle(
                        color: Color(0xff59A5D8),
                        fontSize: 20),
                    ),
                    SizedBox(height: 8),
                ],
                );
            } else {
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (_, index)=> Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: const [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 2.0
                        )
                        ]
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                            "${snapshot.data![index].title}",
                            style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            ),
                        ),
                        const SizedBox(height: 10),
                        Text("${snapshot.data![index].completed}"),
                        ],
                    ),
                    )
                );
            }
          }
        }));
  }
}