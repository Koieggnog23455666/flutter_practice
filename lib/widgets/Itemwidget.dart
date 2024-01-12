import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iphonepractice/utils/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Items item;

  const ItemWidget({Key? key,required this.item}):assert(item!= null),super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10,left: 5,bottom: 15),
      child: ListTile(
        leading: Image.network(item.image,),
        title: Text(item.name),
        trailing: Text('\₹${item.price}',style: TextStyle(fontWeight: FontWeight.bold),),
      ),
    );
  }
}
