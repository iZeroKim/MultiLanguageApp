import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return GetMaterialApp(
      title: 'Flutter Languages',
      locale: Locale('en', 'US'),
      translations: TranslationsClass extends Translations(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Language App'),
    );
  }
}

class TranslationsClass extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    //ENGLISH LANGUAGE
    'en_US':{
      'hello':'Hello World',
      'message':'Welcome to My Car App',
      'title':'Flutter Language - Localization',
      'sub':'Subscribe Now',
      'changelang':'Change Language'
    },
    //KISWAHILI LANGUAGE
    'sw_KE':{
      'hello':'Mambo Ulimwegu',
      'message':'Karibu My Car App',
      'title':'Lugha ya Flutter - Ujanibishaji',
      'sub':'Jiandikishe Sasa',
      'changelang':'Changua Lugha'
    },
  };
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
