import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/category.dart';

class CategoryGridItem extends StatelessWidget{
  CategoryGridItem({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            category.color.withOpacity(.55),
            category.color.withOpacity(.9),
          ],
              begin: Alignment.topLeft,
          end: Alignment.bottomRight
        ),
      ),
      child: Text(category.title),
    );
  }

}