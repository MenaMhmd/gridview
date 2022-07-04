import 'package:flutter/material.dart';
import 'package:travels/app_data.dart';
import 'package:travels/widget/trip_item.dart';

class Categorytrip extends StatelessWidget {
  static String id = "category trip";
  final String? categoryid;
  final String? categorytitle;

  Categorytrip({this.categoryid, this.categorytitle});

  @override
  Widget build(BuildContext context) {
    final routeargument =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryid = routeargument["id"];
    final categorytitle = routeargument["title"];
    final tripdetails =
        Trips_data.where((trip) => trip.categories.contains(categoryid))
            .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categorytitle!),
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Trip_item(
                tripType: tripdetails[index].tripType,
                imageurl: tripdetails[index].imageUrl,
                duration: tripdetails[index].duration,
                title: tripdetails[index].title,
                season: tripdetails[index].season);
          },
          itemCount: tripdetails.length,
        ),
      ),
    );
  }
}
