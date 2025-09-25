class Recipe {
  Recipe(
    {
      required this.dish,
      required this.description,
      required this.difficulty,
      required this.time,
      required this.servings,
      required this.ingredients,
      required this.steps,
      required this.image
    }
  );

  final String dish;
  final String description;
  final String difficulty;
  final String time;
  final String servings;
  final List<String> ingredients;
  final List<String> steps;
  final String image;

}
