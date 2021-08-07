import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modular/src/modules/home/controllers/home_controller.dart';
import 'package:modular/src/modules/settings/controllers/settings_controller.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (_) {

          return GetBuilder<SettingsController>(
              init: SettingsController(),
              builder: (_) {

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
                        onPressed: () {_.changeDefaultTheme();},
                      ),

                      SizedBox(width: 10,),

                      FloatingActionButton(
                        child: Icon(
                          Icons.nights_stay,
                          color: Theme.of(context).accentColor,
                        ),
                        heroTag: 'btn2',
                        backgroundColor: Theme.of(context).primaryColor,
                        onPressed: () {_.changeDarkTheme();},
                      ),

                    ],
                  ),

                );

              }
          );

        }
    );

  }
}
