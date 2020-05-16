import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(
  Directionality(
    textDirection: TextDirection.ltr,
    child: new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MainScreen()),
    //child: new MainScreen(),
    
  ),
);

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(),
        top: true,
        bottom: true,
        left: true,
        right: true,
      )
    );
  }
}

class ListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column (
      children: [
        RowOne('london', '22^', 'sunny', imageurl: 'https://flutter.su/favicon.png'),
        RowTwo(),
        // RowThree(),
        // RowFor(),
      ]
      
    );
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

  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(40.0),
      color: Colors.blueGrey,
      child: Wrap(
          spacing: 100.0,
          runSpacing: 20.0,
          alignment: WrapAlignment.spaceEvenly,
          children: <Widget>[
            Column(children: <Widget>[
              Text(_humidity, color: Colors.orangeAccent,)
            ],)
            Text('hello'),
            Text('mama'),
            Text('papa'),
            Text('sister'),
            Text('brother'),
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
      color: Colors.lightBlue, 
      height: 170.0,
      child: Center(
        child: new Column( 
        children: <Widget>[
          new Text(_place, style: new TextStyle(fontSize: 20.0), overflow: TextOverflow.ellipsis,),
          new Container(
              child: Row(
              children: <Widget>[
               new Text (_temperature, style: new TextStyle(fontSize: 18.0),),
               new Text(_weather, style: new TextStyle(fontSize: 10.0, color: Color(0xFF444444)),),
              ],),
            padding: new EdgeInsets.all(10.0),
            ),
          new Image.network( _imageurl, width: 100.0, height: 70.0, fit: BoxFit.cover,),
        ],
        ),
    )   );
  }
}
// child: Container( // новый виджет! <div> в мире Flutter'а
//       // Для виджета Container свойство color означает цвет фона
//       color: Color(0xFF444444),
//       child: Center(
//         child: Text(
//           'Hello, World!',
//           style: TextStyle( // а у текста появился виджет, который его стилизует
//             color: Color(0xFFFD620A), // задаем ему цвет текста
//             fontSize: 32.0, // и размер шрифта
//           ),
//         ),
//       ),
