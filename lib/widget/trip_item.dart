import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:travels/models/trip.dart';

class Trip_item extends StatelessWidget {
  final String title;
  final String imageurl;
  final int duration;
  final Season season;
  final TripType tripType;

  Trip_item(
      {required this.tripType,
      required this.imageurl,
      required this.duration,
      required this.title,
      required this.season});

  String get sessiontext
  {

    switch (season)
    {
      case Season.Winter:
        return 'winter';

      case Season.Spring:
        return 'Spring';

      case Season.Summer:
        return 'Summer';
      case Season.Autumn:
        return 'Autumn';
      default:
        return 'unknown';
    }
  }
   String get  selectTrip{
     switch (tripType)
     {
       case TripType.Activities:
         return 'activities';

       case TripType.Exploration:
         return 'Exploration';

       case TripType.Recovery:
         return 'recovery';

       case TripType.Therapy:
         return 'Therapy';

       default:
         return 'unknown';
     }

   }




  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 7,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageurl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 250,
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(0.8),
                  ], stops: [0.6,1]),
                  ),
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headline6,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Row(
                  children: [
                    Icon(Icons.today,color: Theme.of(context).accentColor,),
                    SizedBox(width: 6,),
                    Text("${duration} ايام"),

                  ],
                ),
                SizedBox(width: 15,),
                Row(
                  children: [
                    Icon(Icons.wb_sunny,color: Theme.of(context).accentColor,),
                    SizedBox(width: 6,),
                    Text(sessiontext),
                  ],
                ),
                SizedBox(width: 15,),
                Row(
                  children: [
                    Icon(Icons.today,color: Theme.of(context).accentColor,),
                    SizedBox(width: 6,),
                    Text(selectTrip),

                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
