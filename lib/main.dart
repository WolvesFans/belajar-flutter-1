import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: HatoriCard(),
  ));
}

class HatoriCard extends StatefulWidget {
  const HatoriCard({super.key});

  @override
  State<HatoriCard> createState() => _HatoriCardState();
}

class _HatoriCardState extends State<HatoriCard> {
  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Hatori ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            level += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/thumb.jpg'),
                radius: 60.0,
              ),
            ),
            Divider(height: 50.0),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 18,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Ninja',
              style: TextStyle(
                color: Colors.amber[400],
                fontSize: 30.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'Current level',
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 18,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$level',
              style: TextStyle(
                color: Colors.amber[400],
                fontSize: 30.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  'ninja@hatorimail.co.id',
                  style: TextStyle(
                      color: Colors.amber[400],
                      letterSpacing: 1.0,
                      fontSize: 20.0),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
