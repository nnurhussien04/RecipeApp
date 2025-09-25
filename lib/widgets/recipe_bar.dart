import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipeBar extends StatelessWidget implements PreferredSizeWidget {
  const RecipeBar({
    super.key,
  });

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
          onPressed: (){}, 
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
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.orange,
            shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(10))
          
          ),
        ),
      ),
      SizedBox(width: 5),
      Container(
        margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
        child: TextButton.icon(
          onPressed: (){}, 
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
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(10)),
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
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60);
}