import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("fffffff"),
        ),
        body: Checkbox(
            value: true,
            onChanged: (val) {
              print(val);
            }
        ),
      ),
    );
  }
}

//메소드 사용
class Person extends StatelessWidget {
  final String firstName;
  final String lastName;
  Person({required this.firstName, required this.lastName}) {}
  Widget build(BuildContext context){
    return Container(
      child: Text( '$firstName $lastName'),


    ) ;
  }
}

//이미지
class ImageWinter extends StatelessWidget {

  Widget build(BuildContext context) {
    return Image.asset('assets/images/2.png', fit: BoxFit.contain,);
  }
}

class TextFieldTest extends StatelessWidget {
  //TextEditingController _emailController = TextEditingController(text: "Initial value here");
  // String _searchTerm = 'Search Terms!';
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("my_app"),
        ),
        body: const TextField(
          // onChanged: (String val) => _searchTerm = val,
          // controller: _emailController,
          //  keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            labelText: "Email",
            hintText: 'kjennn@email.com',
            icon: Icon(Icons.contact_mail),
          ),
        ),
      ),
    );
  }
}


