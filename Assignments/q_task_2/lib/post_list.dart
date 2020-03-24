import 'package:flutter/material.dart';
import 'models/post.dart';

class PostList extends StatelessWidget {
  final List<Post> posts;
  PostList(this.posts);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.posts.length,
      itemBuilder: (context, index) {
        return ListTile(
          contentPadding: EdgeInsets.all(10.0),
          leading: _itemThumbnail(this.posts[index]),
        );
      },
    );
  }

  Widget _itemThumbnail(Post posts) {
    return Container(
        constraints: BoxConstraints.tightFor(width: 100),
        child: Image.network(posts.image, fit: BoxFit.fitWidth));
  }
}
