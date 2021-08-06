import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Theme.of(context).backgroundColor,

      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
                'Home',
              style: TextStyle(
                fontSize: 35,
                fontFamily: 'Satisfy',
                color: Theme.of(context).primaryColor,
              ),
            ),

            SizedBox(height: 20,),

            Image.asset(
              'lib/assets/images/linkedin.png',
              width: 100,
              fit: BoxFit.cover,
            ),

          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(
            Icons.arrow_forward_ios,
          color: Theme.of(context).accentColor,
        ),
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {Get.toNamed('/Settings');},
      ),

    );

  }
}
