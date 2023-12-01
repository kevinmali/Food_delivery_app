class Food {
  var foodItems;
  var foodName;
  var foodType;
  var protein;

  Food(
      {required this.foodName,
      required this.foodType,
      required this.protein,
      required this.foodItems});

  factory Food.frommap({required Map data}) {
    return Food(
      foodName: data['foodName'],
      foodType: data['foodType'],
      protein: data['protein'],
      foodItems: data['foodItems'],
    );
  }
}
