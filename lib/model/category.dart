
class Category {
  String id;
  String title;
  String image;
  int colorCode;
  Category(this.id ,this.title ,this.image ,this.colorCode);
  static List<Category>getCategories(){
    return [
      Category('business' , 'business', 'assets/images/3.png', 0xFF000000),
      Category('entertainment', 'entertainment', 'assets/images/entertainment.png', 0xFF008080),
      Category('general', 'general', 'assets/images/general.png', 0xFFFF0000),
      Category('health', 'health', 'assets/images/health.png', 0xFF000080),
      Category('science', 'science', 'assets/images/science.png', 0xFF800080),
      Category('sports', 'sports', 'assets/images/Salah.png', 0xFF008000),
      Category('technology', 'technology', 'assets/images/technology.png', 0xFF00FFFF),
      Category('technology', 'technology', 'assets/images/8.png', 0xFFFF00FF),
    ];
  }
}
