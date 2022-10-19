import 'package:equatable/equatable.dart';

class Post extends Equatable {
  const Post({
    required this.user,
    required this.id,
    required this.title,
    required this.body,
    required this.likes,
    required this.shares,
    required this.comments,
    required this.date,
  });

  final String user;
  final int id;
  final String title;
  final String body;
  final int likes;
  final int shares;
  final int comments;
  final DateTime date;

  @override
  List<Object> get props => [id, title, body];
}
