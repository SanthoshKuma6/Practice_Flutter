import 'package:flutter/material.dart';
import 'package:myfirstapp/model/response_in_map_model.dart';
import 'package:myfirstapp/repository/Repository.dart';

class DetailScreen extends StatefulWidget {
  @override
  State<DetailScreen> createState() => _DetailedScreen();
}

class _DetailedScreen extends State<DetailScreen> {
  ResponseInMapModel responseInMapModel = ResponseInMapModel();
  bool loading = true;

  void initState() {
    super.initState();
    getData();
  }

  getData() {
    Repository().responseInMap().then((value) {
      responseInMapModel = value;
      loading=false;

    }).onError((error, stackTrace) {
      print("Error => ${error.toString()}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Get Api"),
      ),
      body: loading? Center(child: CircularProgressIndicator(),):

      ListView.builder( itemCount: responseInMapModel.data?.length, itemBuilder: (context, index) {
        return ListTile(
          title: Text(responseInMapModel.data?[index].firstName??""),
          subtitle: Text(responseInMapModel.data?[index].email??""),
        );
      }),
    );
  }
}
