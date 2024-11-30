import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            CircleAvatar(
              radius: 110,
              child: CircleAvatar(
                radius: 108,
                backgroundImage:
                    AssetImage("Assets/Images/received_4891786670929918.jpeg"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
