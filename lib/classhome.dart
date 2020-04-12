import 'dart:io';
import 'dart:math';
import 'package:documents_picker/documents_picker.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:vclassroom/home.dart';
import 'package:vclassroom/src/pages/index.dart';
import 'package:vclassroom/upload.dart';

class Classhome extends StatefulWidget {
  final String imgdata,name;
  Classhome({this.imgdata,this.name});
  @override
  _ClasshomeState createState() => _ClasshomeState();
}

class _ClasshomeState extends State<Classhome> with SingleTickerProviderStateMixin{


  AnimationController animationController;
  Animation degreeonetran,rotationanim,degreetwotran,degreethreetran;
  var img,subname,prof;


  @override
  void initState() {
    // TODO: implement initState
    animationController=AnimationController(vsync: this,duration: Duration(milliseconds: 250));
    degreeonetran=TweenSequence([
     TweenSequenceItem<double>(tween: Tween<double>(begin: 0.0,end: 1.2),weight: 75.0),
      TweenSequenceItem<double>(tween: Tween<double>(begin: 1.2,end: 1.0),weight: 25.0),
    ]).animate(animationController);
    degreetwotran=TweenSequence([
      TweenSequenceItem<double>(tween: Tween<double>(begin: 0.0,end: 1.4),weight: 55.0),
      TweenSequenceItem<double>(tween: Tween<double>(begin: 1.4,end: 1.0),weight: 45.0),
    ]).animate(animationController);
    degreethreetran=TweenSequence([
      TweenSequenceItem<double>(tween: Tween<double>(begin: 0.0,end: 1.75),weight: 35.0),
      TweenSequenceItem<double>(tween: Tween<double>(begin: 1.75,end: 1.0),weight: 65.0),
    ]).animate(animationController);

    rotationanim=Tween<double>(begin: 180.0,end: 0.0).animate(CurvedAnimation(parent: animationController,curve: Curves.easeInOut));
    animationController.addListener((){
      setState(() {

      });
    });
    super.initState();
    print('initfun');
    print(widget.imgdata);
    print(widget.name);
    print('end');
    var lst=['Tamil','Maths','Science','English','Spanish','Physics','Chemistry'];
    var li=['assets/new1.jpg','assets/education.png','assets/new2.jpg','assets/new3.png','assets/new4.jpg','assets/new5.png',
      'assets/new6.png','assets/new7.jpg'];
    var pr=['assets/pro1.jpg','assets/pro2.jpg','assets/pro3.jpg','assets/pro4.jpg','assets/pro5.png','assets/pro6.png'];
    var ran=Random();
    img=li[ran.nextInt(li.length)];
    subname=lst[ran.nextInt(lst.length)];
    prof=pr[ran.nextInt(pr.length)];
  }


