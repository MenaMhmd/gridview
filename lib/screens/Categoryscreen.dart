import 'package:flutter/material.dart';
import 'package:travels/widget/category_item.dart';

import '../app_data.dart';

class Categoryscreen extends StatelessWidget {
  static String id="categoryscreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("دليل السياحي"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: GridView(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 7 / 8,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10

          ),
          children: Categories_data.map(
              (e) => Categoryitem(title: e.title, imageurl: e.imageUrl,id: e.id,)).toList(),
        ),
      ),
    );
  }
}
