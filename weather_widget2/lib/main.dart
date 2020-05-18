import 'package:flutter/material.dart';
import 'second_screen.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(
  Directionality(
    textDirection: TextDirection.ltr,
    child: new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MainScreen()),
    
  ),
);

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        left: true,
        right: true,
        child: Column(children: <Widget>[
          ListView(),
        ]
      )));

  }
} 

        
        

class ListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[700],
      child: 
        Column (children: [
          RowOne('London', '22^', 'sunny', imageurl: 'http://cdn.onlinewebfonts.com/svg/img_272131.png'),
          Divider(color: Colors.black,),
          RowTwo('one', 'two', 'three', 'fhor', 'five',
          imghumidity: 'https://cdn.onlinewebfonts.com/svg/img_502309.png',
          imgprecipitation: 'https://cdn.onlinewebfonts.com/svg/img_434060.png', 
          imgpressure: 'https://cdn.onlinewebfonts.com/svg/img_315336.png', 
          imgwind: 'https://cdn.onlinewebfonts.com/svg/img_56781.png', 
          imgdirection: 'https://cdn.onlinewebfonts.com/svg/img_459489.png' ),
          Divider(color: Colors.black,),
          RowThree(),
        ]
        ),
    );
    
  }
}



class RowThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: <Widget>[
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        height: 170.0,
        child: 
       Column(children: <Widget>[
         ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          width: 180.0,
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
          decoration: const BoxDecoration( 
            border: Border(
             bottom: BorderSide(width: 3.0, color: Colors.black54,)
            ),
            color: Colors.orange,
            ),
          child: const Text(
             'Share',
             textAlign: TextAlign.center,
             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
           ),
        ),  
      ),
      Wrap(
        spacing: 260.0,
        children: <Widget>[
          Container(
            height: 85.0,
            decoration: const BoxDecoration(            
              border: Border(
               bottom: BorderSide(width: 2.0, color: Colors.orange,)
            ),
          ),
            child: Image.network('https://cdn.onlinewebfonts.com/svg/img_170346.png', width: 60.0, height: 60.0, ),
            ),
          Container(
            height: 85.0,
            decoration: const BoxDecoration(            
              border: Border(
                bottom: BorderSide(width: 2.0, color: Colors.black87,)
              ),
            ),
            child: GestureDetector(
             onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (contex) => SecondScreen()));
             }, child: 
               Image.network('https://cdn.onlinewebfonts.com/svg/img_115243.png', width: 60.0, height: 50.0,),
            ),
          ),
        ],)
       ],),
      ),
    ],);
  }
}




class RowTwo extends StatelessWidget {
  final String _humidity;
  final String _precipitation;
  final String _pressure;
  final String _wind;
  final String _direction;
  String _imghumidity;
  String _imgprecipitation;
  String _imgpressure;
  String _imgwind;
  String _imgdirection;

  RowTwo(this._humidity, this._precipitation, this._pressure, this._wind, this._direction, {String imghumidity, String imgprecipitation, String imgpressure, String imgwind, String imgdirection}) {
    _imghumidity = imghumidity;
    _imgprecipitation = imgprecipitation;
    _imgpressure = imgpressure;
    _imgwind = imgwind;
    _imgdirection = imgdirection;

  }
// clouds: 
// sun: 
//rain: http://cdn.onlinewebfonts.com/svg/img_272131.png
//wind: https://www.pngfind.com/pngs/m/132-1323158_windy-weather-icon-clip-art-weather-windy-hd.png
//temp: https://img2.freepng.ru/20181202/tgr/kisspng-computer-icons-temperature-thermometer-emprose-ltd-temperature-svg-png-icon-free-download-11-344-5c045cf90a7f19.994109211543789817043.jpg
//direction: https://img2.freepng.ru/20180525/ize/kisspng-computer-icons-compass-symbol-clip-art-simple-5b08679b765eb2.5498261615272774674849.jpg
//pressure: https://banner2.cleanpng.com/20180613/vl/kisspng-effective-heating-ltd-boiler-repairs-service-ne-meter-5b20e10d5e6648.8813199915288814213867.jpg
//humiditi: https://c7.hotpng.com/preview/402/24/23/relative-humidity-computer-icons-raindrops-material.jpg

//today: https://cdn.onlinewebfonts.com/svg/img_170346.png
//calendar: https://cdn.onlinewebfonts.com/svg/img_115243.png
  
  
  
  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(30.0),
      color: Colors.grey[700],
      child: Wrap(
          spacing: 100.0,
          runSpacing: 30.0,
          alignment: WrapAlignment.spaceEvenly,
          children: <Widget>[
            Column(children: <Widget>[
                 // Image.file('images/rain.png'),
                  //Image.asset('images/rain.png'),
              Image.network(_imghumidity, width: 30.0, height: 30.0, fit: BoxFit.cover,),
              Text(_humidity, 
                  style: TextStyle(fontSize: 18.0, color: Colors.orangeAccent),)
            ]),
            Column(children: <Widget>[
              Image.network(_imgprecipitation, width: 30.0, height: 30.0, fit: BoxFit.cover,),
              Text(_precipitation, style: TextStyle(fontSize: 18.0, color: Colors.orangeAccent),),
            ],),
            Column(children: <Widget>[
              Image.network(_imgpressure, width: 30.0, height: 30.0, fit: BoxFit.cover,),
              Text(_pressure, style: TextStyle(fontSize: 18.0, color: Colors.orangeAccent),),
            ]),
            Column(children: <Widget>[
              Image.network(_imgwind, width: 30.0, height: 30.0, fit: BoxFit.cover,),
              Text(_wind, style: TextStyle(fontSize: 18.0, color: Colors.orangeAccent),),
            ],),
            Column(children: <Widget>[
              Image.network(_imgdirection, width: 30.0, height: 30.0, fit: BoxFit.cover,),
              Text(_direction, style: TextStyle(fontSize: 18.0, color: Colors.orangeAccent),),
            ],),
          ],
          )
    );
  }
}

class RowOne extends StatelessWidget {
  final String _place;
  final String _temperature;
  final String _weather;
  String _imageurl;

  RowOne(this._place, this._temperature, this._weather, {String imageurl}) {
    _imageurl = imageurl;

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30.0),
      height: 265.0,
      child: Center(
        child: new Column( 
        children: <Widget>[
          new Text(_place, style: new TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.orangeAccent,),  overflow: TextOverflow.ellipsis,),
          new Container(
            padding: new EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
               new Text (_temperature, style: new TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,color: Colors.orange[500],),),
               new Text('/' + _weather, style: new TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold,color: Colors.orange[300],),),
              ],),
            ),
            Container(
              margin: EdgeInsets.all(5.0),
              child: new Image.network( _imageurl, width: 100.0, height: 80.0),
              ),
          
        ],
        ),
    )   );
  }
}

