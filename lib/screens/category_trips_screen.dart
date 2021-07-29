import 'package:flutter/material.dart';

class CategoryTripsScreen extends StatelessWidget {
  const CategoryTripsScreen({
    Key? key,
    required this.categoryId,
    required this.categoryTitle,
  }) : super(key: key);
  final String categoryId;
  final String categoryTitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: Text('قائمة بحلات هذا التصنيف'),
      ),
    );
  }
}
