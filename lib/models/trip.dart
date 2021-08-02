// import 'package:flutter/material.dart';

// enum TripType {
//   Exploration,
//   Recoery,
//   Actiities,
//   Therapy,
// }
// enum Season {
//   Winter,
//   Spring,
//   Summer,
//   Autumn,
// }

// class Trip {
//   final String id;
//   final List<String> categories;
//   final String title;
//   final String imageUrl;
//   final List<String> activities;
//   final List<String> program;
//   final int duration;
//   final Season season;
//   final bool isSummer;
//   final bool isWinter;
//   final bool isForFamilies;
//   Trip({
//     required this.id,
//     required this.categories,
//     required this.title,
//     required this.imageUrl,
//     required this.activities,
//     required this.program,
//     required this.duration,
//     required this.season,
//     required this.isSummer,
//     required this.isWinter,
//     required this.isForFamilies,
//   });
// }

enum Season {
  Winter,
  Spring,
  Summer,
  Autumn,
}

enum TripType {
  Exploration,
  Recovery,
  Activities,
  Therapy,
}

class Trip {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> activities;
  final List<String> program;
  final int duration;
  final Season season;
  final TripType tripType;
  final bool isInSummer;
  final bool isInWinter;
  final bool isForFamilies;

  const Trip({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.activities,
    required this.program,
    required this.duration,
    required this.season,
    required this.tripType,
    required this.isInSummer,
    required this.isInWinter,
    required this.isForFamilies,
  });
}
