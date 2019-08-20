import 'package:flutter/material.dart';

import 'data.dart';
import 'itemDetails.dart';

class TC extends StatefulWidget {
  @override
  _TCState createState() => _TCState();
}

class _TCState extends State<TC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: new IconThemeData(color:Colors.black54),
        title: Text("Jeans and Jeggins"),
      ),
      body: new Column(
        children: <Widget>[
          new Divider(
            height: 30.0,
            color: Colors.black54,
          ),
          new Text("Searched Products",style: new TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.w300)),
          new Divider(
            height: 30.0,
            color: Colors.black54,
          ),
          new Flexible(

            child: new GridView.builder(
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemCount: StoreWomenTC.length,
              itemBuilder: (BuildContext context, int index) {

                return GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context)=>new ItemDetails(
                          itemImage: StoreWomenTC[index].itemImage,
                          itemName: StoreWomenTC[index].itemName,
                          itemPrice: StoreWomenTC[index].itemPrice,

                        )));
                  },
                  child: new Card(
                    child:Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: new Stack(
                        alignment:FractionalOffset.bottomCenter,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0,bottom: 10.0),
                            child: Container(
                              child: Image.asset(
                                StoreWomenTC[index].itemImage,
                              ),

                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top:8.0),
                            child: Container(
                              height: 20.0,
                              color: Colors.black,

                              child: new Row(

                                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                children: <Widget>[


                                  new Text("${StoreWomenTC[index].itemName.substring(0,5)}. . . . .",
                                    style: new TextStyle(fontSize: 16.0,
                                        color: Colors.white),),
                                  new Text("Rs.${StoreWomenTC[index].itemPrice}",
                                    style: new TextStyle(fontSize: 16.0,color: Colors.white),)
                                ],
                              ),
                            ),
                          ),
                        ],


                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

