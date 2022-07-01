import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import '../widgets/item_widget.dart';
import 'dart:core';
// ignore: unused_import
import 'login_page.dart';
import 'dart:convert';

// ignore: camel_case_types
class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

// ignore: camel_case_types
class _homePageState extends State<homePage> {

  
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 3));
    final catalogJson =
        await rootBundle.loadString('assets/catalog.json');
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }
@override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title:  const Text("Catalog App")),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: (CatalogModel.items!=null && CatalogModel.items.isNotEmpty) ?  ListView.builder(
            itemCount: CatalogModel.items.length,
            itemBuilder: (context,index){
              return ItemWidget(
                item:CatalogModel.items[index]
                );
            },
          )
          :Center(

            child:CircularProgressIndicator(),
          ),
        ) ,
        drawer:   MyDrawer(),
    );
  }
}