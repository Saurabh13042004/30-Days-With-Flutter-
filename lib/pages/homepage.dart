import 'package:flutter/material.dart';
import 'login_page.dart';

// ignore: camel_case_types
class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text("Catalog App")),
        body:  Center(child: Text("Welcome $name")),
        drawer:  const Drawer(),
    );
  }
}