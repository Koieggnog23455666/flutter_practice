import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iphonepractice/utils/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Items item;

  const ItemWidget({ Key? key, required this.item}):assert(item!= null),super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        child: Card(
          child: ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(top: 17,),
              child: Image.network(item.image,fit: BoxFit.cover,),
            ),
            title: Padding(
                padding: const EdgeInsets.only(top: 19),
              child: Text(item.name),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(top: 19),
              child: Text('\₹${item.price}',style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
        ),
      ),
    );
  }
}
