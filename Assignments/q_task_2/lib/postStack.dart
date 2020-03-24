import 'package:flutter/material.dart';
import 'models/postClass.dart';

class PostStack extends StatelessWidget {
  final PostClass post;
  PostStack({this.post});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // margin: EdgeInsets.all(20),
      height: 200,
      child: Stack(
        children: <Widget>[
          Container(
            child: _imageBackground(post),
          ),
          Column(
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
        ],
        overflow: Overflow.visible,
      ),
    );
  }

  Widget _imageBackground(PostClass post) {
    return Container(
        constraints: BoxConstraints.expand(),
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
