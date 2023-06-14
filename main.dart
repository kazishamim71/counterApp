import 'package:flutter/material.dart';

void main()=>runApp(CounterApp());

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});



  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count=0;

  void incrementCounter(){
    count++;
    setState(() {

    });
  }
  void decrementCounter(){
    if(count>0){
      count--;
    }

    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App', style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold
        ),),
        elevation: 4,
      ),
      body: Center(
        child: Text(count.toString()),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,

        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton.extended (
              onPressed: (){
               // incrementCounter();
                count++;
                setState(() {

                });

              }, label: Text('Increase'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton.extended(
              onPressed: (){
                decrementCounter();
              }, label: Text('Decrease'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              onPressed: (){
                count=0;
                setState(() {

                });
              }, child: Icon(Icons.clear),
            ),
          ),
        ],
      ),



    );
  }
}


