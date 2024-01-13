class Catalog{
 static List<Items> Products=[];
}
class Items{
  final String id;
  final String name;
  final num price;
  final String image;

  Items({ required this.id,required this.name,  required this.price,  required this.image});

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'name': this.name,
      'price': this.price,
      'image': this.image,
    };
  }

  factory Items.fromMap(Map<String, dynamic> map) {
    return Items(
      id: map['id'] as String,
      name: map['name'] as String,
      price: map['price'] as num,
      image: map['image'] as String,
    );
  }
}
