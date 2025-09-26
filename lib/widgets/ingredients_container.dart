import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/model/recipe.dart';

class IngredientsContainer extends StatelessWidget {
  const IngredientsContainer({
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
          border: Border.all(width: 0.5, color: Colors.grey)),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ingredients',
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(height: 15),
          ...data.ingredients.map((x) => Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "\u2022 $x",
                  style: GoogleFonts.roboto(fontSize: 15),
                ),
              ))
        ],
      ),
    );
  }
}

