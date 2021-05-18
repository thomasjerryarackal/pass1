import 'package:flutter/material.dart';
import 'package:propaert/componets/Reuse.dart';
import 'package:propaert/componets/pricecart.dart';
import 'ProductPage.dart';

void main (){
  runApp(Product());
}

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Big Noodle'
      ),
      home: MyHomePage(),
      routes: {
        '/ProductPage' : (context)=>ProductPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4ecf8),
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        title: Row(
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assest/image/logo.jpeg'),
                  )
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 30,
              width: 150,
              child: Text("MyShoppingCart",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  letterSpacing: 0.5
                ),
              ),
            )
          ],
        ),
        actions: <Widget>[
          Stack(
            children: <Widget>[
              IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
              ),
              Positioned(
                top: 2,
                right: 2,
                child: Container(
                  height: 18,
                  width: 18,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      shape: BoxShape.circle,
                      border: Border.all(
                          color : Colors.white,
                          width: 3
                      )
                  ),
                ),
              )
            ],
          ),

        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        style: TextStyle(
                          fontSize: 30,
                        ),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'SEARCH'
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      padding: EdgeInsets.all(10),
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 20,),
                    Text('Category', style: TextStyle(
                      fontSize: 30,

                    ),),
                    SizedBox(height: 20,),
                    Container(
                      height: 250,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          createMainList('men', 'men'),
                          createMainList('women', 'women'),
                          createMainList('kids', 'kids',),
                          createMainList('homedesign', 'Home \nDesign',),
                          createMainList('sports', 'sports',),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Brand', style: TextStyle(
                            fontSize: 30,
                          ),),
                          GestureDetector(
                            onTap: (){},
                            child: Text(
                              'See All',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.0,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 130,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Court(
                            name: 'sbrand.png',
                            onTap:(){
                            Navigator.pushNamed(context, '/ProductPage');
                          },),
                          Court(
                            name: 'sbrand2.png',
                            onTap:(){
                              Navigator.pushNamed(context, '/ProductPage');
                            },),
                          Court(
                            name: 'dbrand.jpeg',
                            onTap:(){
                              Navigator.pushNamed(context, '/ProductPage');
                            },),
                          Court(
                            name: 'dbrand2.jpeg',
                            onTap:(){
                              Navigator.pushNamed(context, '/ProductPage');
                            },),
                          Court(
                            name: 'dbrand3.jpeg',
                            onTap:(){
                              Navigator.pushNamed(context, '/ProductPage');
                            },),
                          Court(
                            name: 'dbrand4.png',
                            onTap:(){
                              Navigator.pushNamed(context, '/ProductPage');
                            },),

                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('now trending', style: TextStyle(
                            fontSize: 30,
                          ),),
                          GestureDetector(
                            onTap: (){},
                            child: Text(
                              'See All',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.0,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 260,
                      child:ListView(
                          scrollDirection: Axis.horizontal,
                        children: [
                          PriceCourt(
                            ima: 'shoe2.png',
                            price: '110',
                            name: 'Nike ispa air max 260',
                            onTap: (){},
                          ),
                          PriceCourt(
                            ima: 'shoe3.png',
                            price: '210',
                            name: 'Nike ispa air max 460',
                            onTap: (){},
                          ),
                          PriceCourt(
                            ima: 'shoe2.png',
                            price: '110',
                            name: 'Nike ispa air max 260',
                            onTap: (){},
                          ),
                          PriceCourt(
                            ima: 'shoe3.png',
                            price: '210',
                            name: 'Nike ispa air max 460',
                            onTap: (){},
                          ),
                        ]
                      ),
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  //funtion container for main list items display
  Container createMainList(String img, String name,)
  {
    return Container(
      height: 310,
      width: 330,
      child: InkWell(
        onTap: openProductPage,
        child: Stack(
          children: <Widget>[
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.only(top: 20, right: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          gradient: LinearGradient(
                            colors: [Color(0xffae6cca), Color(0xff5837d2)],
                          )
                      ),
                    ),
                    Positioned(
                      top: -20,
                      right: -5,
                      child: Text("Our", style: TextStyle(
                        fontSize: 100,
                        color: Colors.black.withOpacity(0.15),
                      ),),
                    ),
                    Positioned(
                      bottom: -20,
                      left: -10,
                      child: Text("Style", style: TextStyle(
                        fontSize: 100,
                        color: Colors.black.withOpacity(0.15),
                      ),),
                    ),
                    Positioned(
                      left: 15,
                      bottom: 15,
                      child: Text('$name', style: TextStyle(
                          fontSize: 30,
                          color: Colors.white
                      ),),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 10,
              right: 20,
              child: Container(
                height: 200,
                width: 190,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assest/image/$img.jpeg'),
                        fit: BoxFit.contain
                    )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  void openProductPage()
  {
    Navigator.pushNamed(context, '/ProductPage');
  }
}

