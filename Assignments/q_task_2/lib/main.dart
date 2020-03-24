import 'package:flutter/material.dart';
import 'package:q_task_2/postStack.dart';
import 'colors.dart';
import 'user.dart';
import 'package:flutter/rendering.dart';
import 'models/postClass.dart';
import 'details/userpost.dart';

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
void main() => runApp(TinkerApp());

class TinkerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);
  final posts = UserPosts.fetchAll() ?? [];
  @override
  _HomepageState createState() => _HomepageState(posts);
}

class _HomepageState extends State<Homepage> {
  final List<PostClass> posts;
  _HomepageState(this.posts);
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
              padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text(
                          'Hello!',
                          style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 35,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        //padding: EdgeInsets.all(30),
                        child: Text(
                          durationDrop,
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            icon: Icon(Icons.create),
                            iconSize: 16,
                            elevation: 0,
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w500),
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
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: postDrop.isNotEmpty ? postDrop : null,
                            icon: Icon(Icons.arrow_downward),
                            iconSize: 16,
                            elevation: 0,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
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
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: posts.length == null ? 0 : posts.length,
                    itemBuilder: (context, index) {
                      return PostStack(post: posts[index]);
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
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
