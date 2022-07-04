import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/Categorytrip.dart';

class Categoryitem extends StatelessWidget {
  final String title;
  final String imageurl;
  final String? id;

  Categoryitem({required this.title, required this.imageurl,this.id});

  void selectcategory(BuildContext context) {
    Navigator.of(context).pushNamed(Categorytrip.id,arguments: {"id":id,"title":title});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          selectcategory(context);
        },
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                imageurl,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            // Container(
            //   padding: EdgeInsets.all(10),
            //
            //   alignment: Alignment.center,
            //   decoration: BoxDecoration(
            //
            //       borderRadius: BorderRadius.circular(10),
            //       color: Colors.black.withOpacity(0.4)),
            //   child: Text(
            //     title!,
            //     style: TextStyle(fontSize: 30, color: Colors.white),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
