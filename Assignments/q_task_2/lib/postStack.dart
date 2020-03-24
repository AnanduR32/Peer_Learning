import 'package:flutter/material.dart';
import 'models/postClass.dart';
import 'colors.dart';
import 'user.dart';

class PostStack extends StatelessWidget {
  final PostClass post;
  PostStack({this.post});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(25.0),
            ),
          ),
          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
          height: 150,
          child: Stack(
            children: <Widget>[
              _imageBackground(post),
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _imageAvatar(post, context),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        _nameOfUser(post),
                        _locationOfUser(post),
                        _captionOfUser(post),
                      ],
                    ),
                  ],
                ),
              ),
            ],
            overflow: Overflow.visible,
          ),
        ),
      ],
    );
  }

  Widget _imageAvatar(PostClass post, context) {
    return FloatingActionButton(
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
    );
  }

  Widget _imageBackground(PostClass post) {
    return Container(
      constraints: BoxConstraints.expand(),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.network(
          post.image,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }

  Widget _nameOfUser(PostClass post) {
    return Container(
        child: Text(
      post.name,
      style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w400),
    ));
  }

  Widget _locationOfUser(PostClass post) {
    return Container(
        child: Text(
      post.location,
      style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w400),
    ));
  }

  Widget _captionOfUser(PostClass post) {
    return Container(
        child: Text(
      post.caption,
      style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w400),
    ));
  }
}
