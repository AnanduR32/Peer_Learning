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
          margin: EdgeInsets.fromLTRB(8,10,8,0),
          height: 200,
          child: Stack(
            children: <Widget>[
              Container(
                child: _imageBackground(post),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: _nameOfUser(post),
                    ),
                    Container(
                      child: _locationOfUser(post),
                    ),
                    Container(
                      child: _captionOfUser(post),
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

  Widget _imageBackground(PostClass post) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(25.0),
          ),
        ),
        constraints: BoxConstraints.expand(height: 200),
        child: Image.network(post.image, fit: BoxFit.fitWidth));
  }

  Widget _nameOfUser(PostClass post) {
    return Container(child: Text(post.name));
  }

  Widget _locationOfUser(PostClass post) {
    return Container(child: Text(post.location));
  }

  Widget _captionOfUser(PostClass post) {
    return Container(child: Text(post.caption));
  }
}
