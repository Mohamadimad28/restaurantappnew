class FastestDelivery {
  String image;
  String? name;
  String description;
  String address;
  double evaluation;

  FastestDelivery(
    this.image,
    this.name,
    this.description,
    this.address,
    this.evaluation,
  );

  static List<FastestDelivery> fastest = [
    FastestDelivery(
      'assest/images/Resturant2.png',
      'Best Burger',
      'Quick Bites - Curry Grill',
      '4 km - Free delivery',
      5.0,
    ),
    FastestDelivery(
      'assest/images/Resturant3.jpg',
      'Fino bread',
      'Quick Bites - Curry Grill',
      '5 km - Free delivery',
      4.7,
    ),
    FastestDelivery(
      'assest/images/Resturant4.jpg',
      'Pizza',
      'Quick Bites - Curry Grill',
      '4 km - Free delivery',
      5.5,
    ),
    FastestDelivery(
      'assest/images/Resturant5.jpg',
      'Shawarma',
      'Quick Bites - Curry Grill',
      '10 km - Free delivery',
      4.0,
    ),
  ];
}
