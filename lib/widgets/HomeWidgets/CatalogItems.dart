import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:iphonepractice/widgets/Theme.dart';
import '../../utils/catalog.dart';

class CatalogItem extends StatelessWidget {
  const CatalogItem({Key? key, required this.catalog}):assert(catalog!=null), super(key: key);
  final Items catalog;

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
          children: [
            Hero(tag: Key(catalog.id.toString()),child: ClipRRect(child: Image.network(catalog.image,).box.rounded.color(context.canvasColor).make().p16().h32(context).w32(context))),
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [catalog.name.text.bold.lg.make(),catalog.desc.text.textStyle(context.captionStyle).make(),
                10.heightBox,
                ButtonBar(
                  buttonPadding: EdgeInsets.only(left: 0),
                  alignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "\₹${catalog.price}".text.bold.make(),
                    ElevatedButton(onPressed: (){},style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(theme.Purpleish),

                    ), child: 'Add to Cart'.text.bold.color(Colors.black).make())
                  ],
                ).pOnly(right: 8)
              ],
            ))
          ],
        )
    ).color(context.cardColor).rounded.square(150).make().py12();
  }
}