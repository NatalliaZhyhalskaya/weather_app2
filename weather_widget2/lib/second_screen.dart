//import 'dart:js';
//import 'package:js/js.dart';
//import 'package:flutter/rendering.dart';
import 'package:weather_widget2/data_list.dart';
import 'package:flutter/material.dart';
//import 'package:weather_widget2/data_list.dart';


class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        left: true,
        right: true,
        child: DataList(),
        //  color: Colors.grey[700],
        //  child: DataList(),
          //Column (children: <Widget>[
           //DataList(),
        //    Wrap(
        //     spacing: 260.0,
        //     children: <Widget>[
        //       Container(
        //         height: 85.0,
        //         decoration: const BoxDecoration(            
        //           border: Border(
        //             bottom: BorderSide(width: 2.0, color: Colors.black87,)
        //           ),
        //         ),
        //         child: GestureDetector(
        //          onTap: () {
        //           Navigator.pop(context);
        //          }, child: 
        //             Image.network('https://cdn.onlinewebfonts.com/svg/img_170346.png', width: 60.0, height: 50.0,),
        //         ),
        //       ),
        //     Container(
        //       height: 85.0,
        //       decoration: const BoxDecoration(            
        //         border: Border(
        //      bottom: BorderSide(width: 2.0, color: Colors.orange,)
        //     ),
        //      ),
        //      child: Image.network('https://cdn.onlinewebfonts.com/svg/img_115243.png', width: 60.0, height: 60.0,),
        //      ),
        //  ],)
     //]
     //)
      )
    );
  }
}


class DataList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DataListState();
  }
}

class DataListState extends State<DataList> {
  List<WeatherList> data = [
    WeatherList(name: "bitcoin", symbol: 'bit', rank: 1, price: 6000.0),
    WeatherList(name: "rubl", symbol: 'rub', rank: 2, price: 300.0),
    WeatherList(name: "baks", symbol: '\$', rank: 3, price: 10.0),
    WeatherList(name: "euro", symbol: 'eu', rank: 4, price: 800.0),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('My awesome weather app'),
      ),
      body: Container(
        color: Colors.grey[700],
        child: ListView(
          children:  _buildList(),
        )
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.refresh),
      //  // onPressed: ()
      //   //=> 
      //   //_loadCC(),
      // ),

    );
  }
}
 

List<Widget> _buildList(){
  return data.map(WeatherList f)


      // return data.map((WeatherList f) => ListTile(
      // title: Text(f.symbol),
      // subtitle: Text(f.name),
      // leading: CircleAvatar(child: Text(f.rank.toString())),
      // trailing: Text('\$${f.price.toString()}'),
      // )).toList();
  }

