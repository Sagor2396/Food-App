import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/category.dart';
import 'package:food_app/widgets/category_grid_item.dart';

class CategoryGridItem extends StatelessWidget{
  CategoryGridItem({super.key, required this.category, required this.onSelectCategory});

  final Category category;
  final Function() onSelectCategory;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelectCategory,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(.55),
              category.color.withOpacity(.9),
            ],
                begin: Alignment.topLeft,
            end: Alignment.bottomRight
          ),
        ),
        child: Text(category.title, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
      ),
    );
  }

}