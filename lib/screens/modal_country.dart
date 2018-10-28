import 'package:flutter/material.dart';

class ModalCountry {
    mainBottomSheet(BuildContext context, ){
        showModalBottomSheet(
            context: context,
            builder: (BuildContext context){
                return Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                        _createTile(context, 'Indonesia', Icons.flag, _action1),
                        _createTile(context, 'Singapura', Icons.gps_fixed, _action2),
                ],);
            }
        );
    }

    ListTile _createTile(BuildContext context, String name, IconData icon, Function action){
        return ListTile(
            leading: Icon(icon),
            title: Text(name),
            onTap: () {
                Navigator.pop(context);
                action();
            },
        );
    }

    _action1() {
        print('Action 1 tab');
    }

    _action2() {
        print('Action 2 tab');
    }
}
