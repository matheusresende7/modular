import 'package:flutter/material.dart';
import 'package:modular/src/modules/settings/controllers/settings_controller.dart';

class Settings extends StatelessWidget {

  final controller = SettingsController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Theme.of(context).backgroundColor,

      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),

      body: Center(
        child: Text(
            'Settings',
          style: TextStyle(
            fontSize: 35,
            fontFamily: 'Satisfy',
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          FloatingActionButton(
            child: Icon(
              Icons.wb_sunny,
              color: Theme.of(context).accentColor,
            ),
            heroTag: 'btn1',
            backgroundColor: Theme.of(context).primaryColor,
            onPressed: () {controller.changeDefaultTheme();},
          ),

          SizedBox(width: 10,),

          FloatingActionButton(
            child: Icon(
              Icons.nights_stay,
              color: Theme.of(context).accentColor,
            ),
            heroTag: 'btn2',
            backgroundColor: Theme.of(context).primaryColor,
            onPressed: () {controller.changeDarkTheme();},
          ),

        ],
      ),

    );

  }
}
