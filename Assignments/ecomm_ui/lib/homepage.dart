import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
import 'shared/drawer.dart';
import 'homepageButtons/data.dart';
import 'homepageButtons/button.dart';
import 'homepageButtons/buttonClass.dart';
import 'shared/colors.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);
  final items = Buttons.fetchAll() ?? [];
  State<StatefulWidget> createState() {
    return _HomepageState(items);
  }
}

class _HomepageState extends State<Homepage> {
  final List<ButtonClass> items;
  _HomepageState(this.items);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: coralColor,
        drawer: DrawerBuild(),
        body: DoubleBackToCloseApp(
          snackBar: const SnackBar(
              content: Text(
            'Press Back Again To Exit',
            textAlign: TextAlign.center,
          )),
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(10),
            children: <Widget>[
              Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: items.length == null ? 0 : items.length,
                    itemBuilder: (context, index) {
                      return Button(item: items[index]);
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                  ),
                ],
                //overflow: Overflow.clip,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
