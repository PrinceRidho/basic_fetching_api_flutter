import 'package:basic_fetching_api/model.dart';
import 'package:basic_fetching_api/repository.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Mahasiswa> listMahasiswa = [];
  Repository repository = Repository();

  fetchMahasiswa() async {
    listMahasiswa = (await repository.fetchMahasiswa()) as List<Mahasiswa>;
  }

  @override
  void initState() {
    fetchMahasiswa();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Mahasiswa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                child: Text(listMahasiswa[index].toString()),
              );
            },
            separatorBuilder: ((context, index) {
              return Divider();
            }),
            itemCount: listMahasiswa.length),
      ),
    );
  }
}
