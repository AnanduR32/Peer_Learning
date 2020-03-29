import 'package:flutter/material.dart';
import 'homepageButtons/buttonClass.dart';
import 'shared/colors.dart';
import 'shared/drawer.dart';

// class ProdDetails extends StatefulWidget{
//   final ButtonClass item;
//   ProdDetails({this.item});
//   // ProdDetails({Key key}) : super(key: key);
//   // final items = Buttons.fetchAll() ?? [];
//   State<StatefulWidget> createState() {
//     return _ProdDetails(item);
//   }
// }
class ProdDetails extends StatelessWidget {
  final ButtonClass item;
  ProdDetails(this.item);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: coralColor,
        drawer: DrawerBuild(),
        appBar: AppBar(
          backgroundColor: coralColor,
          elevation: 0,),
      )
    );
  }
}