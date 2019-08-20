import 'package:flutter/material.dart';
import 'package:shopping/ss.dart';
import 'account.dart';
import 'tts.dart';
import 'jj.dart';
import 'tc.dart';

void main() => runApp(home());

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: new Text("Ecommerce"),
        backgroundColor: Colors.black54,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),

        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            new DrawerHeader(
              decoration: new BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(5.0)),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10.0,
                  ),
                  new Text(
                    "You Looking For??",
                    style: new TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 22.0),
                    child: new Row(
                      children: <Widget>[
                        RaisedButton(
                          child: new Text(
                            "Man",
                            style: new TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 20.0),
                          ),
                          color: Colors.black87,
                          onPressed: () {},
                        ),
                        SizedBox(
                          width: 25.0,
                        ),
                        RaisedButton(
                          child: new Text(
                            "Women",
                            style: new TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 20.0),
                          ),
                          color: Colors.black87,
                          onPressed: () {},
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
           ExpansionTile(
              leading: new Tab(
                icon: new Image.asset(
                  "images/shirt.png",
                  width: 20.0,
                ),
              ),
              title: Text("Clothing"),

             children: <Widget>[
               ExpansionTile(

                 title: Center(child: Text("Women")),
                 children: <Widget>[
                   Padding(
                     padding: const EdgeInsets.only(left:120.0),
                     child: ListTile(
                       title: new Text("Tops, T-Shirts & Shirts"),
                       trailing: Icon(Icons.arrow_right),
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(
                             builder: (context)=>TTS()
                         ));
                       },
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left:120.0),
                     child: Center(
                       child: ListTile(
                         title: new Text("Jeans & Jeggins"),
                         trailing: Icon(Icons.arrow_right),
                         onTap: (){
                           Navigator.push(context, MaterialPageRoute(
                               builder: (context)=>JJ()
                           ));
                         },
                       ),
                     ),
                   ),
                   Padding(
                       padding: const EdgeInsets.only(left:120.0),
                     child: Center(
                       child: ListTile(
                         title: new Text("Trousers & Capris"),
                         trailing: Icon(Icons.arrow_right),
                         onTap: (){
                           Navigator.push(context, MaterialPageRoute(
                               builder: (context)=>TC()
                           ));
                         },
                       ),
                     ),
                   ),
                   Padding(
                          padding: const EdgeInsets.only(left:120.0),
                     child: Center(
                       child: ListTile(
                         title: new Text("Shorts & Skirts"),
                         trailing: Icon(Icons.arrow_right),
                         onTap: (){
                           Navigator.push(context, MaterialPageRoute(
                               builder: (context)=>SS()
                           ));
                         },
                       ),
                     ),
                   )
                 ],
               ),
               ExpansionTile(

                 title: Center(child: Text("Men")),
                 children: <Widget>[
                   Padding(
                     padding: const EdgeInsets.only(left:120.0),
                     child: ListTile(
                       title: new Text("T-Shirts"),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left:120.0),
                     child: ListTile(
                       title: new Text("Casual Shirts"),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left:120.0),
                     child: ListTile(
                       title: new Text("Formal Shirts"),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left:120.0),
                     child: ListTile(
                       title: new Text("Jeans"),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left:120.0),
                     child: ListTile(
                       title: new Text("Trousers"),
                     ),
                   ),
                 ],

               ),
               ExpansionTile(

                 title: Center(child: Text("Kids & Baby")),
                 children: <Widget>[
                   Padding(
                     padding: const EdgeInsets.only(left:120.0),
                     child: ListTile(
                       title: new Text("Rompers"),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left:120.0),
                     child: ListTile(
                       title: new Text("Top Wear"),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left:120.0),
                     child: ListTile(
                       title: new Text("Bottom Wear"),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left:120.0),
                     child: ListTile(
                       title: new Text("Clothing Sets"),
                     ),
                   ),
                 ],
               ),


             ],
            ),
            ExpansionTile(
              leading: new Tab(
                icon: new Image.asset(
                  "images/shoe.png",
                  width: 20.0,
                ),
              ),
              title: Text("Shoes"),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left:90.0),
                  child: ListTile(
                    title: Text("Sneakers"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:90.0),
                  child: ListTile(
                    title: Text("Casual Shoes"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:90.0),
                  child: ListTile(
                    title: Text("Sports Shoes"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:90.0),
                  child: ListTile(
                    title: Text("Formal Shoes"),
                  ),
                )
              ],
             
            ),
           ExpansionTile(
              leading: new Tab(
                icon: new Image.asset(
                  "images/sports.png",
                  width: 20.0,
                ),
              ),
              title: Text("Sports"),
             children: <Widget>[
               Padding(
                 padding: const EdgeInsets.only(left:90.0),
                 child: ListTile(
                   title: Text("Jersey"),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(left:90.0),
                 child: ListTile(
                   title: Text("Jackets"),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(left:90.0),
                 child: ListTile(
                   title: Text("Shorts"),

                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(left:90.0),
                 child: ListTile(
                   title: Text("Track Pants"),
                 ),
               )
             ],

            ),
            ExpansionTile(
              leading: new Tab(
                icon: new Image.asset(
                  "images/bags.png",
                  width: 20.0,
                ),
              ),
              title: Text("Bags and Accessories"),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left:90.0),
                  child: ListTile(
                    title: Text("Handbags & Clutches"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:90.0),
                  child: ListTile(
                    title: Text("Watches"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:90.0),
                  child: ListTile(
                    title: Text("Fashion Jewellery"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:90.0),
                  child: ListTile(
                    title: Text("Eyewear"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:90.0),
                  child: ListTile(
                    title: Text("Precious Jewellery"),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                color: Colors.black45,
                height: 25.0,
              ),
            ),
            ListTile(
              leading: new Tab(
                icon: new Image.asset(
                  "images/account.png",
                  width: 20.0,
                ),
              ),
              title: Text("Account"),
              trailing: Icon(Icons.arrow_right),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>Account()));
              },
            ),
            ListTile(
              leading: new Tab(
                icon: new Image.asset(
                  "images/setting.png",
                  width: 20.0,
                ),
              ),
              title: Text("Settings"),
            ),
          ],
        ),
      ),
      body:

      Padding(
        padding: const EdgeInsets.only( bottom: 10.0),
        child: new ListView(
          children: <Widget>[
            Image.asset("images/first.jpg"),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Search items, Brands and More",
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 140.0, right: 140.0),
              child: new Divider(
                height: 10.0,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Center(
                child: new Text(
              "OUR POPULAR PRODUCTS",
              style: new TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w400),
            )),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 140.0, right: 140.0),
              child: new Divider(
                height: 10.0,
                color: Colors.black54,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: new Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Image.asset("images/shirt.jpg",fit: BoxFit.contain,height: 200.0,width: 160.0,),
                      SizedBox(height: 15.0,),
                      new Text("Roadstar",style: new TextStyle(color: Colors.black38,fontWeight: FontWeight.w400),),
                      new Text("Rs.600")
                    ],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    children: <Widget>[
                      Image.asset("images/shirt1.jpg",fit: BoxFit.contain,height: 200.0,),
                      SizedBox(height: 15.0,),
                      new Text("Langbeeyar",style: new TextStyle(color: Colors.black38,fontWeight: FontWeight.w400),),
                      new Text("Rs.1600")

                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: new Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Image.asset("images/tees.jpg",fit: BoxFit.contain,height: 200.0,width: 200.0,),
                      SizedBox(height: 15.0,),
                      new Text("Campus Sutra",style: new TextStyle(color: Colors.black38,fontWeight: FontWeight.w400),),
                      new Text("Rs.800")
                    ],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    children: <Widget>[
                      Image.asset("images/tees1.jpg",fit: BoxFit.contain,height: 200.0,),
                      SizedBox(height: 15.0,),
                      new Text("plusS",style: new TextStyle(color: Colors.black38,fontWeight: FontWeight.w400),),
                      new Text("Rs.1300")

                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 140.0, right: 140.0),
              child: new Divider(
                height: 10.0,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),


            Center(

                child: new Text(
                  "Discounts for you",
                  style: new TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400),
                )),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 140.0, right: 140.0),
              child: new Divider(
                height: 10.0,
                color: Colors.black54,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: new Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Image.asset("images/shoes.jpg",fit: BoxFit.contain,height: 200.0,width: 180.0,),
                      SizedBox(height: 15.0,),
                      new Text("Casual Shoes",style: new TextStyle(color: Colors.black38,fontWeight: FontWeight.w400),),
                      new Text("Upto 60% off")
                    ],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    children: <Widget>[
                      Image.asset("images/sports.jpg",fit: BoxFit.contain,height: 180.0,),
                      SizedBox(height: 15.0,),
                      new Text("Sports wear",style: new TextStyle(color: Colors.black38,fontWeight: FontWeight.w400),),
                      new Text("Upto 50% off")

                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: new Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Image.asset("images/bags.jpg",fit: BoxFit.contain,height: 200.0,width: 200.0,),

                      SizedBox(height: 15.0,),
                      new Text("Ladies Bags",style: new TextStyle(color: Colors.black38,fontWeight: FontWeight.w400),),
                      new Text("Flat 40% off")
                    ],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    children: <Widget>[
                      Image.asset("images/jewellary.jpg",fit: BoxFit.contain,height: 200.0,),
                      SizedBox(height: 15.0,),
                      new Text("Jewellary",style: new TextStyle(color: Colors.black38,fontWeight: FontWeight.w400),),
                      new Text("upto 20% off")

                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                child:
                Icon(Icons.refresh),
                onPressed: (){

                },
                backgroundColor: Colors.black38,
              ),
            )
          ],
        ),
      ),
    );
  }
}

/*class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(



    );
  }
}*/
