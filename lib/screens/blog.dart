import 'package:flutter/material.dart';

class Blogs extends StatelessWidget {
  Blogs({super.key});
  final blogs = [
    {"title": "How to", "desc": "Disposal"},
    {"title": "How to", "desc": "Disposal"},
    {"title": "How to", "desc": "Disposal"},
    {"title": "How to", "desc": "Disposal"},
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: blogs.length,
      itemBuilder: (context, index) => Text(blogs[index]["title"]!),
    );
  }
}
