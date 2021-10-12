import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CatDetail extends StatefulWidget {
  late String imageUrl;
  late String id;

  CatDetail(this.imageUrl, this.id, {Key? key}) : super(key: key);

  @override
  State<CatDetail> createState() => _CatDetailState();
}

class _CatDetailState extends State<CatDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Next Task"),
      ),
      body: const Center(
        child: Text("Pass data between pages"),
      ),
    );
  }
}
