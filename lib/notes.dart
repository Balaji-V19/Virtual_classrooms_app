import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';
import 'package:path_provider/path_provider.dart';


class Notespage extends StatefulWidget {
  @override
  _NotespageState createState() => _NotespageState();
}

class _NotespageState extends State<Notespage> {
  String pathPDF = "";

  @override
  void initState() {
    super.initState();
    createFileOfPdfUrl().then((f) {
      setState(() {
        pathPDF = f.path;
        print(pathPDF);
      });
    });
  }
  Future<File> createFileOfPdfUrl() async {
    final url = "http://www.pdf995.com/samples/pdf.pdf";
    final filename = url.substring(url.lastIndexOf("/") + 1);
    var request = await HttpClient().getUrl(Uri.parse(url));
    var response = await request.close();
    var bytes = await consolidateHttpClientResponseBytes(response);
    String dir = (await getApplicationDocumentsDirectory()).path;
    File file = new File('$dir/$filename');
    await file.writeAsBytes(bytes);
    return file;
  }



  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
      child: Column(
        children: <Widget>[
          SizedBox(height: 30.0,),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text('Notes',style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold
                ),),
              ),
            ],
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
                        height: 200.0,
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
                                      Text('May 18',style: TextStyle(
                                        fontSize: 10.0,
                                      ),),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 15.0,),
                              Text("Here is the attachements for your exam, please take a look at it",style: TextStyle(
                                fontSize: 15.0,
                              ),),
                              SizedBox(height: 15.0,),
                              Text('Attachements',style: TextStyle(
                                fontSize: 15.0,fontWeight: FontWeight.bold,
                              ),),
                              SizedBox(height: 10.0,),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => PDFScreen(pathPDF)));

                                },
                                child: Material(
                                  elevation: 3.0,
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: Container(
                                      height: 30.0,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 15.0),
                                        child: Row(
                                          children: <Widget>[
                                            Icon(Icons.note_add,size: 20.0,),
                                            SizedBox(width: 20.0,),
                                            Text('Unit-1',style: TextStyle(
                                              fontSize: 15.0,
                                            ),)
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

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
                        height: 200.0,
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
                                      child: Image.asset('assets/pro2.jpg',fit: BoxFit.cover,),
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
                              Text("Here I attached some notes for second unit take a look at it",style: TextStyle(
                                fontSize: 15.0,
                              ),),
                              SizedBox(height: 15.0,),
                              Text('Attachements',style: TextStyle(
                                fontSize: 15.0,fontWeight: FontWeight.bold,
                              ),),
                              SizedBox(height: 10.0,),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => PDFScreen(pathPDF)));
                                },
                                child: Material(
                                  elevation: 3.0,
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: Container(
                                      height: 30.0,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 15.0),
                                        child: Row(
                                          children: <Widget>[
                                            Icon(Icons.note_add,size: 20.0,),
                                            SizedBox(width: 20.0,),
                                            Text('Unit-2',style: TextStyle(
                                              fontSize: 15.0,
                                            ),)
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

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
    );
  }
}

class PDFScreen extends StatelessWidget {
  String pathPDF = "";
  PDFScreen(this.pathPDF);

  @override
  Widget build(BuildContext context) {
    return PDFViewerScaffold(
        appBar: AppBar(
          title: Text("Document"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.share),
              onPressed: () {},
            ),
          ],
        ),
        path: pathPDF);
  }
}