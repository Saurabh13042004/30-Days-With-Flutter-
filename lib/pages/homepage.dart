import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import '../widgets/item_widget.dart';
// ignore: unused_import
import 'login_page.dart';

// ignore: camel_case_types
class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  

  @override
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