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
            const CircleAvatar(
              radius: 110,
              child: CircleAvatar(
                radius: 108,
                backgroundImage:
                    AssetImage("Assets/Images/received_4891786670929918.jpeg"),
              ),
            ),
            const Text(
              "Ali Kasrawy",
              style: TextStyle(
                fontSize: 32,
                fontFamily: 'Pacifico',
              ),
            ),
            const Text(
              "Flutter Developer",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            const Divider(
              endIndent: 60,
              indent: 60,
              thickness: 1,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(
                    16,
                  ),
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Icon(
                        Icons.phone,
                        size: 38,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: Text(
                        "+(20) 106 2683 831",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
