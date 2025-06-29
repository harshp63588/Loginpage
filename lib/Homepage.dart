import 'package:flutter/material.dart';

class HomeRoute extends StatefulWidget {
  const HomeRoute({super.key});

  @override
  State<HomeRoute> createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        centerTitle: true,
      ),  
      body: Column( 
        children: [
          const Padding(padding: EdgeInsets.all(10)),
          const Center(
            child: Text(
              "Welcome to the Flutter",
              style: TextStyle(fontSize: 30),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child:Container(
                width: 150,
                height: 50,
                child:const Center(
                    child: Text(
                  "Back",
                  style: TextStyle(fontSize: 30),
                )),
              )),
        ],
      ),
    );
  }
}
