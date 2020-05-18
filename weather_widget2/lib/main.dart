import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(
  Directionality(
    textDirection: TextDirection.ltr,
    child: new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textSelectionColor: Colors.red),
      home: new MainScreen()),
    //child: new MainScreen(),
    
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
        
        Wrap(
          
          spacing: 240.0,
          //runSpacing: 10.0,
          //alignment: WrapAlignment.end,
          children: <Widget>[
          Image.network('https://cdn.onlinewebfonts.com/svg/img_170346.png', width: 60.0, height: 60.0, fit: BoxFit.cover,),
          RaisedButton(
           color: Colors.white,
           onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (contex) => SecondScreen()));
          }, child: 
              Image.network('https://cdn.onlinewebfonts.com/svg/img_115243.png', width: 60.0, height: 60.0, fit: BoxFit.cover,),
      ),

        ],)
         
        ]
      )));

  }
} 

        
        

class ListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column (
      children: [
        RowOne('london', '22^', 'sunny', imageurl: 'https://flutter.su/favicon.png'),
        RowTwo('one', 'two', 'three', 'fhor', 'five',
         imghumidity: 'https://cdn.onlinewebfonts.com/svg/img_502309.png',
         imgprecipitation: 'https://cdn.onlinewebfonts.com/svg/img_434060.png', 
         imgpressure: 'https://cdn.onlinewebfonts.com/svg/img_315336.png', 
         imgwind: 'https://cdn.onlinewebfonts.com/svg/img_56781.png', 
         imgdirection: 'https://cdn.onlinewebfonts.com/svg/img_459489.png' ),
        RowThree(),
        //RowFor(),
      ]
      
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Второе окно'),),
      body: Center(child: RaisedButton(onPressed: () {
        Navigator.pop(context);

      }, child: Text('Назад')),),
    );

  }
}


class RowThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          width: 180.0,
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
          decoration: const BoxDecoration( 
       
            border: Border(
             bottom: BorderSide(width: 3.0, color: Colors.grey,)
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
      ),

      // Row(children: <Widget>[
      //   //Alignment.bottomLeft(){},
      //  // Alignment.bottomRight(){},
      //  Image.network('https://cdn.onlinewebfonts.com/svg/img_170346.png', width: 30.0, height: 30.0, fit: BoxFit.cover,),
      //   Center(child: RaisedButton(onPressed: () {
      //   Navigator.pop(context, MaterialPageRoute(builder: (contex) => SecondScreen()));
      // }, child: Text('Открыть второе окно'))),

      
      // ],

      // ),




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
// clouds: https://img2.freepng.ru/20190515/xet/kisspng-weather-forecasting-cloud-computer-icons-meteorolo-cloudy-weather-clouds-svg-png-icon-free-download-5cdc0fa8ef17b2.7515568115579258009793.jpg
// sun: https://cdn.pixabay.com/photo/2016/03/31/21/00/sun-1296129_960_720.png
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

      //decoration: const BoxDecoration( 
      //  border: Border(
      //    bottom: BorderSide(width: 3.0, color: Colors.black,)
      // ),
        //color: Colors.orange,
      //),

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
