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
      home: const Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
            SizedBox(
              height: 16,
            ),
            CustomCard(
              text: "+(20) 106 2683 831",
              icon: Icons.phone,
              color: Colors.red,
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Card(
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 38,
                    color: Colors.blueGrey,
                  ),
                  title: Text(
                    "+(20) 111 0644 375",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            CustomCard(
              text: "kasrawyali47@gmail.com",
              icon: Icons.email,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.text,
    required this.icon,
    required this.color,
  });
  final String text;
  final IconData icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(
            16,
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Icon(
                icon,
                size: 38,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
