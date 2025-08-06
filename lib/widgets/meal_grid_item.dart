import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class MealGridItem extends StatelessWidget {
  final Meal meal;

  const MealGridItem({required this.meal, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      // splashColor: Theme.of(context).primaryColor,
      splashColor: Colors.amberAccent,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.all(4),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [
              Colors.teal.withValues(alpha: 0.55),
              Colors.lightGreen.withValues(alpha: 0.95),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(
          meal.title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
      ),
    );
  }
}
