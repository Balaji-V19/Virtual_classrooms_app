import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vclassroom/classhome.dart';
import 'package:vclassroom/devpage.dart';
import 'package:vclassroom/enterclass.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with TickerProviderStateMixin{
  Offset _offset=Offset(0,0);
  GlobalKey globalKey=GlobalKey();
  TextEditingController search;
  List<double> limits=[];
  bool ismenu=false;

  @override
  void initState() {
    search=TextEditingController(text: "");
    limits=[0,0,0,0,0,0,0];
    WidgetsBinding.instance.addPostFrameCallback(getposition);
    // TODO: implement initState
    super.initState();
  }

  getposition(duration){
    RenderBox renderBox=globalKey.currentContext.findRenderObject();
    final position=renderBox.localToGlobal(Offset.zero);
    double start=position.dy-20;
    double conlim=position.dy+renderBox.size.height-20;
    double step=(conlim-start)/6;
    limits=[];
    for(double x=start;x<=conlim;x=x+step){
      limits.add(x);
    }
    setState(() {
      limits=limits;
    });
  }

  double getsize(int x){
    double size=(_offset.dy>limits[x] && _offset.dy<limits[x+1])?22:18;
    return size;
  }



  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height:height,
        width: width,
        child: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left:10.0,top: 20.0),
                    child: IconButton(
                      onPressed: (){
                        setState(() {
                          ismenu=true;
                        });
                      },
                      icon: Icon(Icons.menu,size: 30,color: Colors.purple,),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color(0xff683BEE),
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(150.0)),
                    ),
                  )
                ],
              ),
              Container(
                height: height,
                width: width,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 75.0,left: 15.0,right: 15.0),
                      child: TextField(
                        controller: search,
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(
                              fontStyle: FontStyle.italic
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                          suffixIcon: Icon(Icons.search),

                        ),
                      ),
                    ),

