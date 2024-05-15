import 'package:flutter/material.dart';
import 'package:food_app/data/dummy_data.dart';
import 'package:food_app/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Your Category'),
      ),
      body: GridView(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 3/2,
            ),
        children: availableCategories.map((category) => CategoryGridItem(category: category)).toList(),
      ),
    );
  }
}
