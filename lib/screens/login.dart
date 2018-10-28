import 'package:flutter/material.dart';
import './modal_country.dart';
import '../class/app_language.dart';
// import '../class/slide_animate.dart' as Animate;

class LoginPage extends StatefulWidget {
    static String tag = 'login-page';
    _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    _LoginPageState();

    @override
    Widget build(BuildContext context) {

        return Scaffold(
                backgroundColor: Color(0xFF010715),
                appBar: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0.0,
                    actions: <Widget>[
                        new IconButton(
                            icon: Icon(Icons.more_vert),
                            onPressed: () {},
                        ),
                    ],
                ),
                // backgroundColor: Colors.white,
                body: Container(
                    child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[

                                Padding(
                                    padding: const EdgeInsets.only(bottom: 15.0),
                                    child: Text(
                                        AppLocalizations.of(context).trans('phone_input'),
                                        style: TextStyle(color: Color(0xFFC4CFD7), fontSize: 16.0),
                                    ),
                                ),

                                Container(
                                    padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                                    height: 60.0,
                                    decoration: new BoxDecoration(
                                        color: Color(0x1698A4B2),
                                        borderRadius: new BorderRadius.circular(4.0)
                                    ),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        children: <Widget>[
                                            new FlagChoice(
                                                flag: 'assets/flag/id.png',
                                                phonecode: '+62',
                                            ),
                                            Expanded(
                                                flex: 2,
                                                child: new TextField(
                                                    autofocus: false,
                                                    autocorrect: false,
                                                    keyboardType: TextInputType.phone,
                                                    style: TextStyle(color: Color(0xFFC4CFD7), fontSize: 22.0),
                                                    decoration: InputDecoration(
                                                        border: InputBorder.none,
                                                        hintText: 'Phone number',
                                                        hintStyle: TextStyle(color: Colors.white24),
                                                    )
                                                ),
                                            ),
                                        ]
                                    ),
                                ),

                                Expanded(
                                    child: Align(
                                        alignment: FractionalOffset.bottomCenter,
                                        child: ButtonTheme(
                                            minWidth: double.infinity,
                                            height: 45.0,
                                            child: new RaisedButton(
                                                elevation: 5.0,
                                                color: Colors.green[400],
                                                child: Text(
                                                    AppLocalizations.of(context).trans('next'),
                                                    style: TextStyle(color: Colors.white, fontSize: 16.0)
                                                ),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(32.0),
                                                ),
                                                onPressed: (){
                                                    // Navigator.push(
                                                    //     context,
                                                    //     Animate.SlideRoute(widget: LoginPage(), slide: 'left'),
                                                    // );
                                                }
                                            ),
                                        ),
                                    )
                                )

                            ]),
                        )
                ));
    }
}


class Country {
    final String flag;
    final String phonecode;
    final String country;
    Country(
        this.flag,
        this.phonecode,
        this.country
    );
}

class FlagChoice extends StatelessWidget {

    FlagChoice({
        this.flag,
        this.phonecode
    });

    final flag;
    final phonecode;

    final ModalCountry modal = new ModalCountry();

    @override
    Widget build(BuildContext context) {
        return GestureDetector(
            onTap: () {
                modal.mainBottomSheet(context);
            },
            child:Row(
                children: <Widget>[
                    new Image.asset(flag, height: 24.0,),
                    Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                        child: new Text(phonecode, style: TextStyle(color: Color(0xFFC4CFD7), fontSize: 22.0),),
                    )
                ]
            )
        );
    }
}
