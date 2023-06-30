import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavouritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeal;
  FavouritesScreen(this.favoriteMeal);
  @override
  Widget build(BuildContext context) {
    if (favoriteMeal.isEmpty) {
      return Center(
        child: Text('No favourites added yet, add some!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favoriteMeal[index].id,
            affordability: favoriteMeal[index].affordability,
            complexity: favoriteMeal[index].complexity,
            duration: favoriteMeal[index].duration,
            imageUrl: favoriteMeal[index].imageUrl,
            title: favoriteMeal[index].title,
          );
        },
        itemCount: favoriteMeal.length,
      );
    }
  }
}
