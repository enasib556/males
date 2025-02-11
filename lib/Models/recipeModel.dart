class RecipeModel {
  final String image;
  final String name;
  final double? salary;
  final int? time;
  RecipeModel({
    required this.image,
    required this.name,
    this.salary,
    this.time,
  });
}
