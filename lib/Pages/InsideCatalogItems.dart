import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:iphonepractice/widgets/Theme.dart';
import '../utils/catalog.dart';

class HomeDetailPage extends StatelessWidget{
  final Items catalog;

  const HomeDetailPage({Key? key, required this.catalog}):assert(catalog!=null),super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        bottomNavigationBar: ButtonBar(
          buttonPadding: EdgeInsets.only(left: 0),
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\₹${catalog.price}".text.color(context.theme.focusColor).xl4.bold.make(),
            ElevatedButton(onPressed: (){},style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(theme.Purpleish),
            ), child: 'Add to Cart'.text.bold.color(Colors.black).make()).wh(130, 50)
          ],
        ).p32().color(context.theme.cardColor),
        backgroundColor: context.theme.primaryColor,
        body: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Hero(tag: Key(catalog.id.toString())
                  ,child: Image.network(catalog.image)).h32(context),
              Expanded(child: VxArc(
                arcType: VxArcType.convey,
                edge: VxEdge.top,
                height: 20,
                child: Container(
                  padding:EdgeInsets.symmetric(horizontal: 10,vertical: 0),
                  width: context.screenWidth,
                  color: context.theme.cardColor,
                  child: Column(
                    children: [
                      catalog.name.text.color(context.theme.focusColor).bold.xl4.make(),catalog.desc.text.color(context.theme.primaryColorDark).xl.textStyle(context.captionStyle).make(),
                    ],
                  ).py32(),
                ),
              )
              )
            ],
          ).p16(),
        )
    );
  }
}