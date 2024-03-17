import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../component/mydrawer.dart';
// import 'package:skymarkets/component/mydrawer.dart';

class Categories extends StatefulWidget {

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl, child: Scaffold(
      appBar: AppBar(
        title: Text("الأقسام"),
        centerTitle: true,),
        drawer: MyDrawer(),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            children: [

              //Start cat one
              InkWell(child: Card(
                child: Column(children: [
                 Expanded(child: Image.asset("images/category/Toyota.png",fit: BoxFit.cover,),),
                  Container(child: Text("Toyota",style: TextStyle(fontSize: 20),),
                  ),
                  ],),
                  ),
                  // onTap: (){ Navigator.of(context).pushNamed("samsung"); },
                  ),

                    InkWell(child: Card(
                child: Column(children: [
                 Expanded(child: Image.asset("images/category/Lamborghini1.png",fit: BoxFit.cover,),),
                  Container(child: Text("Lamborghini",style: TextStyle(fontSize: 20),),
                  ),
                  ],),
                  ),
                  onTap: (){},
                  ),

                    InkWell(child: Card(
                child: Column(children: [
                 Expanded(child: Image.asset("images/category/Rolls-Royce.png",fit: BoxFit.cover,),),
                  Container(child: Text("Rolls-Royce",style: TextStyle(fontSize: 20),),
                  ),
                  ],),
                  ),
                  onTap: (){},
                  ),

                    InkWell(child: Card(
                child: Column(children: [
                 Expanded(child: Image.asset("images/category/Ford.png",fit: BoxFit.cover,),),
                  Container(child: Text("Ford",style: TextStyle(fontSize: 20),),
                  ),
                  ],),
                  ),
                  onTap: (){},
                  ),

                  InkWell(child: Card(
                child: Column(children: [
                 Expanded(child: Image.asset("images/category/Chevrolet1.png",fit: BoxFit.cover,),),
                  Container(child: Text("Chevrolet",style: TextStyle(fontSize: 20),),
                  ),
                  ],),
                  ),
                  onTap: (){},
                  ),
                   InkWell(child: Card(
                child: Column(children: [
                 Expanded(child: Image.asset("images/category/Porsche.png",fit: BoxFit.cover,),),
                  Container(child: Text("Porsche",style: TextStyle(fontSize: 20),),
                  ),
                  ],),
                  ),
                  onTap: (){},
                  ),
                  //End cat one

                  ],
                  ),
        ),
        );
    
  }
}