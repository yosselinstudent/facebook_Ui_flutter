// ignore_for_file: public_member_api_docs, sort_constructors_first
class Publication {
  final User user;
  final String title;
  final DateTime createdAt;
  final String imageUrl;
  final int comentsCount;
  final int sharesCount;
  final Reaction currentReaction;

  Publication({
    required this.title,
    required this.createdAt,
    required this.imageUrl,
    required this.comentsCount,
    required this.sharesCount,
    required this.user, 
    required this.currentReaction,
  });
  
}

class User {
  final String avatar;
  final String username;
  User({
    required this.avatar,
    required this.username,
  });
  
}

enum Reaction{
  like,
  love,
  lauthing,
  sad,
  shocking,
  angry,
}
