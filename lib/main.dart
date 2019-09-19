import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Perso Doc'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Mywidget> mywidgets = [
    new Mywidget('Animated Icon', Colors.pink),
    new Mywidget('Animated List', Colors.blue),
  ];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: mywidgets.length,

        itemBuilder: (ctx, i) {
          return Container(
            
            margin: EdgeInsets.all(3.5),
            child: new Card(
              color: mywidgets[i].couleur,
              elevation: 4.0,
              child: new InkWell(
                onTap: _launchURL ,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(mywidgets[i].titre, style: TextStyle(fontSize: 20)),
                    Icon(Icons.link, size: 30,)
                  ],
                ),
              ),
            ),
          );
        }
      ),
      
    );
  }

_launchURL() async {
  const url = "https://google.com";
  if (await canLaunch(url)) {
    await launch(url, forceWebView: true); //forceWebView
  } else {
    throw 'Could not launch $url';
  }
}

}

class Mywidget {
  String titre;
  Color couleur;

  Mywidget(this.titre, this.couleur);
}
