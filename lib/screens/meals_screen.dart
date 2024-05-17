import 'package:flutter/material.dart';
import 'package:food_app/models/meal.dart';
import 'package:food_app/screens/meal_details_screen.dart';
import 'package:food_app/widgets/meals_item.dart';

class MealsScreen extends StatelessWidget {
  MealsScreen({super.key, required this.title, required this.meals,});

  String title;
  List<Meal> meals;

  void selectMeal(BuildContext context, Meal meal){
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> MealDetailsScreen(meal: meal)));
  }

  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
      itemCount: meals.length,
      itemBuilder: (context, index) => MealsItem(meal: meals[index], onSelectMeal: (meal) => selectMeal(context,meal),),
    );

    if (meals.isEmpty) {
      return Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Oh no nothing here...!',
            style: TextStyle(
              color: Colors.white,
              decoration: TextDecoration.none,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 15),
          Text(
            'Try Selecting a different Category',
            style: TextStyle(
              color: Colors.white,
              decoration: TextDecoration.none,
              fontSize: 15,
            ),
          ),
        ],
      ));
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: content);
  }
}
