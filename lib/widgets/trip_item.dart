import 'package:flutter/material.dart';
import 'package:travling_app/models/trip.dart';

class TripItem extends StatelessWidget {
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
      required this.season});
  void selecTrip() {}
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selecTrip,
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
            )
          ],
        ),
      ),
    );
  }
}
