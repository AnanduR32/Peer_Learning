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
  var search = List<ButtonClass>();
  final searchitems = Buttons.fetchAll() ?? [];
  int index;
  void filterSearchResults(String query) {
    List<ButtonClass> searchList;
    searchList.addAll(searchitems);
    if (query.isNotEmpty) {
      List<ButtonClass> dummyListData = List<ButtonClass>();
      searchList[1].name.forEach((item) {
        if (item.contains(query)) {
          dummyListData.add(searchList[index]);
        }
      });
      setState(() {
        items.clear();
        items.addAll(searchList);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(searchitems);
      });
    }
  }

  // @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: coralColor,
        drawer: DrawerBuild(),
        appBar: AppBar(
          backgroundColor: coralColor,
          elevation: 0,
        ),
        body: DoubleBackToCloseApp(
          snackBar: const SnackBar(
              content: Text(
            'Press Back Again To Exit',
            textAlign: TextAlign.center,
          )),
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
            children: <Widget>[
              Container(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Hello, Anandu!',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize: 35,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      margin: const EdgeInsets.fromLTRB(15,0,15,0),
                      decoration: BoxDecoration(
                        color: salmonColor,
                        // border: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      child: TextField(
                        onChanged: (value) {
                          filterSearchResults(value);
                        },
                        // controller: editingController,
                        decoration: InputDecoration(
                          // focusColor: salmonColor,
                          // fillColor: salmonColor,
                          hintText: "Search",
                          prefixIcon: Icon(Icons.search, color: coralColor),
                          // enabledBorder: OutlineInputBorder(
                          //   borderSide: BorderSide(color: Colors.transparent),
                          //   borderRadius: BorderRadius.all(
                          //     Radius.circular(20.0),
                          //   ),
                          // ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
