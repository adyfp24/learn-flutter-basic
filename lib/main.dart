import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title; 

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, String>> dataList = [
    {"nama": "John Doe", "alamat": "123 Main St"},
    {"nama": "Jane Smith", "alamat": "456 Oak St"},
    {"nama": "Bob Johnson", "alamat": "789 Pine St"},
  ];

  void _incrementCounter() {
    setState(() {
      // Tambahkan data baru ke dalam daftar
      dataList.add({
        "nama": "New Person",
        "alamat": "New Address",
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: dataList.length, // Jumlah baris data dinamis
          itemBuilder: (context, index) {
            String nama = dataList[index]["nama"];
            String alamat = dataList[index]["alamat"];

            return ListTile(
              title: Text('Nama: $nama'),
              subtitle: Text('Alamat: $alamat'),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Tambah Data',
        child: Icon(Icons.add),
      ),
    );
  }
}
