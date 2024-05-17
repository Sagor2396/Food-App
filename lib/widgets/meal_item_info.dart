import 'package:flutter/material.dart';

class MealItemInfo extends StatelessWidget{
  MealItemInfo({super.key, required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 17, color: Colors.white,),
        SizedBox(width: 5,),
        Text(label,style: TextStyle(color: Colors.white, fontSize: 12),)
      ],
    );
  }}