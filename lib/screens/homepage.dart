import 'package:flutter/material.dart';
import 'package:recipe_app/widgets/recipe_bar.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Recipe App",
      home: Scaffold(
        appBar: RecipeBar(),
        body: ,
      ),
    );
  }
}

