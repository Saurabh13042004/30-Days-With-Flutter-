import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'dart:core';
// ignore: unused_import
import '../widgets/home_widgets/catalog_header.dart';
import '../widgets/home_widgets/catalog_list.dart';

import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';

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
      floatingActionButton: FloatingActionButton(
        onPressed: (() => Navigator.pushNamed(
          context,MyRoutes.cartRoute 
        )),
        child: Icon(CupertinoIcons.cart),
        backgroundColor: Mytheme.darkBluishColor,
      ),
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [const CatalogHeader(),
              // ignore: unnecessary_null_comparison
              if (CatalogModel.items != null && CatalogModel.items.isNotEmpty ) 
                const CatalogList().expand()
              
              else
                
                  const CircularProgressIndicator().centered().py16().expand(),
                  
            
              ],
            ),
          ),
        ),
    );
  }
  }






