class Uniqlo {
String imgName;
String imgPath;
String imgDetail;

Uniqlo(this.imgName, this.imgPath, this.imgDetail);

static List<Uniqlo> samples=[
  Uniqlo('Sweater', 'assets/images/sweater1.webp', 'Sweater is a warm and comfortable clothing item perfect for cold weather.'),
  Uniqlo('trousers', 'assets/images/trousers1.webp', 'Tshirt is a casual clothing item suitable for everyday wear.'),
  Uniqlo('Tshirt1', 'assets/images/Tshirt4.webp', 'Tshirt is a casual clothing item suitable for everyday wear.'),
  Uniqlo('Tshirt2', 'assets/images/Tshirt2.webp', 'Tshirt is a casual clothing item suitable for everyday wear.'),
];
}