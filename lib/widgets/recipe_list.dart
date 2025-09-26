 import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/model/recipe.dart';
import 'package:recipe_app/screens/recipe_screen.dart';


class RecipesList extends StatefulWidget {
  RecipesList(this.data,this.switchScreen,this.favourites,this.clicked,{super.key});
  
  Recipe data;
  void Function(Recipe recipe) switchScreen;
  List<Recipe> favourites;
  bool clicked;

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
              Stack(
                children: [
                    Image.asset(
                      widget.data.image,
                      width: double.infinity,
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: IconButton(
                        onPressed: (){
                          setState(() {
                            widget.clicked = !widget.clicked;
                            print(widget.clicked);
                            if(widget.clicked){
                              !widget.favourites.contains(widget.data) ? widget.favourites.add(widget.data) : null;
                            } else{
                              widget.favourites.contains(widget.data) ? widget.favourites.remove(widget.data) : null;
                            }
                          });
                        }, 
                        icon: Icon(
                          Icons.favorite_border_outlined
                        ),
                        style: IconButton.styleFrom(
                          backgroundColor: widget.clicked ?Colors.orange : Colors.white
                        ),
                      )
                    ),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        //color: Colors.orange,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          color: Colors.orange
                        ),
                        child: Text(
                          widget.data.difficulty,
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      )
                    )
                ]
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