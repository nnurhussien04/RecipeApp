import 'package:flutter/material.dart';
import 'package:recipe_app/model/recipe.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    super.key,
    required this.data,
  });

  final Recipe data;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Image.asset(
            data.image,
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(20),
            //height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.dish,
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28),
                ),
                Text(
                  data.description,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
