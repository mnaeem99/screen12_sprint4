import 'package:flutter/material.dart';

List foreground = [Foreground1(), Foreground2()];
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Screen12(),
    );
  }
}

class Screen12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.chevron_left),
              ),
              ListTile(
                title: Text(
                  'Your guidebooks',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 26),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Text.rich(
                  TextSpan(
                    text:
                        "Guidebooks are an easy way to share recommendations with guests. Take a few minutes to create one, it's a great way to win over travellers - hosts with guidebooks tend to get more bookings. ",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Read our content policy',
                        style: TextStyle(
                          color: Colors.black38,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 350,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(10.0),
                      width: 250,
                      height: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        gradient: LinearGradient(
                          colors: [Color(0xFF398287), Color(0xFF2A6578)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                      child: foreground[index],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Foreground1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
          child: Container(
            width: 60,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.white,
            ),
            child: Icon(Icons.settings),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
          child: Column(
            children: [
              Text(
                "Shehryar's Guidebook",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Shehryar',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class Foreground2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
          child: Container(
            width: 100,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(
                color: Colors.white,
              ),
            ),
            child: TextButton(
              child: Text(
                'Create',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
