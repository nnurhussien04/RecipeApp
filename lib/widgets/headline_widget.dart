import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/data/recipes.dart';

class HeadlineWidget extends StatelessWidget {
  const HeadlineWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "All Recipes",
            style: GoogleFonts.roboto(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 5),
          Text(
            "${recipes.length} recipes avaliable",
            style: GoogleFonts.roboto(
              fontSize: 15,
              color: Colors.grey,
              fontWeight: FontWeight.w600
              ),
          )
        ]
      ),
    );
  }
}

