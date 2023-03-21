import 'package:flutter/material.dart';
import 'package:flutterbasic/Intropage.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      home: Intropage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    var arrNames = ['Sakshi', 'saniya','Ankita','prachi','sharvari','Arya','vaishnavi'];
    return Scaffold(
      appBar: AppBar(

        title: Text('Name list'),
      ),
      body: Container(
        child: ListView.separated(itemBuilder: (context,index){
          return ListTile(
          leading: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/girl.png'),
            backgroundColor: Colors.lightGreen,
          ),
          title: Text(arrNames[index]),
          subtitle: const Text('Number'),
          trailing: const Icon(Icons.check_box),
          );
    },
    itemCount: arrNames.length,
    separatorBuilder: (context,index){
          return const Divider(height: 50, thickness: 1,);
    },
    ),
      )

    );
  }
}
