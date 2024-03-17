import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:http/http.dart';
import '../component/mydrawer.dart';
import '../pages/home.dart';

class Home extends StatefulWidget {
  State<Home> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Carsland"),
          backgroundColor: Color.fromARGB(255, 1, 181, 4).withOpacity(0.5),
          
          centerTitle: true,
          elevation: 6, 
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
                
              },
            )
          ],
          
        ),
        drawer: MyDrawer(),
        body: ListView(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Carousel(
                images: [
                  Image.asset(
                    "images/slider/1.jpg",
                    fit: BoxFit.cover,
                    width: 50,
                  ),
                  Image.asset(
                    "images/slider/2.jpg",
                    fit: BoxFit.cover,
                    width: 50,
                  ),
                  Image.asset(
                    "images/slider/3.jpg",
                    fit: BoxFit.cover,
                    width: 10,
                  ),
                  Image.asset(
                    "images/slider/4.jpg",
                    fit: BoxFit.cover,
                    width: 10,
                  ),
                ],
                dotSize: 8,
                dotIncreaseSize: 2,
                dotIncreasedColor: Colors.blue,
                dotSpacing: 20,
                dotColor: Colors.white,
                dotBgColor: Colors.black.withOpacity(.5),
                boxFit: BoxFit.cover,
              ),
            ),
            //End carousel
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "الأقسام",
                style: TextStyle(fontSize: 25, color: Colors.blue),
              ),
            ),
            Container(
              height: 110,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 100,
                    width: 130,
                    child: ListTile(
                        title: Image.asset(
                          'images/category/Toyota.png',
                          height: 80,
                          width: 80,
                          fit: BoxFit.fill,
                        ), 
                        subtitle: Text(
                          "TOYOTA",
                          textAlign: TextAlign.center,
                        )),
                  ),
                  Container(
                    height: 100,
                    width: 120,
                    child: ListTile(
                        title: Image.asset(
                          'images/category/Lamborghini1.png',
                          height: 60,
                          width: 60,
                          fit: BoxFit.fill,
                        ),
                        subtitle: const Text(
                          "LAMBORGHINI",
                          textAlign: TextAlign.center,
                        )),
                  ),
                  Container(
                    /////////////////////////////// SizedBox
                    height: 100,
                    width: 130,
                    child: ListTile(
                        title: Image.asset(
                          'images/category/Rolls-Royce.png',
                          height: 60,
                          width: 80,
                          fit: BoxFit.fill,
                        ),
                        subtitle: Text(
                          "ROLLS-ROYCE",
                          textAlign: TextAlign.center,
                        )),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    child: ListTile(
                        title: Image.asset(
                          'images/category/Ford.png',
                          height: 60,
                          width: 80,
                          fit: BoxFit.fill,
                        ),
                        subtitle: Text(
                          "FORD",
                          textAlign: TextAlign.center,
                        )),
                  ),
                  Container(
                    height: 100,
                    width: 130,
                    child: ListTile(
                        title: Image.asset(
                          'images/category/Chevrolet1.png',
                          height: 60,
                          width: 80,
                          fit: BoxFit.fill,
                        ),
                        subtitle: const Text(
                          "CHEVROLET",
                          textAlign: TextAlign.center,
                        )),
                  ),
                  Container(
                    height: 100,
                    width: 130,
                    child: ListTile(
                        title: Image.asset(
                          'images/category/Porsche.png',
                          height: 60,
                          width: 80,
                          fit: BoxFit.fill,
                        ),
                        subtitle: Text(
                          "PORSCHE",
                          textAlign: TextAlign.center,
                        )),
                  ),
                ],
              ),
            ),

          
            Container(
              height: 60,
              padding: EdgeInsets.all(10),
              child: Text(
                "آخر المنتجات",
                style: TextStyle(fontSize: 25, color: Colors.blue),
              ),
            ),
            Container(
              height: 300,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                children: [
                  InkWell(
                      child: GridTile(
                    child: Image.asset("images/product/1.jpg"),
                    footer: Container(
                      height: 30,
                      color: Colors.orange.withOpacity(0.6),
                      child: Text(
                        "Mercedes Price:800K\$",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                  )),
                  InkWell(
                      child: GridTile(
                    child: Image.asset("images/product/2.jpg"),
                    footer: Container(
                      height: 30,
                      color: Colors.orange.withOpacity(0.6),
                      child: Text(
                        "Ford Price:900K\$",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                  )),
                  InkWell(
                      child: GridTile(
                    child: Image.asset("images/product/3.jpg"),
                    footer: Container(
                      height: 30,
                      color: Colors.orange.withOpacity(0.6),
                      child: Text(
                        "Lamborghini Sport Price:1M\$",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                  )),
                  InkWell(
                      child: GridTile(
                    footer: Container(
                      height: 30,
                      color: Colors.orange.withOpacity(0.6),
                      child:const Text(
                        "Lamborghini Price:2.7M \$",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                    child: Image.asset("images/product/4.jpg"),
                  )),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {delete(
            null); },
        icon: Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {

    IconButton(
      onPressed: () {
        close(
            context, null); 
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Text("Body Search");
  }
}
