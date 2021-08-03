import 'package:flutter/material.dart';
import 'package:travling_app/models/trip.dart';
import 'package:travling_app/screens/trip_detail_screen.dart';

class TripItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duratioon;
  final TripType tripType;
  final Season season;

  const TripItem(
      {Key? key,
      required this.title,
      required this.imageUrl,
      required this.duratioon,
      required this.tripType,
      required this.season,
      required this.id});

  String get seasonText {
    if (season == Season.Winter) {
      return 'شتاء';
    }
    if (season == Season.Summer) {
      return 'صيف';
    }
    if (season == Season.Autumn) {
      return 'خريف';
    }
    if (season == Season.Spring) {
      return 'ربيع';
    } else
      return 'none';
  }

  String get tripTypeText {
    if (tripType == TripType.Exploration) {
      return 'استكشاف';
    }
    if (tripType == TripType.Recovery) {
      return 'نقاهة';
    }
    if (tripType == TripType.Activities) {
      return 'انشطة';
    }
    if (tripType == TripType.Therapy) {
      return 'معالجة';
    } else
      return 'none';
  }

  // void selectTrip(BuildContext context) {
  //   Navigator.of(context).pushNamed('/trip-detail', arguments: {'id': id});
  // }
  void selectTrip(BuildContext context) {
    Navigator.of(context).pushNamed(
      TripDetailScreen.screenRoute,
      arguments: id,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectTrip(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 7,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15)),
                  child: Image.network(
                    imageUrl,
                    height: 0.45 * MediaQuery.of(context).size.width,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 0.45 * MediaQuery.of(context).size.width,
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(0.8)
                        ],
                        stops: [
                          0.3,
                          1
                        ]),
                  ),
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headline6,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.today,
                        color: Theme.of(context).accentColor,
                      ),
                      SizedBox(
                        width: 0.01 * MediaQuery.of(context).size.width,
                      ),
                      Text('$duratioon ايام')
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.wb_sunny,
                        color: Theme.of(context).accentColor,
                      ),
                      SizedBox(
                        width: 0.01 * MediaQuery.of(context).size.width,
                      ),
                      Text(seasonText),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.family_restroom,
                        color: Theme.of(context).accentColor,
                      ),
                      SizedBox(
                        width: 0.01 * MediaQuery.of(context).size.width,
                      ),
                      Text(tripTypeText),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
