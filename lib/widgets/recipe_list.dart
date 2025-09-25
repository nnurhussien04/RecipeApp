import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/model/recipe.dart';
import 'package:recipe_app/screens/recipe_screen.dart';

class RecipesList extends StatefulWidget {
  const RecipesList(this.data,this.switchScreen,{
    super.key,
  });
  
  final Recipe data;
  final void Function(Recipe recipe) switchScreen;

  @override
  State<RecipesList> createState() => _RecipesListState();
}


Widget? activeScreen;

class _RecipesListState extends State<RecipesList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        widget.switchScreen(widget.data);
      },
      child: Card(
        elevation: 0,
        color: Colors.white,
        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        clipBehavior: Clip.hardEdge, //Clip hard edge keeps all child widgets inside the card
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.data.image != null ? widget.data.image : "assets/images/beef-tacos.jpg",
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.data.dish,
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      )                          
                    ),
                    SizedBox(height: 5),
                    Text(
                      widget.data.description,
                      style: GoogleFonts.roboto(
                        fontSize: 15,
                      )                          
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(
                          Icons.av_timer_rounded,
                          color: Colors.grey,
                        ),
                        Text(
                          widget.data.time,
                          style: GoogleFonts.roboto(
                            fontSize: 13,
                          )
                        ),
                      ],
                    ) 
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}