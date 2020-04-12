import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:vclassroom/classhome.dart';
import 'package:vclassroom/members.dart';
import 'package:vclassroom/notes.dart';


class Enterclass extends StatefulWidget {

  final String img,name;
  Enterclass(this.img,this.name);
  @override
  _EnterclassState createState() => _EnterclassState();
}

class _EnterclassState extends State<Enterclass> {
  static String im,na;

  @override
  void initState() {
    im=widget.img;
    na=widget.name;
    print(im);
    print(na);
    // TODO: implement initState
    super.initState();
  }
  Widget showpage=new Classhome(imgdata: im,name: na,);
  Classhome _classhome=new Classhome(imgdata: im,name: na,);
  Notespage _notespage=new Notespage();
  Members _members=new Members();

  Widget Pagechooser(index){
    switch(index){
      case 0:
        return _notespage;
        break;
      case 1:
        return _classhome;
        break;
      case 2:
        return _members;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        items: <Widget>[
          Icon(Icons.chrome_reader_mode,size: 30.0,),
          Icon(Icons.home, size: 30.0,),
          Icon(Icons.person_pin,size: 30.0,),

        ],
        height: 60.0,
        index: 1,
        color: Color(0xff683BEE),
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        buttonBackgroundColor: Color(0xff683BEE),
        onTap: (index){
          setState(() {
            showpage=Pagechooser(index);
          });
        },
      ),
      body:Container(
          color: Colors.white,
          child: showpage
      ),
    );
  }
}
