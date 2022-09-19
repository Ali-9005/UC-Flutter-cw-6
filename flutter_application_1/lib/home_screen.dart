
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/information_screen.dart';
import 'package:flutter_application_1/models/Building.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

var buildings = [
  Building(
    name: 'أبراج الكويت',
    imageURL:
        'https://user-images.githubusercontent.com/24327781/188260105-52be6a2e-a6d3-4ceb-86c0-ddc83e0aa5b6.jpeg',
    description: "ابراج الكويت قويه",
  ),
  Building(
    name: 'برج التحرير',
    imageURL:
        'https://user-images.githubusercontent.com/24327781/188260123-28de85b4-d272-4ebb-b2ad-22a9582079bf.jpeg',
    description: "برج التحرير قوي",

  ),
  Building(
    name: 'المسجد الكبير',
    imageURL:
        'https://user-images.githubusercontent.com/24327781/188260137-021d865a-625e-4941-ad75-6427c690e0cf.jpeg',
    description: "المسجد الكبير ",
  ),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Kuwait City LandMarks"),
        ),
      ),

      body: ListView.builder(itemCount: buildings.length, itemBuilder: (context, index) {
        return Card(
          elevation: 6,
          child: InkWell(
            onTap: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) => Informaiton_Screen(building: buildings[index],)));

            },
            child: Row(
              children: [
                Container(width: 200, height: 200, child: CachedNetworkImage(imageUrl: buildings[index].imageURL)),
                Container(
                  padding: EdgeInsets.all(40),
                  child: Text(buildings[index].name)
                ),
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Informaiton_Screen(building: buildings[index],)));
              }, child: Icon(Icons.arrow_forward)),

              ],
            ),
          ),
        );
      })

    );
  }
}