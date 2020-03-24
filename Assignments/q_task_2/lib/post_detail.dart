import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'models/post.dart';

class PostDetail extends StatelessWidget {
  final Post posts;
  PostDetail(this.posts);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: _renderBody(context, posts),
    );
  }

  List<Widget> _renderBody(BuildContext context, Post post) {
    var result = List<Widget>();
    result.add(_bannerImg(posts.image, 200.0));
    return result;
  }


  Widget _bannerImg(String image, double height) {
    return Container(
        padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 0.0),
        constraints: BoxConstraints.tightFor(height: height),
        child: Image.network(image, fit: BoxFit.fitWidth));
  }
}
