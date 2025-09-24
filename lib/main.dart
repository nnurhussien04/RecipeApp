import 'package:flutter/material.dart';
import 'package:recipe_app/screens/homepage.dart';

void main(){
  runApp(const Main());
}



class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Homepage();
  }
}
