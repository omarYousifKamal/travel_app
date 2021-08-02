import 'package:flutter/material.dart';
import 'package:travling_app/widgets/trip_item.dart';
import '../app_data.dart';

class CategoryTripsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArgumnet =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryId = routeArgumnet['id'];
    final categryTitle = routeArgumnet['title'];
    final fillterTrips = Trips_data.where((trip) {
      return trip.categories.contains(categoryId);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(categryTitle!),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return TripItem(
                title: fillterTrips[index].title,
                imageUrl: fillterTrips[index].imageUrl,
                duratioon: fillterTrips[index].duration,
                tripType: fillterTrips[index].tripType,
                season: fillterTrips[index].season);
          },
          itemCount: fillterTrips.length,
        ));
  }
}
