import 'package:flutter/material.dart';
import 'package:new_sqflite/sqflit.dart';
void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyAppState();
}

class _MyAppState extends State<Home> {
  Sqldb sqlDb = Sqldb();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('Homepage', style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () async {
                  int respons = await sqlDb.insertData(
                    "INSERT INTO 'notes'(note)VALUES('note one')",
                  );
                  print(respons);
                },
                child: Text('Insert Data'),
              ),
            ),
            Center(
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () async {
                  List<Map> response = await sqlDb.readData(
                    "SELECT*FROM 'notes'",
                  );
                  print("$response");
                },
                child: Text('Read Data'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}