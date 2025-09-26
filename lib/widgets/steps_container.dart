import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/data/recipes.dart';
import 'package:recipe_app/model/recipe.dart';

class StepsContainer extends StatelessWidget {
  const StepsContainer({
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
      child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
              Text(
                'Instructions',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 10),
              ...data.steps.map((x) {
                return Row(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.fromLTRB(0,10,10,10),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange
                      ),
                      child: Text(
                        (data.steps.indexOf(x) + 1).toString(),
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        x,
                      ),
                    )
                ],
              );
            })
      ]),
    );
  }
}