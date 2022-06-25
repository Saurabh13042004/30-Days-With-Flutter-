import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import '../widgets/item_widget.dart';
// ignore: unused_import
import 'login_page.dart';
import 'dart:convert';

// ignore: camel_case_types
class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  
  @override
  void initState(){
    super.initState();
    loadData();
  }
  loadData()async {
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedJson = jsonDecode(catalogJson);
    var productData = jsonDecode(decodedJson);
  }
  Widget build(BuildContext context) {
    final dummy_list = List.generate(25, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title:  const Text("Catalog App")),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ListView.builder(
            itemCount: dummy_list.length,
            itemBuilder: (context,index){
              return ItemWidget(
                item:dummy_list[index]);
            },
          ),
        ) ,
        drawer:   MyDrawer(),
    );
  }
}