import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: new Text("Account"),
        elevation: 0.0,
        backgroundColor: Colors.black54,
      ),
      body:
        new ListView(
          children: <Widget>[
            new Container(
              color: Colors.black54,
              height: 300.0,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: CircleAvatar(
                        backgroundImage: ExactAssetImage("images/accpic.jpeg"),
                        minRadius: 100,
                        maxRadius: 100,
                      ),
                    )
                  ),
                  Center(child: Text("Kawaljeet Singh",style: new TextStyle(color: Colors.white,fontSize: 35.0,fontWeight: FontWeight.w500),))
                ],

              ),



            ),
            SizedBox(height: 20.0,),
            new Container(
              height: 450.0,

              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.layers),
                    title: Text("Your Orders"),
                    trailing: Icon(Icons.arrow_right),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.help),
                    title: Text("Help Center"),
                    trailing: Icon(Icons.arrow_right),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.description),
                    title: Text("Profile Details"),
                    trailing: Icon(Icons.arrow_right),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.location_on),
                    title: Text("Address"),
                    trailing: Icon(Icons.arrow_right),
                  ),
                  Divider(),
                  
                ],
              ),
            )

          ],
        )
    );
  }
}
