import 'package:flutter/material.dart';
import 'package:http_example/pages/cats/home_cat.dart';
import 'package:http_example/pages/posts/post_examples.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Http examples'),
            backgroundColor: Colors.black,
          ),
          body: PostExample()),
    );
  }
}
