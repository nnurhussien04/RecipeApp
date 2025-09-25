import 'package:flutter/material.dart';
import 'package:recipe_app/screens/recipe_screen.dart';
import 'package:recipe_app/widgets/recipe_bar.dart';
import 'package:recipe_app/data/recipes.dart';
import 'package:recipe_app/widgets/headline_widget.dart';
import 'package:recipe_app/widgets/recipe_list.dart';
import 'package:recipe_app/model/recipe.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  var activeScreen;
  void switchScreen(Recipe recipe){
    setState(() {
      activeScreen = RecipeScreen(recipe);
    });
  }

  



  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Recipe App",
      home: Scaffold(
        extendBodyBehindAppBar: false,
        appBar: RecipeBar(),
        body: activeScreen ?? 
        Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HeadlineWidget(),
                        ...recipes.map(
                            (data){
                              return RecipesList(data,switchScreen);
                            } 
                          )
                        ],
                      ),
              ),
            )
          ],
        ),
      ),
    );
  }
}



