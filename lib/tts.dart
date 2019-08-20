import 'package:flutter/material.dart';
import 'data.dart';
import 'itemDetails.dart';

/*class TTS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  }
}*/class TTS extends StatefulWidget {
  @override
  _TTSState createState() => _TTSState();
}

class _TTSState extends State<TTS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: new IconThemeData(color: Colors.black54),
          title: Text("Tees, T-Shirts & Shirts"),
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
                      itemCount: StoreWomenTTS.length,
                      itemBuilder: (BuildContext context, int index) {

                       return GestureDetector(
                         onTap: (){
                           Navigator.of(context).push(new MaterialPageRoute(
                               builder: (context)=>new ItemDetails(
                                 itemImage: StoreWomenTTS[index].itemImage,
                                 itemName: StoreWomenTTS[index].itemName,
                                 itemPrice: StoreWomenTTS[index].itemPrice,

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
                                        StoreWomenTTS[index].itemImage,
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


                                        new Text("${StoreWomenTTS[index].itemName.substring(0,5)}. . . . .",
                                          style: new TextStyle(fontSize: 16.0,
                                              color: Colors.white),),
                                        new Text("Rs.${StoreWomenTTS[index].itemPrice}",
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



  }}