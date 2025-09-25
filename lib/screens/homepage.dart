import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/widgets/recipe_bar.dart';
import 'package:recipe_app/data/recipes.dart';
import 'package:recipe_app/widgets/headline_widget.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Recipe App",
      home: Scaffold(
        extendBodyBehindAppBar: false,
        appBar: RecipeBar(),
        body: 
        Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                    child: Column(
                      children: [
                        HeadlineWidget(),
                        ...recipes.map(
                            (data){
                              return Card(
                                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                child: Container(
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      //Image.asset("",width: double.infinity,),
                                      Text(
                                        data.dish,
                                        style: GoogleFonts.roboto(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold
                                        )                          
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        data.description,
                                        style: GoogleFonts.roboto(
                                          fontSize: 15,
                                        )                          
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        data.time,
                                        style: GoogleFonts.roboto(
                                          fontSize: 10,
                                        ) 
                                      )
                                    ],
                                  ),
                                ),
                              );
                            } 
                          )
                        ],
                      ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

