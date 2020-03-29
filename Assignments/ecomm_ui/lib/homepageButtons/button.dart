import 'package:flutter/material.dart';
import '../homepageButtons/buttonClass.dart';
import '../shared/colors.dart';
import '../prodDetails.dart';
// import '../homepageButtons/data.dart';

class Button extends StatelessWidget {
  final ButtonClass item;
  Button({this.item});
  // @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProdDetails(item)),
            );
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.40,
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(18.0),
              color: salmonColor,
              // side: BorderSide(color: Colors.transparent),
            ),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          item.name,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          item.sub,
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          item.price,
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.only(top: 20.0),
        // ),
      ],
    );
  }
}
