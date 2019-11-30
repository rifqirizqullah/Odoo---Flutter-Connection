import 'package:flutter/material.dart';
import 'package:odoo_api/odoo_api.dart';

var client = new OdooClient("http://35.240.181.0:8069");

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String email;
  String password;
  String database;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Container(child:
              getIconAsset(),),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Log In',
                style: TextStyle(
                  fontSize: 32.0,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Database',
                ),
                onChanged: (value) {
                  this.database = value;
                },

              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'E-mail',
                    hintText: 'example@site.com'
                ),
                onChanged: (value){
                  this.email = value;
                },
            
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Password',
                ),
                onChanged: (value) {
                  this.password = value;
                },

              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 20.0, right: 10.0),
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: RaisedButton(
                      color: Colors.blue,
                      disabledColor: Colors.transparent,
                      onPressed: (){
                        client.authenticate(email, password, database).then((auth) {
                          if(auth.isSuccess) {
                            final user = auth.getUser();
                            print("Hello ${user.name}");
                            Navigator.pop(context);
                          } else {
                            print("Login Gagal");
                          }
                        });

                      },
                      child: Text('Log In',style: TextStyle(
                        color: Colors.white,
                      ),),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 50.0,
                    margin: EdgeInsets.only(left: 10.0, right: 20.0),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: RaisedButton(
                      disabledColor: Colors.transparent,
                      onPressed: () {
                      },
                      child: Text('Forgot Password?', style: TextStyle(
                        color: Colors.blue,
                      ),),
                    ),
                  ),
                ),
              ],
            )


          ],
        ),
      ),
    );
  }
}

Widget getIconAsset () {
  AssetImage assetImage = AssetImage('assets/jicon.png');
  Image image = Image(image: assetImage,width: 150.0, height: 150.0,);
  return Container(child: image,);
}