import 'package:flutter/material.dart';

class Mydet extends StatefulWidget {
  @override
  _MydetState createState() => _MydetState();
}

class _MydetState extends State<Mydet> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Developer'),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 45.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(75.0),
                        child: Container(
                          width: 125.0,
                            height: 125.0,
                            child: Image.asset('assets/myprof.jpg',fit: BoxFit.cover,))),
                  ],
                ),
                SizedBox(height: 20.0,),
                Text('Name:',style: TextStyle(
                  fontSize: 20.0,
                ),),
                SizedBox(height: 20.0,),
                Text('Balaji',style: TextStyle(
                  fontSize: 15.0,
                ),),
                SizedBox(height: 45.0,),
                Text('Email:',style: TextStyle(
                  fontSize: 20.0,
                ),),
                SizedBox(height: 20.0,),
                Text('vbalaji165@gmail.com',style: TextStyle(
                  fontSize: 15.0,
                ),),
                SizedBox(height: 45.0,),
                Text('LinkedIn:'
                  ,style: TextStyle(
                    fontSize: 20.0,
                  ),),
                SizedBox(height: 20.0,),
                Text('https://in.linkedin.com/in/balaji-v-a73138171',style: TextStyle(
                  fontSize: 15.0,
                ),),
                SizedBox(height: 45.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      child: Text('Ok'),
                      onPressed: (){
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
