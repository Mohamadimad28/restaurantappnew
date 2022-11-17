class Food {
  String image;
  String name;
  String price;
  bool isLike = false;

  Food(this.image, this.name, this.price);

  static List<Food> DataFood = [
    Food('assest/images/Resturant3.jpg', 'Fino bread', '\$55.5'),
    Food('assest/images/Resturant4.jpg', 'Pizza', '\$45'),
    Food('assest/images/Resturant5.jpg', 'Shawarma', '\$5'),
  ];
}
