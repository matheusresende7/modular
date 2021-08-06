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

      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.nights_stay,
          color: Theme.of(context).accentColor,
        ),
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {controller.ativarDarkMode();},
      ),

    );

  }
}
