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
      translations: TranslationsClass(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class TranslationsClass extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    //ENGLISH LANGUAGE
    'en_US':{
      'hello':'Hello World',
      'message':'Welcome to My Car App',
      'title':'Flutter Language - Localization',
      'subscribe':'Subscribe Now',
      'changelang':'Change Language'
    },
    //KISWAHILI LANGUAGE
    'sw_KE':{
      'hello':'Mambo Ulimwegu',
      'message':'Karibu My Car App',
      'title':'Lugha ya Flutter - Ujanibishaji',
      'subscribe':'Jiandikishe Sasa',
      'changelang':'Changua Lugha'
    },
  };
}

class HomePage extends StatelessWidget {
  final List languages = [
    {'name':'ENGLISH', 'locale': Locale('en', 'US')},
    {'name':'KISWAHILI', 'locale': Locale('sw', 'KE')},
  ];

  updateLanguage(Locale locale){
    Get.back();
    Get.updateLocale(locale);
  }

  buildLanguageDialog(BuildContext context){
    showDialog(context: context,
        builder: (builder){
          return AlertDialog(
            title: Text('Choose Your Language'),
            content: Container(
              width: double.maxFinite,
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(child: Text(languages[index]['name']),onTap: (){
                        print(languages[index]['name']);
                        updateLanguage(languages[index]['locale']);
                      },),
                    );
                  }, separatorBuilder: (context,index){
                return Divider(
                  color: Colors.blue,
                );
              }, itemCount: languages.length
              ),
            ),
          );
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('title'.tr),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('hello'.tr,style: TextStyle(fontSize: 15),),
            SizedBox(height: 10,),
            Text('message'.tr,style: TextStyle(fontSize: 20),),
            SizedBox(height: 10,),
            Text('subscribe'.tr,style: TextStyle(fontSize: 20),),

            ElevatedButton(onPressed: (){
              buildLanguageDialog(context);
            }, child: Text('changelang'.tr)),
          ],
        )
    );
  }
}


