import '../models/postClass.dart';

class UserPosts extends PostClass{
  static final List<PostClass> items = [
    PostClass(
      name: 'Anandu R',
      location: 'Kerala, India',
      caption: 'Taken in the morning',
      image: 'https://images.unsplash.com/photo-1494438639946-1ebd1d20bf85?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1347&q=80',
    ),
    PostClass(
      name: 'Augustine S Aykkara',
      location: 'Kerala, India',
      caption: 'Quarantine Chilling',
      image: 'https://images.unsplash.com/photo-1506619216599-9d16d0903dfd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1349&q=80',
    ),
    PostClass(
      name: 'Aishwarya Michael',
      location: 'Delhi, India',
      caption: 'Family time fun time',
      image: 'https://images.unsplash.com/photo-1495476479092-6ece1898a101?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    ),
    PostClass(
      name: 'Chloe',
      location: 'London, UK',
      caption: 'Lovely evening',
      image: 'https://images.unsplash.com/photo-1487700160041-babef9c3cb55?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1335&q=80',
    ),
  ];
  static PostClass fetchAny(){
    return UserPosts.items[0];
  }
  static List<PostClass> fetchAll(){
    return UserPosts.items;
  }
}