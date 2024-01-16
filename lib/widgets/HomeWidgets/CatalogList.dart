import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Pages/InsideCatalogItems.dart';
import '../../utils/catalog.dart';
import 'CatalogItems.dart';

class CatalogList extends StatefulWidget {
  const CatalogList({super.key});
  @override
  State<CatalogList> createState() => _CatalogListState();}
class _CatalogListState extends State<CatalogList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap:true,
        itemBuilder: (context,index){
      final catalog= Catalog.Products[index];
      return InkWell(borderRadius: BorderRadius.circular(12),onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeDetailPage(catalog: catalog,)));
      },child: CatalogItem( catalog: catalog,));
    },itemCount: Catalog.Products.length
    );
  }
}

