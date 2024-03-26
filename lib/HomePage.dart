import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("ClipRRect Widget Example"),
        titleTextStyle: TextStyle(color: Colors.white),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.cyan
          ),
          child:FittedBox(
              child:  ClipRRect(// used for image shape change
                borderRadius: BorderRadius.circular(80),
                  //borderRadius: BorderRadius.all(Radius.elliptical(0, 100)),
                  child: Image.asset("assets/images/na.jpg")
              )
          ),
        ),
      ),
    );
  }
}
