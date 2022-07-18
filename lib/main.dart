import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
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
      appBar: AppBar(
        backgroundColor: Color(0xff0c66f7),

        flexibleSpace: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Topshade.png'),
                  fit: BoxFit.scaleDown,
                  repeat: ImageRepeat.repeatY
              )
          ),
        ),
        centerTitle: true,
        toolbarHeight: MediaQuery.of(context).size.height/7.5,
      ),
      body: Container(

        child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 20, 0),
            child: ListView(
              children: <Widget>[
                SizedBox(height: 10,),
                Container(
                  width: 200,
                  height:200,
                  decoration: BoxDecoration(
                    image:DecorationImage(
                      image: AssetImage("assets/images/Verify.jpg"),
                      fit: BoxFit.contain,
                      alignment: Alignment.topCenter,),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),),
                ),
                SizedBox(height:40,),
                Container(
                  child: Text("We need to verify your ID",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,),
                ),
                SizedBox(height:50),
                Container(
                  child: Text("In order to create an account, we need to be 100% sure that YOU are YOU.",style: TextStyle(fontSize: 20),),

                ),

                SizedBox(height: 50,),
                Container(
                  width: MediaQuery.of(context).size.width/22,
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 20, 0),
                    child: Text(" SCAN" , style: TextStyle(fontSize: 28,color: Colors.white, fontWeight: FontWeight.bold ), textAlign: TextAlign.center,),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff0c66f7),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 8,
                        blurRadius: 10,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 10,),
                Container(
                  width: MediaQuery.of(context).size.width/22,
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 20, 0),
                    child: Text(" UPLOAD" , style: TextStyle(fontSize: 28,color: Colors.white, fontWeight: FontWeight.bold ), textAlign: TextAlign.center,),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff0c66f7),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 8,
                        blurRadius: 10,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                ),

           ]
    )
        ),
      )
    );
  }
}