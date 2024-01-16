import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:iphonepractice/widgets/Theme.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        'Catalog App'.text.xl5.bold.color(context.theme.hintColor).make(),
        'Trending Products'.text.xl.color(context.theme.hintColor).make(),
      ],
    );
  }
}