import 'package:flutter/material.dart';
import 'models/postClass.dart';

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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _nameOfUser(post),
                    _locationOfUser(post),
                    _captionOfUser(post),
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
      style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
    ));
  }

  Widget _locationOfUser(PostClass post) {
    return Container(
        child: Text(
      post.location,
      style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
    ));
  }

  Widget _captionOfUser(PostClass post) {
    return Container(
        child: Text(
      post.caption,
      style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
    ));
  }
}
