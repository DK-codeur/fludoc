import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated wid',
      theme: ThemeData(
        
        primarySwatch: Colors.indigo,
      ),
      home: MyHomePage(title: 'Animated wid'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  Animation animation;
  AnimationController animationController;
  bool valid = false;

  @override
  void initState() {
    animationController = new AnimationController(vsync: this, duration: Duration(seconds: 1));
    animation = Tween<double> (begin: 0, end: 1).animate( animationController );
    super.initState();
  }
 
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: (){
                if (valid ==false) 
                  animationController.forward();
                else
                  animationController.reverse();
                  valid = !valid;
              },

              child: AnimatedIcon(
                progress: animationController,
                icon: AnimatedIcons.menu_close
              ),
            ),

            InkWell(
              onTap: (){
                if (valid ==false) 
                  animationController.forward();
                else
                  animationController.reverse();
                  valid = !valid;
              },

              child: AnimatedIcon(
                progress: animationController,
                icon: AnimatedIcons.menu_close
              ),
            ),
          ],
        )
      ),
    );
  }
}
