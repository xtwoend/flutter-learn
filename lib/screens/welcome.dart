import 'package:flutter/material.dart';
import 'login.dart';
import '../class/slide_animate.dart' as Animate;
import '../class/app_language.dart';

class WelcomePage extends StatefulWidget {
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF010715),
        body: SafeArea(
            child: Container(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                    Image(
                    image: AssetImage('assets/background.png'),
                    ),

                    Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                        Text(
                            'Image',
                            style: TextStyle(
                                color: Colors.purple[600],
                                fontWeight: FontWeight.bold,
                                fontSize: 28.0,
                                fontFamily: 'IndieFlower'),
                        ),
                        Text(
                            'Discover',
                            style: TextStyle(
                                color: Colors.red[600],
                                fontWeight: FontWeight.bold,
                                fontSize: 28.0,
                                fontFamily: 'IndieFlower'),
                        )
                    ]),

                    Container(
                        padding: EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Center(
                            child: Text(
                        'Lorem ipsum dolor sit amet',
                        style: TextStyle(color: Color(0xFFC4CFD7), fontSize: 16.0),
                        ))),

                    Expanded(
                        child: Align(
                            alignment: FractionalOffset.bottomCenter,
                            child: Padding(
                                padding: EdgeInsets.all(15.0),
                                child: ButtonTheme(
                                    minWidth: double.infinity,
                                    height: 45.0,
                                    child: new RaisedButton(
                                        elevation: 5.0,
                                        color: Colors.green[400],
                                        child: Text(
                                            AppLocalizations.of(context).trans('go_text'),
                                            style: TextStyle(color: Colors.white, fontSize: 16.0)
                                        ),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(32.0),
                                        ),
                                        onPressed: (){
                                            Navigator.push(
                                                context,
                                                Animate.SlideRoute(widget: LoginPage(), slide: 'left'),
                                            );
                                        }
                                    ),
                                ),
                            ),
                        ),
                    ),

             ],
        ))));
  }
}
