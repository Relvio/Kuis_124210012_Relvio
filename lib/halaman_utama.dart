import 'package:flutter/material.dart';
import 'package:untitled1/disease_data.dart';
import 'package:untitled1/tes.dart';

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({Key? key});

  @override
  _HalamanUtamaState createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  List<bool> isFavoriteList = List.generate(listDisease.length, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Jenis Tanaman",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: listDisease.length,
        itemBuilder: (context, index) {
          final Diseases place = listDisease[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return HalamanDetail(place: place);
                }),
              );
            },
            child: Card(
              elevation: 5.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 5,
                    width: MediaQuery.of(context).size.width / 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        bottomLeft: Radius.circular(8.0),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(place.imgUrls),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          place.name,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          place.name,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      isFavoriteList[index] ? Icons.favorite : Icons.favorite_border,
                      color: Colors.red,
                    ),
                    onPressed: () {
                      setState(() {
                        isFavoriteList[index] = !isFavoriteList[index];
                      });
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
