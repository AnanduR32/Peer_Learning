import 'package:flutter/material.dart';
import 'colors.dart';
import 'user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);
  @override
  _HomepageState createState() => _HomepageState();
}

String durationDrop = 'Today';
String postDrop = 'All';
final List<String> duration = <String>[
  'Today',
  'This Week',
  'This Month',
  'This Year'
];
final List<String> postType = <String>[
  'All',
  'Contests',
  'Posts',
];

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: bgColor,
          iconTheme: IconThemeData(
            color: raspColor,
          ),
          actions: <Widget>[
            // GestureDetector(
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => User()),
            //     );
            //   },
            //   child: CircleAvatar(
            //     backgroundImage: ExactAssetImage('asset/user.jpg'),
            //     backgroundColor: raspColor,
            //     radius: 20,
            //   ),
            // ),
            SizedBox(
              width: 8,
            ),
            FloatingActionButton(
              child: Icon(Icons.person),
              // child: Container(
              //   child: Image.asset('asset/user.jpg'),
              //   height: 25,
              // ),
              backgroundColor: raspColor,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => User()),
                );
              },
            ),
            SizedBox(
              width: 8,
            ),
          ]),
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(60, 0, 60, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text(
                          'Hello',
                          style: TextStyle(
                              fontStyle: FontStyle.normal, fontSize: 30, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        //padding: EdgeInsets.all(30),
                        child:
                          Text(durationDrop,style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),),
                      ),
                      Container(
                        child: DropdownButton<String>(
                          icon: Icon(Icons.create),
                          iconSize: 16,
                          elevation: 0,
                          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
                          underline: null,
                          onChanged: (String newValue) {
                            setState(() {
                              durationDrop = newValue;
                            });
                          },
                          items: duration
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: DropdownButton<String>(
                          value:
                              postDrop.isNotEmpty ? postDrop : null,
                          icon: Icon(Icons.arrow_downward),
                          iconSize: 16,
                          elevation: 0,
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600,),
                          onChanged: (String newValue) {
                            setState(() {
                              postDrop = newValue;
                            });
                          },
                          items: postType
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
