import 'package:flutter/material.dart';
import 'package:insurego/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';



class StockAnalysis extends StatelessWidget {

  _launchURLBrowser() async {
    const url = 'https://techanalysis-u4aqr322gq-et.a.run.app/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          title: Text('Stock Analysis',
    style: TextStyle(
    fontFamily: 'Source Sans Pro',
    color: Colors.teal,
    fontSize: 20.0,
    letterSpacing: 2.5,
    fontWeight: FontWeight.bold,

      ),
      )
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ignore: deprecated_member_use
            RaisedButton(
              color: Colors.teal,
              onPressed: _launchURLBrowser,
              child: Text('Press to View',style: TextStyle(color: Colors.blue),),
            ),
            SizedBox(height: 8,),
            // ignore: deprecated_member_use

          ],
        ),
      ),
    );
  }
}
