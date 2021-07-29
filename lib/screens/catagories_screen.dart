import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../app_data.dart';
import '../widgets/category_item.dart';

class CatagoriesScreen extends StatelessWidget {
  const CatagoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('دليل سياحي'),
        ),
        body: GridView(
            padding: EdgeInsets.all(10),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 7 / 8,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10),
            children: Categories_data.map((catagoryData) => CategoryItem(
                  title: catagoryData.title,
                  imageUrl: catagoryData.imageUrl,
                  id: catagoryData.id,
                )).toList()));
  }
}
