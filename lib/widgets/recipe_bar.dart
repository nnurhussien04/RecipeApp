import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipeBar extends StatefulWidget implements PreferredSizeWidget {
  const RecipeBar({
    super.key,
    required this.switchFavouriteScreen,
    required this.switchHomeScreen
  });

  final void Function() switchFavouriteScreen;
  final void Function() switchHomeScreen;

  @override
  State<RecipeBar> createState() => _RecipeBarState();
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60);
}

class _RecipeBarState extends State<RecipeBar> {
  bool clicked = true;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading:Icon(
        Icons.tiktok,
        size: 22,
        color: Colors.orange,
      ),
      title: Text(
        "Recipe App",
        style: GoogleFonts.roboto(
          color: Colors.orange,
          fontWeight: FontWeight.bold,
          fontSize: 22
        ),
      ),
    titleSpacing: -10,
    actions: [
      Container(
        margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
        child: TextButton.icon(
          onPressed: (){
            setState(() {
              clicked = true;
            });
            widget.switchHomeScreen();
          }, 
          icon: Icon(
            Icons.home_outlined
          ),
          label: Text(
            "All Recipes",
            style: GoogleFonts.roboto(
              fontSize: 10,
              fontWeight: FontWeight.bold
            ),
          ),
          style: TextButton.styleFrom(
            foregroundColor: clicked ? Colors.white : Colors.black,
            backgroundColor: clicked ? Colors.orange : Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            side: clicked ? null : BorderSide(
              width: 0.5,
              color: Colors.grey
              ) ,
          ),
        ),
      ),
      SizedBox(width: 5),
      Container(
        margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
        child: TextButton.icon(
          onPressed: (){
            setState(() {
              clicked = false;
            });
            widget.switchFavouriteScreen();
            }, 
          icon: Icon(
            Icons.favorite_border,
            ),
          label: Text(
            "Favourites",
            style: GoogleFonts.roboto(
              fontSize: 10,
              fontWeight: FontWeight.bold
            )
          ),
          style: TextButton.styleFrom(
            backgroundColor: clicked ? Colors.white : Colors.orange,
            foregroundColor: clicked ? Colors.black : Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            side: !clicked ? null : BorderSide(
              width: 0.5,
              color: Colors.grey
              ) 
            ),
          ),
        )
      ],
    );
  }

}