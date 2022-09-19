
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Building.dart';

class Informaiton_Screen extends StatelessWidget {
  const Informaiton_Screen({
    Key? key,
    required this.building,
}) : super(key: key);

  final Building building;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Information")),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network("${building.imageURL}", width: 300, height: 300,),
              Text("${building.name}"),
              Text("${building.description}"),
            ],
          ),
        ],
      )
    );
  }
}