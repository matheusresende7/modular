import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text('Home'),),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
                'Home',
              style: TextStyle(
                fontSize: 35,
                fontFamily: 'Satisfy',
              )
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
        child: Icon(Icons.arrow_forward_ios),
        onPressed: () {Get.toNamed('/Settings');},
      ),

    );

  }
}
