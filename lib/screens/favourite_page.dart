import 'package:flutter/material.dart';
import 'package:recipe_app/model/recipe.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/widgets/recipe_list.dart';


class FavouritePage extends StatefulWidget {
  FavouritePage({required this.favourites,required this.switchScreen,super.key});

  final void Function(Recipe recipe) switchScreen;
  List<Recipe> favourites = [];

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(40),
      child: widget.favourites.isEmpty ?
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.favorite_border_outlined,
            size: 50,
            color: Colors.grey,
          ),
          SizedBox(height: 5,),
          Text(
            "No recipes found",
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 5,),
          Text(
            "No recipes avaliable at the moment",
            style: GoogleFonts.roboto(
              color: Colors.grey,
            ),
          )
        ],
      )
      :  Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...widget.favourites.map(
                            (data){
                              bool clicked = widget.favourites.contains(data);
                              return RecipesList(data,widget.switchScreen,widget.favourites,clicked);
                            } 
                          )
                        ],
                      ),
              ),
            )
          ],
        ),
    );
  }
}