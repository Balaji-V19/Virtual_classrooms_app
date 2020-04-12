import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> with TickerProviderStateMixin{
  Animation delayanimation,ordanim;
  Animation<double> animation,anim;
  AnimationController animationController;
  TextEditingController email,pswd,name, prof,gender,phone;
  bool sel=true;

  @override
  void initState() {
    phone=TextEditingController(text:"");
    email=TextEditingController(text:"");
    pswd=TextEditingController(text:"");
    name=TextEditingController(text:"");
    prof=TextEditingController(text:"");
    gender=TextEditingController(text:"");
    animationController=AnimationController(vsync: this,duration: Duration(seconds: 2));
    animation=Tween<double>(begin: -100,end: 10).animate(animationController)..addListener((){
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
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: width,
                height: height*0.5,
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
                        offset: Offset(-100,animation.value+50),
                        child: Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/botsign.png')
                              )
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0,0.7),
                      child: Transform.translate(
                        offset: Offset(100,animation.value-80),
                        child: Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/topsign.png')
                              )
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Transform(
                  transform: Matrix4.translationValues(delayanimation.value*width, 0.0, 0.0),
                  child: Column(
                    children: <Widget>[
                     SizedBox(height: 20.0,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text('Sign in',style: TextStyle(
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
                          controller: name,
                          decoration: InputDecoration(
                            hintText: "Name",
                            hintStyle: TextStyle(
                                fontStyle: FontStyle.italic
                            ),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                            suffixIcon: Icon(Icons.person),

                          ),
                        ),
                      ),
                      SizedBox(height: 15.0,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                        child: TextField(
                          controller: phone,
                          decoration: InputDecoration(
                            hintText: "Phone",
                            hintStyle: TextStyle(
                                fontStyle: FontStyle.italic
                            ),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                            suffixIcon: Icon(Icons.phone_android),

                          ),
                        ),
                      ),
                      SizedBox(height: 15.0,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                        child: TextField(
                          controller: prof,
                          decoration: InputDecoration(
                            hintText: "Professional",
                            hintStyle: TextStyle(
                                fontStyle: FontStyle.italic
                            ),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                            suffixIcon: Icon(Icons.library_books),

                          ),
                        ),
                      ),
                      SizedBox(height: 15.0,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                        child: TextField(
                          controller: gender,
                          decoration: InputDecoration(
                            hintText: "Gender",
                            hintStyle: TextStyle(
                                fontStyle: FontStyle.italic
                            ),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                            suffixIcon: Icon(Icons.person_pin),

                          ),
                        ),
                      ),
                      SizedBox(height: 15.0,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                        child: TextField(
                          controller: pswd,
                          obscureText: sel,
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
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            RaisedButton(
                              onPressed: (){
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
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0,right: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Already have an account",style: TextStyle(
                                fontSize: 15.0,
                                color: Color(0xff403D52),
                                fontStyle: FontStyle.italic
                            ),),
                            GestureDetector(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Text(" Log in",style: TextStyle(
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
              )
            ],
          ),
        ),
      ),

    );
  }
}
