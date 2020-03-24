import 'package:flutter/material.dart';
import 'colors.dart';

class User extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: bgColor,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: raspColor),
          onPressed: () => Navigator.of(context).pop(),
        ),
        iconTheme: IconThemeData(
            color: raspColor,
          ),
        actions: <Widget>[
          IconButton(
            icon: new Icon(
              Icons.inbox,
              color: raspColor,
              size: 35,
            ),
            onPressed: () {},
          ),
          SizedBox(width: 8,),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
    );
  }
}
