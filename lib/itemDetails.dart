import 'package:flutter/material.dart';

class ItemDetails extends StatefulWidget {
  String itemName;
  String itemImage;
  String itemPrice;
  ItemDetails({this.itemName,this.itemImage,this.itemPrice});
  @override
  _ItemDetailsState createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    Size ScreenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: new Text("Items Details"),
        backgroundColor: Colors.transparent,
        iconTheme: new IconThemeData(color:Colors.black54),
        centerTitle: false,
      ),
      body: new Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          new Container(
            height: 300.0,
            decoration: new BoxDecoration(
              image: new DecorationImage(image: new AssetImage(widget.itemImage),fit: BoxFit.fitHeight),
              borderRadius: new BorderRadius.only(
                bottomLeft: new Radius.circular(120),
                bottomRight: new Radius.circular(120)
              )
            ),
            ),
          new Container(
            height: 300.0,
            decoration: new BoxDecoration(
                color: Colors.grey.withAlpha(50),
                borderRadius: new BorderRadius.only(
                    bottomLeft: new Radius.circular(120),
                    bottomRight: new Radius.circular(120)
                )
            ),
          ),
          new SingleChildScrollView(
            child: new Column(
              children: <Widget>[
                SizedBox(height: 300.0),
                new Card(
                  child: new Container(
                    width: ScreenSize.width,
                    height: 80.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text(widget.itemName,style: new TextStyle(fontSize: 25.0,fontWeight: FontWeight.w400,color: Colors.black38),),
                          new Text("Rs. ${widget.itemPrice}",style: new TextStyle(fontSize: 25.0,fontWeight: FontWeight.w400),)
                        ],
                      ),
                    ),

                  ),
                ),
                new Card(
                  child: new Container(
                    width: ScreenSize.width,
                    height: 300.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Text("Hurry, Only few left!",style: new TextStyle(color: Colors.red,
                            fontWeight: FontWeight.w400,


                          ),),
                          SizedBox(height: 20.0,),

                          Row(
                            children: <Widget>[
                              Icon(Icons.local_offer,color: Colors.green,size: 20.0,),
                              new Text("5 % Unlimited Cashback on Axis Bank Credict Card",style: new TextStyle(fontSize: 13.0),),
                              SizedBox(width: 20.0,),

                              Icon(Icons.arrow_forward_ios,size: 15.0,)

                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(Icons.local_offer,color: Colors.green,size: 20.0,),
                              new Text("5 % Cashback on HDFC Bank Credict Card",style: new TextStyle(fontSize: 13.0),),
                              SizedBox(width: 70.0,),

                              Icon(Icons.arrow_forward_ios,size: 15.0,)
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(Icons.local_offer,color: Colors.green,size: 20.0,),
                              new Text("5 % off with Axis Bank Buzz Credit Card",style: new TextStyle(fontSize: 13.0),),
                              SizedBox(width: 85.0,),

                              Icon(Icons.arrow_forward_ios,size: 15.0,)
                            ],
                          ),
                          SizedBox(height: 20.0,),
                          new Divider(
                            height: 0.0,
                            color: Colors.black,
                          ),

                          FlatButton(
                            onPressed: (){},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.share),
                                new Text("Share")
                              ],
                            ),
                          ),
                          new Divider(
                            height: 0.0,
                            color: Colors.black,
                          ),

                        ],
                      ),
                    ),

                  ),
                )




              ],
            ),
          )
          
      ]
          ),
      floatingActionButton: FloatingActionButton(
          onPressed:(){},

      child: Icon(Icons.shopping_cart),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        
        // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.favorite,color: Colors.blue,),
            title: new Text('Add to Favorites',style: new TextStyle(color: Colors.blue),),

          ),
          BottomNavigationBarItem(

            icon: new Icon(Icons.shopping_basket,color: Colors.blue,),
            title: new Text('Buy Now',style: new TextStyle(color: Colors.blue),),
          ),

        ],
      ),


      );

    
  }
}
