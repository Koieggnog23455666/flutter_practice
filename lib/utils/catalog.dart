class Catalog{
  final Products =[
    Items(id:"1",
        name: "iPhone 12 Pro",
        price: 50000,
        image:"https://imgs.search.brave.com/SUGP793rr8wrP7ORdskXgJvSoL1sxm4umo0_KzuPIWA/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9mZG4y/LmdzbWFyZW5hLmNv/bS92di9iaWdwaWMv/YXBwbGUtaXBob25l/LTEyLXByby0tLmpw/Zw"

    )
  ];
}
class Items{
  final String id;
  final String name;
  final num price;
  final String image;

  Items({required this.id, required this.name, required this.price, required this.image});
}
