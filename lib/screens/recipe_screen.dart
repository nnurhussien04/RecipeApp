import 'package:flutter/material.dart';
import 'package:recipe_app/model/recipe.dart';
import 'package:recipe_app/widgets/image_container.dart';
import 'package:recipe_app/widgets/ingredients_container.dart';
import 'package:recipe_app/widgets/steps_container.dart';

class RecipeScreen extends StatelessWidget {
  const RecipeScreen(this.data, {super.key});

  final Recipe data;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageContainer(data: data),
          const SizedBox(height: 5),
          IngredientsContainer(data: data),
          StepsContainer(data: data),
        ],
      ),
    );
  }
}



