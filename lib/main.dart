import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vclassroom/home.dart';
import 'package:vclassroom/signin.dart';

void main() => runApp(MaterialApp(home: MyApp(),));


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin{

  Animation delayanimation,ordanim;
  Animation<double> animation,anim;
  AnimationController animationController;
  TextEditingController email,pswd;
  bool sel=true;

  @override
  void initState() {
    email=TextEditingController(text:"");
    pswd=TextEditingController(text:"");
    animationController=AnimationController(vsync: this,duration: Duration(seconds: 2));
    animation=Tween<double>(begin: 100,end: -400).animate(animationController)..addListener((){
      setState(() {
      });
    });
    ordanim=Tween(begin: -1.0,end: 0.0).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInOut
    ));
    delayanimation=Tween(begin: -1.0,end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.5,1.0,curve: Curves.easeInOut)
    ));
    anim=Tween<double>(begin: 300,end: -550).animate(animationController)..addListener((){
      setState(() {
      });
    });


    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    animationController.forward();
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        child: Stack(
          children: <Widget>[
            Container(
              width: width,
              height: height*0.5,
              child: Image.asset('assets/log.png',fit: BoxFit.cover,),
            ),
            Align(
              alignment: AlignmentDirectional(0.0,0.7),
              child: Transform.translate(
                offset: Offset(-60,anim.value),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/leftnote.png')
                      )
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0,0.7),
              child: Transform.translate(
                offset: Offset(60,anim.value),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/rightnote.png')
                      )
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0,0.7),
              child: Transform.translate(
                offset: Offset(0,animation.value),
                child: Container(
                  width: width,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/hum.png')
                    )
                  ),
                ),
              ),
            ),
            Container(
              width: width,
              height: height,
              child: SingleChildScrollView(
                child: Transform(
                  transform: Matrix4.translationValues(delayanimation.value*width, 0.0, 0.0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: height*0.51,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text('Login',style: TextStyle(
                              fontSize: 40.0,
                              color: Colors.black,
                            ),),
                          ],
                        ),
                      ),

                      SizedBox(height: 15.0,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                        child: TextField(
                          controller: email,
                          decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle: TextStyle(
                              fontStyle: FontStyle.italic
                            ),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                            suffixIcon: Icon(Icons.email),

                          ),
                        ),
                      ),
                      SizedBox(height: 15.0,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                        child: TextField(
                          obscureText: sel,
                          controller: pswd,
                          decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(
                                fontStyle: FontStyle.italic
                            ),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                            suffixIcon: IconButton(icon:Icon(sel?Icons.visibility_off:Icons.visibility),onPressed: (){
                              setState(() {
                                sel=!sel;
                              });
                            },),

                          ),
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Text('Forget password ?',style: TextStyle(
                              color: Colors.red,
                              fontSize: 15.0
                            ),),
                            RaisedButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
                              },
                              shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              elevation: 6.0,
                              color: Color(0xff403D52),
                              child: Text('Submit',style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.white
                              ),),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0,right: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Don't have an account",style: TextStyle(
                              fontSize: 15.0,
                                color: Color(0xff403D52),
                              fontStyle: FontStyle.italic
                            ),),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Signin()));
                              },
                              child: Text(" Sign in",style: TextStyle(
                                color: Colors.red,
                                fontSize: 15.0,
                              ),),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 60.0,),


                    ],
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
