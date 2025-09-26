import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/screens/homepage.dart';

class BackBar extends StatefulWidget implements PreferredSizeWidget {
  BackBar(this.homepage,{super.key});

  void Function() homepage;

  @override
  State<BackBar> createState() => _BackBarState();
  
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60);
}

class _BackBarState extends State<BackBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: TextButton.icon(
        onPressed: widget.homepage, 
        icon: Icon(Icons.arrow_back),
        label: Text(
          "Back To Recipes",
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.bold
            ),
          ),
        style: TextButton.styleFrom(
          foregroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          )
        ),
      ),
      actions: [
        Container(
        margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
        child: TextButton.icon(
          onPressed: (){}, 
          icon: Icon(
            Icons.favorite_border,
            ),
          label: Text(
            "Add To Favourites",
            style: GoogleFonts.roboto(
              fontSize: 10,
              fontWeight: FontWeight.bold
            )
          ),
          style: TextButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            side: BorderSide(
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