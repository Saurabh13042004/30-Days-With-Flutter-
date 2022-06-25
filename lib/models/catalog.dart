// ignore: camel_case_types
class CatalogModel{
static final items = [
  Item(
    id: "PRODUCT001",
    name: "Asus Vivobook 15",
    desc: "Intel® Core™ i7-8565U Processor 1.8 GHz (8M Cache, up to 4.6 GHz, 4 cores",
    price: 15000,
    color: "ffff",
    image: "https://m.media-amazon.com/images/I/71S8U9VzLTL._SL1500_.jpg",
  )
];
}
class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});

  

  
}


