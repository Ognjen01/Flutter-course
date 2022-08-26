import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListViews',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('ListViews')),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }

  Widget _myListView(BuildContext context) {
    final europeanCountries = ['Albania', 'Andorra', 'Armenia', 'Austria',
      'Azerbaijan', 'Belarus', 'Belgium', 'Bosnia and Herzegovina', 'Bulgaria',
      'Croatia', 'Cyprus'];

    return ListView.builder(
      itemCount: europeanCountries.length,
      itemBuilder: (context, index) {
        return ListTile(
          tileColor: Colors.red,
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('assets/sun.png'),
          ),
          title: Text(europeanCountries[index]),
          onTap:(){
            print("tap");
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute(drzava: europeanCountries[index],)),
            );
          },
        );
      },
    );
  }
}