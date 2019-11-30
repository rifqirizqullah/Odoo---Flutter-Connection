import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(30.0)),
                color: Colors.lightBlue,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    child: Text('Welcome', style: TextStyle(
                      fontSize: 48.0,
                      color: Colors.white,
                    ),),
                    margin: EdgeInsets.only(top: 100.0, left: 30.0),
                    alignment: Alignment.bottomLeft,
                  ),
                  SizedBox(height: 5.0,),
                  Container(
                    margin: EdgeInsets.only(left: 30.0),
                    alignment: Alignment.bottomLeft,
                    child: Text ('Check in at : ', style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.menu,
                      semanticLabel: 'menu',
                    ),
                    onPressed: () {
                      print('Menu button');
                    },
                  ),
                  SizedBox (
                    height: 20.0,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              width: double.infinity,
              height: 120.0,
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 20.0, left: 30.0),
                    alignment: Alignment.topCenter,
                    width: 120.0,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.0, left: 20.0),
                    width: 180.0,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 260.0,
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 50.0, left: 30.0),
                    width: 250.0,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
