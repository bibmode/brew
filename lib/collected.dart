import 'package:flutter/material.dart';
import 'package:scrapcycle_collector/bottom_bar.dart';
import 'package:scrapcycle_collector/collectedWidgets/collected_card.dart';

class Collected extends StatelessWidget {
  Collected({Key? key}) : super(key: key);

  List<String> names = [
    'Hayacinth Jimenez',
    'Ydmundi Perez',
    'Lavranz Tradio',
    'Flocer Angelo Bustamante'
  ];

  List<double> weights = [
    35.0,
    35.0,
    35.0,
    35.0,
  ];

  List<String> images = [
    'https://i.pinimg.com/236x/8d/69/60/8d6960bce7b5b8d749d78d0d5a5bee50.jpg',
    'https://i.pinimg.com/236x/18/d7/1e/18d71ed130686a018ed45217bd92b2a3.jpg',
    'https://i.pinimg.com/236x/c9/0a/77/c90a771bff25fb6b83324ff128fbe839.jpg',
    'https://i.pinimg.com/236x/1e/0c/6b/1e0c6b5c46f20452ffb1b9d6ad00d5fe.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Finished Locations'),
        centerTitle: true,
        backgroundColor: const Color(0xff27AE60),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: const Color(0xffDFF1E7),
            width: double.infinity,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 36.0),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      'Aug 16',
                      style: TextStyle(
                        fontSize: 34.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  for (int index = 0; index < names.length; index++)
                    CollectedCard(
                      scrapWeight: weights[index],
                      userName: names[index],
                      profilePhoto: images[index],
                    )
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        height: 80.0,
        width: 80.0,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () => {},
            tooltip: 'Increment',
            elevation: 4.0,
            backgroundColor: const Color(0xff27AE60),
            child: const Icon(Icons.location_on),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomBar(),
    );
  }
}
