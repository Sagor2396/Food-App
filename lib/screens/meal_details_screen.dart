import 'package:flutter/material.dart';
import 'package:food_app/data/dummy_data.dart';
import '../models/meal.dart';

class MealDetailsScreen extends StatelessWidget {
  MealDetailsScreen({super.key, required this.meal});

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              meal.imageUrl,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 12,
            ),
            SizedBox(height: 12,),
            Text('Ingredients',textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Theme.of(context).primaryColor)),
            SizedBox(height: 10,),
            ...meal.ingredients.map((ingredient) {
              return Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 1, horizontal: 30),
                child: Text(
                  ingredient,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).primaryColorDark),
                ),
              );
            }).toList(),
            SizedBox(height: 20,),
            Text('Steps',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Theme.of(context).primaryColor)),
            SizedBox(height: 10,),
            ...meal.steps.map((step){
              return Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child: Text(
                  step,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).primaryColorDark),
                ),
              );
            }).toList(),
        
          ],
        ),
      ),
    );
  }
}
