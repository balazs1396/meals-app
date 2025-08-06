import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meals/models/category.dart';

class CategoryGridItem extends StatelessWidget {
  final Category category;
  final void Function() onSelectCategory;

  const CategoryGridItem({required this.category, required this.onSelectCategory, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelectCategory,
      // splashColor: Theme.of(context).primaryColor,
      splashColor: Colors.amberAccent,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.all(4),
      
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(colors: [
            category.color.withValues(alpha: 0.55),
            category.color.withValues(alpha: 0.9),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          
          
          ),
          ),
          child: Text(category.title, style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
          ),),
      ),
    );
  }
}