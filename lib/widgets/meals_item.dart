import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/models/meal.dart';
import 'package:food_app/widgets/meal_item_info.dart';
import 'package:transparent_image/transparent_image.dart';

class MealsItem extends StatelessWidget {
   MealsItem({super.key, required this.meal, required this.onSelectMeal});
  final Meal meal;

  void Function(Meal meal) onSelectMeal;

  String get complexitiyTest{
    return meal.complexity.name[0].toUpperCase() + meal.complexity.name.substring(1);
  }

  String get afordabilityTest{
    return meal.affordability.name[0].toUpperCase() + meal.affordability.name.substring(1);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {
          onSelectMeal(meal);
        },
        child: Stack(
          children: [
            FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(meal.imageUrl),
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
            ),
            Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  color: Colors.black54,
                  child: Column(
                    children: [
                      Text(
                        meal.title,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 12,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MealItemInfo(icon: Icons.schedule,
                              label: "${meal.duration} Minute" ),
                          const SizedBox(width: 12,),
                          MealItemInfo(icon: Icons.work,
                              label: "$complexitiyTest" ),
                          const SizedBox(width: 12,),
                          MealItemInfo(icon: Icons.monetization_on,
                              label: "$afordabilityTest" ),
                        ],
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
