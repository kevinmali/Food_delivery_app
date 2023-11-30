class Food {
  String foodName;
  String foodType;
  String protein;

  Food({required this.foodName, required this.foodType, required this.protein});

  factory Food.frommap({required Map data}) {
    return Food(
        foodName: data['foodName'],
        foodType: data['foodType'],
        protein: data['protein']);
  }
}
