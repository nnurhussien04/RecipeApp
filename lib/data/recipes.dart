import 'package:recipe_app/model/recipe.dart';

final List<Recipe> recipes = [
  Recipe(
    dish: "Spaghetti Carbonara",
    description: "A creamy Italian pasta with pancetta and Parmesan cheese.",
    difficulty: "Medium",
    time: "25m",
    servings: "2",
    ingredients: [
      "200g spaghetti",
      "100g pancetta",
      "2 eggs",
      "50g Parmesan cheese",
      "Salt",
      "Black pepper"
    ],
    steps: [
      "Cook spaghetti in salted water.",
      "Fry pancetta until crispy.",
      "Whisk eggs with grated Parmesan.",
      "Combine pasta with pancetta and egg mixture.",
      "Serve with extra Parmesan and black pepper."
    ],
    image: "assets/images/pasta-carbonara.jpg"
  ),
  Recipe(
    dish: "Grilled Chicken Salad",
    description: "Light and healthy salad with grilled chicken and fresh veggies.",
    difficulty: "Easy",
    time: "20m",
    servings: "2",
    ingredients: [
      "200g chicken breast",
      "Lettuce",
      "Cherry tomatoes",
      "Cucumber",
      "Olive oil",
      "Lemon juice",
      "Salt and pepper"
    ],
    steps: [
      "Grill chicken until fully cooked.",
      "Chop veggies and arrange in a bowl.",
      "Slice grilled chicken and place on top.",
      "Drizzle with olive oil and lemon juice.",
      "Season with salt and pepper to taste."
    ],
    image: "assets/images/greek-salad.jpg"
  ),
  Recipe(
    dish: "Beef Tacos",
    description: "Classic Mexican beef tacos with flavorful toppings.",
    difficulty: "Easy",
    time: "30m",
    servings: "4",
    ingredients: [
      "400g ground beef",
      "8 taco shells",
      "Lettuce",
      "Cheddar cheese",
      "Tomatoes",
      "Onion",
      "Taco seasoning"
    ],
    steps: [
      "Cook beef with taco seasoning.",
      "Chop vegetables and shred cheese.",
      "Fill taco shells with beef and toppings.",
      "Serve with salsa or sour cream."
    ],
    image: "assets/images/beef-tacos.jpg"
  ),
  Recipe(
    dish: "Vegetable Stir-Fry",
    description: "Quick and easy stir-fry with a mix of fresh vegetables.",
    difficulty: "Easy",
    time: "15m",
    servings: "3",
    ingredients: [
      "Broccoli",
      "Bell peppers",
      "Carrots",
      "Soy sauce",
      "Garlic",
      "Olive oil",
      "Ginger"
    ],
    steps: [
      "Chop all vegetables evenly.",
      "Heat oil in a wok and sauté garlic and ginger.",
      "Add vegetables and stir-fry for 5-7 minutes.",
      "Add soy sauce and stir well.",
      "Serve hot with rice or noodles."
    ],
    image: "assets/images/veggie-stir-fry.jpg"
  ),
  Recipe(
    dish: "Cheeseburger",
    description: "Juicy beef burger with cheese, lettuce, and tomato.",
    difficulty: "Easy",
    time: "25m",
    servings: "2",
    ingredients: [
      "2 beef patties",
      "2 burger buns",
      "2 cheese slices",
      "Lettuce",
      "Tomato",
      "Onion",
      "Ketchup",
      "Mustard"
    ],
    steps: [
      "Grill beef patties to desired doneness.",
      "Toast burger buns lightly.",
      "Assemble burgers with cheese, lettuce, tomato, and condiments.",
      "Serve with fries or salad."
    ],
    image: "assets/images/images.jpeg"
  ),
  Recipe(
    dish: "Pancakes",
    description: "Fluffy pancakes perfect for a hearty breakfast.",
    difficulty: "Easy",
    time: "20m",
    servings: "4",
    ingredients: [
      "1 cup flour",
      "2 tbsp sugar",
      "1 cup milk",
      "1 egg",
      "1 tsp baking powder",
      "Butter",
      "Maple syrup"
    ],
    steps: [
      "Mix flour, sugar, and baking powder.",
      "Whisk in milk and egg until smooth.",
      "Heat a pan and melt butter.",
      "Pour batter and cook until bubbles form.",
      "Flip and cook the other side.",
      "Serve with butter and maple syrup."
    ],
    image: "assets/images/pancakes.jpg"
  ),
  Recipe(
    dish: "Margherita Pizza",
    description: "Classic pizza topped with fresh mozzarella and basil.",
    difficulty: "Medium",
    time: "40m",
    servings: "4",
    ingredients: [
      "Pizza dough",
      "Tomato sauce",
      "Fresh mozzarella",
      "Basil leaves",
      "Olive oil",
      "Salt"
    ],
    steps: [
      "Preheat oven to 220°C (425°F).",
      "Spread tomato sauce on pizza dough.",
      "Top with mozzarella slices and basil leaves.",
      "Drizzle with olive oil and sprinkle salt.",
      "Bake for 10-15 minutes until golden and bubbly."
    ],
    image: "assets/images/margherita-pizza.jpg"
  ),
  Recipe(
    dish: "Chocolate Chip Cookies",
    description: "Soft and chewy cookies with chocolate chips.",
    difficulty: "Easy",
    time: "30m",
    servings: "12",
    ingredients: [
      "1 cup flour",
      "1/2 cup butter",
      "1/2 cup sugar",
      "1 egg",
      "1 tsp vanilla extract",
      "1/2 tsp baking soda",
      "1 cup chocolate chips"
    ],
    steps: [
      "Preheat oven to 180°C (350°F).",
      "Cream butter and sugar together.",
      "Add egg and vanilla extract and mix well.",
      "Stir in flour and baking soda.",
      "Fold in chocolate chips.",
      "Scoop dough onto a baking sheet.",
      "Bake for 10-12 minutes until golden."
    ],
    image: "assets/images/chocolate-cookies.jpg"
  ),
];