  double getradiansfromdegree(double degree){
    double unitradian=57.295779513;
    return degree/unitradian;
  }

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(height: 30.0,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(subname.toString(),style: TextStyle(
                        fontSize: 30.0,fontWeight: FontWeight.bold,
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 10.0,),
                Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Material(
                elevation: 6.0,
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  child: GestureDetector(
                    onTap: (){
                    },
                    child: Stack(
                      children: <Widget>[
                        Container(
                          height: 150.0,
                          width: width*0.9,
                          child: Image.asset(img.toString(),fit: BoxFit.cover,),
                        ),
                        Positioned(
                          left: 0.0,
                          bottom: 0.0,
                          width: width*0.9,
                          height: 25.0,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(begin:Alignment.bottomLeft,end: Alignment.bottomRight  ,colors: [
                                Color(0xff683BEE),Color(0xff683BEE),
                              ]),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20.0,
                          bottom: 5.0,
                          child: Text(subname.toString(),style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Colors.white
                          ),),
                        ),
                        Positioned(
                          right: 10.0,
                          bottom: 10.0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Container(
                              height: 20.0,
                              width: 20.0,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0.0,
                          top: 0.0,
                          child: Container(
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                              color: Color(0xff683BEE),
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50.0)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Material(
                    elevation: 6.0,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: GestureDetector(
                        onTap: (){
                        },
                        child: Stack(
                          children: <Widget>[
                            Container(
                              height: 150.0,
                              width: width*0.9,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(height: 10.0,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                                          child: Container(
                                            width: 50.0,
                                            height: 50.0,
                                            child: Image.asset('assets/pro1.jpg',fit: BoxFit.cover,),
                                          ),
                                        ),
                                        SizedBox(width: 10.0,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text('Balaji',style: TextStyle(
                                              fontSize: 15.0,fontWeight: FontWeight.bold,
                                            ),),
                                            Text('May 15',style: TextStyle(
                                              fontSize: 10.0,
                                            ),),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 15.0,),
                                    Text('Here, i have attached big data analytics QB and Unit wise questions',style: TextStyle(
                                      fontSize: 15.0,
                                    ),),

                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Material(
                    elevation: 6.0,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: GestureDetector(
                        onTap: (){
                        },
                        child: Stack(
                          children: <Widget>[
                            Container(
                              height: 150.0,
                              width: width*0.9,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(height: 10.0,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                                          child: Container(
                                            width: 50.0,
                                            height: 50.0,
                                            child: Image.asset(prof.toString(),fit: BoxFit.cover,),
                                          ),
                                        ),
                                        SizedBox(width: 10.0,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text('Vinoth',style: TextStyle(
                                              fontSize: 15.0,fontWeight: FontWeight.bold,
                                            ),),
                                            Text('May 18',style: TextStyle(
                                              fontSize: 10.0,
                                            ),),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 15.0,),
                                    Text("Thank you all for attending yesterday sessions, tomorrow we'll have a session at 10.00AM ",style: TextStyle(
                                      fontSize: 15.0,
                                    ),),

                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              right: 30.0,
              bottom: 30.0,
              child: Stack(
                children: <Widget>[
                  Transform.translate(
                    offset: Offset.fromDirection(getradiansfromdegree(270),degreeonetran.value*100),
                    child: Transform(
                      transform: Matrix4.rotationZ(getradiansfromdegree(rotationanim.value))..scale(degreeonetran.value),
                      alignment: Alignment.center,
                      child: Circularbtn(
                        color: Colors.blue,
                        width: 50.0,
                        height: 50.0,
                        icon: Icon(Icons.library_books,color: Colors.white,),
                        onclick: (){
                          _handleCameraAndMic();
                        },
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset.fromDirection(getradiansfromdegree(225),degreetwotran.value*100),
                    child: Transform(
                      transform: Matrix4.rotationZ(getradiansfromdegree(rotationanim.value))..scale(degreetwotran.value),
                      alignment: Alignment.center,
                      child: Circularbtn(
                        color: Colors.black,
                        width: 50.0,
                        height: 50.0,
                        icon: Icon(Icons.note_add,color: Colors.white,),
                        onclick: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>Uploadnotes()));
                        },
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset.fromDirection(getradiansfromdegree(180),degreethreetran.value*100),
                    child: Transform(
                      transform: Matrix4.rotationZ(getradiansfromdegree(rotationanim.value))..scale(degreethreetran.value),
                      alignment: Alignment.center,
                      child: Circularbtn(
                        color: Colors.orangeAccent,
                        width: 50.0,
                        height: 50.0,
                        icon: Icon(Icons.view_stream,color: Colors.white,),
                        onclick: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>IndexPage()));
                        },
                      ),
                    ),
                  ),
                  Transform(
                    transform: Matrix4.rotationZ(getradiansfromdegree(rotationanim.value)),
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onLongPress: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Uploadnotes()));
                      },
                      onDoubleTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>IndexPage()));
                      },
                      onTap: (){
                        if(animationController.isCompleted){
                          animationController.reverse();
                        }else{
                          animationController.forward();
                        }
                      },
                      child: Circularbtn(
                        color: Colors.red,
                        width: 60.0,
                        height: 60.0,
                        icon: Icon(Icons.menu,color: Colors.white,),
                        onclick: (){
                          if(animationController.isCompleted){
                            animationController.reverse();
                          }else{
                            animationController.forward();
                          }
                        },
                      ),
                    ),
                  ),

                ],
              ),
            )

          ],
        ),
      ),

    );
  }

  Future<void> _handleCameraAndMic() async {
    await PermissionHandler().requestPermissions(
      [PermissionGroup.storage],
    );
  }
}

class Circularbtn extends StatelessWidget {
  final double width,height;
  final Color color;
  final Icon icon;
  final Function onclick;

  Circularbtn({this.color,this.width,this.height,this.icon,this.onclick});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,shape: BoxShape.circle
      ),
      width: width,
      height: height,
      child: IconButton(onPressed: onclick,icon: icon,),
    );
  }
}

