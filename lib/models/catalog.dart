// ignore: camel_case_types
class item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}

final products = [
  item(
    id: "PRODUCT001",
    name: "Asus Vivobook 15",
    desc: "ASUS VivoBook 15 is the compact laptop that immerses you in whatever you set out to do. ",
    price: 15000,
    color: "ffff",
    image: "https://m.media-amazon.com/images/I/71S8U9VzLTL._SL1500_.jpg",
  )
];
