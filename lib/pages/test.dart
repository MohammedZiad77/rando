import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
class Test extends StatefulWidget {

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  Future getData() async{
var url='https://jsonplaceholder.typicode.com/posts';
var response=await http.get(Uri.parse(url));
var responsebody=convert.jsonDecode(response.body);
//print(responsebody); this Well print it in Console
return responsebody; // this well print it in appication 
  }
  @override
  // void initState() { // We Cancle this when we make FutureBuilder
  //  getData() ;
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return Container(child: Scaffold(
      appBar: AppBar(title: Text('Test'),
      ),
      body: FutureBuilder(
        future: getData()  ,
        builder: (BuildContext context,AsyncSnapshot snapshot){
          if(snapshot.hasData){
        return ListView.builder(
          itemCount: snapshot.data.length,//this is insteade of any number
          itemBuilder: (context,i){
           return  Container(child: Text(snapshot.data[i]['title']));
          });
         }
                   return CircularProgressIndicator();
                 
        })
      ),
    
    );
    
  }
}