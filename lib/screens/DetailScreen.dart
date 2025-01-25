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

  @override
  void initState() {
    getData();
    super.initState();

  }

  getData() async {
    try {
      final value = await Repository().responseInMap();
      setState(() {
        responseInMapModel = value;
        loading = false;
      });
    } catch (error) {
      print("Error => ${error.toString()}");
      setState(() {
        loading = false;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Get Api"),
      ),
      body: loading? Center(child: CircularProgressIndicator(),):

      ListView.builder( itemCount: responseInMapModel.data?.length??0, itemBuilder: (context, index) {
        return ListTile(
          title: Text(responseInMapModel.data?[index].firstName??""),
          subtitle: Text(responseInMapModel.data?[index].email??""),
        );
      }),
    );
  }
}
