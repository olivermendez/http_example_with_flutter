import 'package:flutter/material.dart';
import 'package:http_example/models/cat_model.dart';
import 'package:http_example/pages/cats/cat_detail_page.dart';
import 'package:http_example/services/api_cat_provider.dart';

class CatPage extends StatefulWidget {
  const CatPage({Key? key}) : super(key: key);

  @override
  _CatPageState createState() => _CatPageState();
}

class _CatPageState extends State<CatPage> {
  late Future<CatModel> _catModel;

  @override
  void initState() {
    _catModel = ApiManager().getCat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Http Example with Cat'),
          backgroundColor: Colors.black,
        ),
        body: FutureBuilder<CatModel>(
            future: _catModel,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          leading: Image.network(snapshot.data!.url.toString()),
                          title: Text(
                            "Id: " + snapshot.data!.id.toString(),
                          ),
                          subtitle: Text(snapshot.data!.x.toString()),
                          trailing: const Icon(Icons.pets),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => CatDetail(
                                    snapshot.data!.id.toString(),
                                    snapshot.data!.x.toString())));
                          },
                        ),
                      );
                    });
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            }));
  }
}
