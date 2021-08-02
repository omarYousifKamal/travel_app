import 'package:flutter/material.dart';
// ignore: unused_import
import '../screens/category_trips_screen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String id;
  const CategoryItem(
      {Key? key, required this.title, required this.imageUrl, required this.id})
      : super(key: key);
  //ناوی نوێ لۆ كۆنتێكسته‌كه‌ هه‌تا هه‌مان ناوی قه‌دیمه‌كه‌ی نه‌بی وه‌ك بیلده‌كه‌ی كۆنتێكستی خواێ
  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx)
        .pushNamed('/category-trips', arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //ده‌تباته‌وه‌ كۆنتێكسته‌كه‌ی لاینی سه‌رێ
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(35),
            child: Image.network(
              imageUrl,
              height: 0.8 * MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text(title, style: Theme.of(context).textTheme.headline6),
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(35)),
          )
        ],
      ),
    );
  }
}
