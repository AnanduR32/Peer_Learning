import 'package:flutter/material.dart';
import '../homepageButtons/buttonClass.dart';
import '../shared/colors.dart';
import '../homepageButtons/data.dart';

class Button extends StatelessWidget {
  final ButtonClass item;
  Button({this.item});
  // @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        RawMaterialButton(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.transparent)),
          fillColor: salmonColor,
          splashColor: beige,
          textStyle: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                child: Image.asset(
                  item.image,
                ),
                height: 100,
                width: 100,
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 2.0),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(item.name),
                  Text(item.sub),
                  Text(item.price),
                ],
              ),
            ],
          ),
          onPressed: () {
            // Navigator.push(
            //           context,
            //           MaterialPageRoute(builder: (context) => MedPage(item)),
            //         );
          },
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
