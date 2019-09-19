import 'package:flutter/material.dart';


class AnimIcon extends StatefulWidget {
  static const routName = '/anim-icon';
  AnimIcon({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _AnimIconState createState() => _AnimIconState();
}

class _AnimIconState extends State<AnimIcon> with SingleTickerProviderStateMixin {

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



// _launchURL(String url) async {
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }