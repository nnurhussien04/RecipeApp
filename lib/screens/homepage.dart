import 'package:flutter/material.dart';
import 'package:recipe_app/screens/favourite_page.dart';
import 'package:recipe_app/screens/recipe_screen.dart';
import 'package:recipe_app/widgets/back_bar.dart';
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
  var appBar;
  List<Recipe> userFavourites = [];
  

  void switchScreen(Recipe recipe){
    setState(() {
      appBar = BackBar(homepage);
      activeScreen = RecipeScreen(recipe);
    });
  }

  void homepage(){
    setState(() {
      appBar = null;
      activeScreen = null;
    });
  }

  void switchFavouriteScreen(){
    setState(() {
      activeScreen = FavouritePage(favourites: userFavourites,switchScreen: switchScreen);
    });
  }

  void addFavourites(Recipe recipe){
    setState(() {
      userFavourites.add(recipe);
    });
  }

  void removeFavourties(Recipe recipe){
    userFavourites.contains(recipe) ? userFavourites.remove(recipe) : print('Error');
  }

  


  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Recipe App",
      home: Scaffold(
        extendBodyBehindAppBar: false,
        appBar: appBar ?? RecipeBar(
          switchFavouriteScreen: switchFavouriteScreen,
          switchHomeScreen: homepage,
          ),
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
                              bool clicked = userFavourites.contains(data);
                              return RecipesList(data,switchScreen,userFavourites,clicked);
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



