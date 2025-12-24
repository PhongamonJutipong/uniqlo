class Uniqlo {
  String imgName;
  String imgPath;
  String imgDetail;
  int price;

  Uniqlo(this.imgName, this.imgPath, this.imgDetail, this.price);

  static List<Uniqlo> samples = [
    Uniqlo(
      'Sweater',
      'assets/images/sweater1.webp',
      'Sweater is a warm and comfortable clothing item perfect for cold weather.',
      1290,
    ),
    Uniqlo(
      'Trousers',
      'assets/images/trousers1.webp',
      'Trousers are suitable for everyday wear.',
      990,
    ),
    Uniqlo(
      'Tshirt1',
      'assets/images/Tshirt4.webp',
      'Tshirt is a casual clothing item suitable for everyday wear.',
      390,
    ),
    Uniqlo(
      'Tshirt2',
      'assets/images/Tshirt2.webp',
      'Tshirt is a casual clothing item suitable for everyday wear.',
      390,
    ),
  ];
}
