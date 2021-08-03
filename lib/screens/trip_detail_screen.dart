import 'package:flutter/material.dart';

class TripDetailScreen extends StatelessWidget {
  static const screenRoute = '/trip-detail';

  @override
  Widget build(BuildContext context) {
    final tripId = ModalRoute.of(context)!.settings.arguments as String;
    return Center(
      child: Text("$tripId تفاصيل الرحلة"),
    );
  }
}
