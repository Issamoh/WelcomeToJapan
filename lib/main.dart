import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Welcome to Algeria'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          Stack(
children: <Widget>[

   ShaderMask(
          shaderCallback: (rect) {
            return LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black,Colors.transparent]
            ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
          },
      blendMode: BlendMode.dstIn,
      child:   Image.asset('assets/japan.jpg',height:400,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,),
    ),
  Positioned(
    left: -10,
    child: RotatedBox(
      quarterTurns: 3,
      child: Text("JAPAN",style:TextStyle(fontSize: 90,fontWeight:  FontWeight.w900, color: Colors.white.withOpacity(0.2),))
    )


  ),
  Positioned(
    top: MediaQuery.of(context).size.height*0.4,
    //top: 250,
    left: 80,
    child:
    Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Text("WELCOME TO",style:TextStyle(fontSize: 30,fontWeight:  FontWeight.w400, color: Colors.white,)),

          Row(
         children: <Widget>[
           Text("TOKYO, ",style:TextStyle(fontSize: 38,fontWeight:  FontWeight.w900, color: Color(0xffe74c3c),)),
           Text("JAPAN ",style:TextStyle(fontSize: 38,fontWeight:  FontWeight.w900, color: Colors.white,)),
         ],
          )
        ],

  )

  ) ,
  Positioned(
    top : 20 ,
    right : 20 ,
    child: Container(
      height: 50 ,
      width : 50 ,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)),
      child:
         Icon(Icons.menu) ,
      ),
    ),
      ],
  )
]
  )



          );




  }
}
