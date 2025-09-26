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
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Image.asset(
            data.image,
          ),
          Container(
            //width: double.infinity,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      //color: Colors.orange,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: Color.fromARGB(90, 255, 255, 255)
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.av_timer_rounded,
                            color: Colors.white,
                            size: 15,
                            ),
                          SizedBox(width: 5,),
                          Text(
                            data.time,
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      padding: EdgeInsets.all(5),
                      //color: Colors.orange,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: Color.fromARGB(90, 255, 255, 255)
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.people,
                            color: Colors.white,
                            size: 15,
                            ),
                          SizedBox(width: 5,),
                          Text(
                            "${data.servings} servings",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      padding: EdgeInsets.all(5),
                      //color: Colors.orange,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: Color.fromARGB(90, 255, 255, 255)
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.tiktok,
                            color: Colors.white,
                            size: 15,
                            ),
                          SizedBox(width: 5,),
                          Text(
                            data.difficulty,
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    )
                  ]
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
