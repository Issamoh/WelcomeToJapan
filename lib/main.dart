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
  var selectedFood = 'CAKE' ;
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
      child:   Image.asset('assets/japan.jpg',height: MediaQuery.of(context).size.height*0.45,
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
    top: MediaQuery.of(context).size.height*0.3,
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
    top : 14 ,
    right : 15 ,
    child: Container(
      height: 50 ,
      width : 50 ,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)),
      child:
         Icon(Icons.menu
         ) ,
      ),
    ),
  Positioned(
    top : 15 ,
    right : 15 ,
    child: Container(
      height: 15,
      width: 15,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(20)
      ),
    ),
  )
      ],
  ),
     Padding(
       padding: EdgeInsets.symmetric(horizontal: 20),
       child: Container(
         height: 50,
         decoration: BoxDecoration(color: Colors.grey.shade900,borderRadius: BorderRadius.circular(5)),
         child: TextField(
           decoration: InputDecoration(
             border: InputBorder.none,
             prefixIcon: Icon(Icons.search, color: Colors.white.withOpacity(0.5)),
             hintText: 'Tap to search ...',
             hintStyle: TextStyle(color: Colors.grey)
           ),
           style: TextStyle(color: Colors.grey),
         ),
       ),

     ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buttonBuilder('PIZZA'.toUpperCase(), Icons.local_pizza),
              _buttonBuilder('cake'.toUpperCase(), Icons.cake),
              _buttonBuilder('COFFEE'.toUpperCase(), Icons.local_cafe)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buttonBuilder('PIZZA1'.toUpperCase(), Icons.local_pizza),
              _buttonBuilder('cake1'.toUpperCase(), Icons.cake),
              _buttonBuilder('COFFEE1'.toUpperCase(), Icons.local_cafe)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buttonBuilder('PIZZA2'.toUpperCase(), Icons.local_pizza),
              _buttonBuilder('cake2'.toUpperCase(), Icons.cake),
              _buttonBuilder('COFFEE2'.toUpperCase(), Icons.local_cafe)
            ],
          ),

]
  )



          );




  }
  Widget _buttonBuilder(foodName, foodIcon) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () {
        setState(() {
          selectedFood = foodName;
        });
      },
      child: AnimatedContainer(
        curve: Curves.easeIn,
        duration: Duration(milliseconds: 300),
        height: (selectedFood == foodName) ? MediaQuery.of(context).size.height*0.5/3 : MediaQuery.of(context).size.height*0.4/3*0.75,

        width: (selectedFood== foodName) ? MediaQuery.of(context).size.width/3 : MediaQuery.of(context).size.width/3*0.75 ,

        color: (selectedFood== foodName) ? Color(0xffe74c3c) : Colors.transparent,
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
                Icon(foodIcon,color: Colors.white,
        ),
        SizedBox(
          height: 10,
        ),
        Text(foodName, style: TextStyle(color: Colors.white),)
          ],
        ),
      )
      ,

    );
  }
}
