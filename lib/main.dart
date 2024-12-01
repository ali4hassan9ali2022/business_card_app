import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            CircleAvatar(
              radius: 110,
              child: CircleAvatar(
                radius: 108,
                backgroundImage:
                    AssetImage("Assets/Images/received_4891786670929918.jpeg"),
              ),
            ),
            Text(
              "Ali Kasrawy",
              style: TextStyle(
                fontSize: 32,
                fontFamily: 'Pacifico',
              ),
            ),
            Text(
              "Flutter Developer",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            Divider(
              endIndent: 60,
              indent: 60,
              thickness: 1,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