//                  SizedBox(height: 20.0,),
//                  Padding(
//                    padding: const EdgeInsets.only(left: 10.0),
//                    child: Row(
//                      mainAxisAlignment: MainAxisAlignment.start,
//                      children: <Widget>[
//                        Text('Live Session',style: TextStyle(
//                          fontSize: 30.0,
//                          fontWeight: FontWeight.bold,
//                          color: Colors.black
//                        ),),
//                      ],
//                    ),
//                  ),
//                  SizedBox(height: 20.0,),
//                  Container(
//                    height: 210.0,
//                    child: ListView(
//                      scrollDirection: Axis.horizontal,
//                      children: live,
//                    ),
//                  ),
                    SizedBox(height: 20.0,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text('Class Rooms',style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),),
                        ],
                      ),
                    ),

                    SizedBox(height: 20.0,),
                    SingleChildScrollView(
                      child: Container(
                        width: width*0.9,
                        height: height*0.7,
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          children: lstclass,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              AnimatedPositioned(
                duration: Duration(milliseconds: 1500),
                left: ismenu?0:-(width*0.65),
                top: 0,
                curve: Curves.elasticOut,
                child: SizedBox(
                  width: width*0.65,
                  child: GestureDetector(
                    onPanUpdate: (update){
                      if(update.localPosition.dx<=width*0.65) {
                        setState(() {
                          _offset = update.localPosition;
                        });
                      }
                      if(update.localPosition.dx>(width*0.65)-20 && update.delta.distanceSquared>2){
                        setState(() {
                          ismenu=true;
                        });
                      }
                    },
                    onPanEnd: (det){
                      setState(() {
                        _offset=Offset(0,0);
                      });

                    },
                    child: Stack(
                      children: <Widget>[
                        CustomPaint(
                          size: Size(width*0.65,height),
                          painter: drawpaint(offset: _offset),
                        ),
                        Container(
                          height: height,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xff683BEE),Color(0xff683BEE)]
                            )
                          ),
                          width: width*0.65,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Container(
                                height: height*0.2,
                                child: Center(
                                  child: Column(
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(60.0),
                                        child: Container(
                                          height: 100,
                                            width: 100,
                                            child: Image.asset('assets/man.jpg',fit: BoxFit.cover,)
                                        ),
                                      ),
                                      SizedBox(height: 10.0,),
                                      Text('Balaji',style: TextStyle(color: Colors.white),),
                                    ],
                                  ),
                                ),
                              ),
                              Divider(thickness: 1,),
                              Container(
                                key: globalKey,
                                width: double.infinity,
                                height: height/2,
                                child: Column(
                                  children: <Widget>[
                                    Mywidget(
                                      text: 'Home',
                                      icondata: Icons.home,
                                      textsize: getsize(0),
                                      height: (height/2)/6,
                                      x: 1,
                                    ),
                                    Mywidget(
                                      text: 'Create Class',
                                      icondata: Icons.border_color,
                                      textsize: getsize(1),
                                      height: (height/2)/6,
                                      x: 2,
                                    ),
                                    Mywidget(
                                      text: 'Join class',
                                      icondata: Icons.library_books,
                                      textsize: getsize(2),
                                      height: (height/2)/6,
                                      x: 3,
                                    ),
                                    Mywidget(
                                      text: 'Settings',
                                      icondata: Icons.settings,
                                      textsize: getsize(3),
                                      height: (height/2)/6,
                                      x: 4,
                                    ),
                                    Mywidget(
                                      text: 'About Developer',
                                      icondata: Icons.settings_applications,
                                      textsize: getsize(4),
                                      height: (height/2)/6,
                                      x: 5,
                                    ),
                                    Mywidget(
                                      text: 'Privacy and Policy',
                                      icondata: Icons.settings_applications,
                                      textsize: getsize(5),
                                      height: (height/2)/6,
                                      x: 6,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        AnimatedPositioned(
                          duration: Duration(milliseconds: 400),
                          right: (ismenu)?10:width*0.65,
                          bottom: 30,
                          child: IconButton(
                            enableFeedback: true,
                            icon: Icon(Icons.keyboard_backspace,size: 30,color: Colors.white,),
                            onPressed: (){
                              setState(() {
                                ismenu=false;
                              });
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),

      ),
    );
  }
}


List<Classroom> lstclass=[
  Classroom('assets/education.png', 'Class A'),
  Classroom('assets/new1.jpg', 'Class B'),
  Classroom('assets/new2.jpg', 'Class C'),
  Classroom('assets/new3.png', 'Class D'),
  Classroom('assets/new4.jpg', 'Class E'),
  Classroom('assets/new5.png', 'Class F'),
  Classroom('assets/new6.png', 'Class G'),
  Classroom('assets/new7.jpg', 'Class H'),

];

class Classroom extends StatefulWidget {
  final String img,sub;
  Classroom(this.img,this.sub);
  @override
  _ClassroomState createState() => _ClassroomState();
}

class _ClassroomState extends State<Classroom> {
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Material(
        elevation: 6.0,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Enterclass(widget.img, widget.sub)));
            },
            child: Stack(
              children: <Widget>[
                Container(
                  height: 150.0,
                  width: width*0.9,
                  child: Image.asset(widget.img,fit: BoxFit.cover,),
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
                  child: Text(widget.sub,style: TextStyle(
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
    );
  }
}



//List<rowforlive> live=[
//  rowforlive('assets/itdept.jpg','IT'),
//  rowforlive('assets/aero.jpg','Aero'),
//  rowforlive('assets/civil.png','Civil'),
//  rowforlive('assets/Ece.jpg','ECE'),
//  rowforlive('assets/eee.jpg','EEE'),
//  rowforlive('assets/eandi.png','E&I'),
//];
//
//class rowforlive extends StatefulWidget {
//  final String img,sub;
//  rowforlive(this.img,this.sub);
//  @override
//  _rowforliveState createState() => _rowforliveState();
//}
//
//class _rowforliveState extends State<rowforlive> {
//  @override
//  Widget build(BuildContext context) {
//    return Padding(
//      padding: const EdgeInsets.symmetric(horizontal: 8.0),
//      child: ClipRRect(
//        borderRadius: BorderRadius.all(Radius.circular(20.0)),
//        child: Stack(
//          children: <Widget>[
//            Container(
//              height: 210.0,
//              width: 160.0,
//              child: GestureDetector(
//                  onTap: (){
//                    setState(() {
//                    });
//                  },
//                child: Image.asset(widget.img,fit: BoxFit.cover,),
//                  ),
//            ),
////            Positioned(
////              left: 0.0,
////              bottom: 0.0,
////              width: 160.0,
////              height: 210.0,
////              child: Container(
////                decoration: BoxDecoration(
////                  gradient: LinearGradient(begin:Alignment.topLeft,end: Alignment.bottomRight  ,colors: [
////                    Color(0xff9A79FE).withOpacity(0.1),Color(0xff683BEE),
////                  ]),
////                ),
////              ),
////            ),
//            Positioned(
//              left: 20.0,
//              bottom: 5.0,
//              child: Text(widget.sub,style: TextStyle(
//                fontWeight: FontWeight.bold,
//                fontSize: 20.0,
//                color: Colors.black
//              ),),
//            ),
//            Positioned(
//              right: 10.0,
//              bottom: 10.0,
//              child: ClipRRect(
//                borderRadius: BorderRadius.circular(20.0),
//                child: Container(
//                  height: 20.0,
//                  width: 20.0,
//                  color: Colors.green,
//                ),
//              ),
//            ),
//            Positioned(
//              right: 0.0,
//              top: 0.0,
//              child: Container(
//                height: 50.0,
//                width: 50.0,
//                decoration: BoxDecoration(
//                  color: Color(0xff683BEE),
//                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50.0)),
//                ),
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}



class Mywidget extends StatelessWidget {
  final String text;
  final IconData icondata;
  final double textsize;
  final double height;
  final int x;
  Mywidget({this.text,this.icondata,this.textsize,this.height,this.x});

  _displayDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Enter Class Name'),
            content: Container(
              width: 300.0,
              height: 100.0,
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(hintText: "Name"),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(hintText: "Password"),
                  ),

                ],
              ),
            ),

            actions: <Widget>[
              new FlatButton(
                child: new Text('SUBMIT'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Enterclass('assets/education.png', 'Sub1')));
                },
              )
            ],
          );
        });
  }
  _secdialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Join the class'),
            content: Container(
              width: 300.0,
              height: 100.0,
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(hintText: "Name"),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(hintText: "Password"),
                  ),

                ],
              ),
            ),

            actions: <Widget>[
              new FlatButton(
                child: new Text('SUBMIT'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Enterclass('assets/education.png', 'Sub1')));
                },
              )
            ],
          );
        });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: height,
      onPressed: (){
        if(x==2){
          _displayDialog(context);
        }
        if(x==3){
          _secdialog(context);
        }
        if(x==5){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Mydet()));
        }

      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Icon(icondata,color: Colors.white,),
          SizedBox(width: 10,),
          Text(text,style: TextStyle(color: Colors.white,fontSize: textsize),)
        ],
      ),
    );
  }
}

class drawpaint extends CustomPainter{
  final Offset offset;
  drawpaint({this.offset});
  double getcon(double width){
    if(offset.dx==0){
      return width;
    }
    else{
      return offset.dx>width?offset.dx:width+75;
    }
  }
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint=Paint()..color=Color(0xff683BEE)..style=PaintingStyle.fill;
    Path path=Path();
    path.moveTo(-size.width, 0);
    path.lineTo(size.width, 0);
    path.quadraticBezierTo(getcon(size.width),offset.dy,size.width,size.height);
    path.lineTo(-size.width, size.height);
    path.close();
    canvas.drawPath(path,paint);
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}