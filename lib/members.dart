import 'package:flutter/material.dart';

class Members extends StatefulWidget {
  @override
  _MembersState createState() => _MembersState();
}

class _MembersState extends State<Members> {
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0,),
            Padding(
              padding: const EdgeInsets.only(left: 10.0,top: 30.0),
              child: Row(
                children: <Widget>[
                  Text('Teachers',style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
            ),
            Material(
              elevation: 6.0,
              child: Container(
                width: width,
                height: 70,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40.0),
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          child: Image.asset('assets/pro1.jpg',fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Arun',style: TextStyle(
                            fontSize: 15.0,fontWeight: FontWeight.bold
                          ),),
                          Text('Mar 10',style: TextStyle(
                            fontSize: 10.0,
                          ),),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),
            Material(
              elevation: 6.0,
              child: Container(
                width: width,
                height: 70,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40.0),
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          child: Image.asset('assets/pro2.jpg',fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Nitisha',style: TextStyle(
                              fontSize: 15.0,fontWeight: FontWeight.bold
                          ),),
                          Text('Mar 10',style: TextStyle(
                            fontSize: 10.0,
                          ),),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),
            Material(
              elevation: 3.0,
              child: Container(
                width: width,
                height: 70,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40.0),
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          child: Image.asset('assets/pro3.jpg',fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Adam',style: TextStyle(
                              fontSize: 15.0,fontWeight: FontWeight.bold
                          ),),
                          Text('Mar 10',style: TextStyle(
                            fontSize: 10.0,
                          ),),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0,top: 30.0),
              child: Row(
                children: <Widget>[
                  Text('Students',style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
            ),
            Material(
              elevation: 6.0,
              child: Container(
                width: width,
                height: 70,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40.0),
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          child: Image.asset('assets/pro1.jpg',fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Balaji',style: TextStyle(
                              fontSize: 15.0,fontWeight: FontWeight.bold
                          ),),
                          Text('Mar 10',style: TextStyle(
                            fontSize: 10.0,
                          ),),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),
            Material(
              elevation: 6.0,
              child: Container(
                width: width,
                height: 70,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40.0),
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          child: Image.asset('assets/pro2.jpg',fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Abishek',style: TextStyle(
                              fontSize: 15.0,fontWeight: FontWeight.bold
                          ),),
                          Text('Mar 10',style: TextStyle(
                            fontSize: 10.0,
                          ),),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),
            Material(
              elevation: 6.0,
              child: Container(
                width: width,
                height: 70,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40.0),
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          child: Image.asset('assets/pro3.jpg',fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Abiram',style: TextStyle(
                              fontSize: 15.0,fontWeight: FontWeight.bold
                          ),),
                          Text('Mar 10',style: TextStyle(
                            fontSize: 10.0,
                          ),),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),
            Material(
              elevation: 6.0,
              child: Container(
                width: width,
                height: 70,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40.0),
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          child: Image.asset('assets/pro4.jpg',fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Ajay',style: TextStyle(
                              fontSize: 15.0,fontWeight: FontWeight.bold
                          ),),
                          Text('Mar 10',style: TextStyle(
                            fontSize: 10.0,
                          ),),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),
            Material(
              elevation: 6.0,
              child: Container(
                width: width,
                height: 70,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40.0),
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          child: Image.asset('assets/pro5.png',fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Anitha',style: TextStyle(
                              fontSize: 15.0,fontWeight: FontWeight.bold
                          ),),
                          Text('Mar 10',style: TextStyle(
                            fontSize: 10.0,
                          ),),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),
            Material(
              elevation: 6.0,
              child: Container(
                width: width,
                height: 70,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40.0),
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          child: Image.asset('assets/pro6.png',fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Bhagya',style: TextStyle(
                              fontSize: 15.0,fontWeight: FontWeight.bold
                          ),),
                          Text('Mar 10',style: TextStyle(
                            fontSize: 10.0,
                          ),),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),
            Material(
              elevation: 6.0,
              child: Container(
                width: width,
                height: 70,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40.0),
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          child: Image.asset('assets/pro1.jpg',fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Konika',style: TextStyle(
                              fontSize: 15.0,fontWeight: FontWeight.bold
                          ),),
                          Text('Mar 10',style: TextStyle(
                            fontSize: 10.0,
                          ),),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),
            Material(
              elevation: 6.0,
              child: Container(
                width: width,
                height: 70,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40.0),
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          child: Image.asset('assets/pro2.jpg',fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Hari',style: TextStyle(
                              fontSize: 15.0,fontWeight: FontWeight.bold
                          ),),
                          Text('Mar 10',style: TextStyle(
                            fontSize: 10.0,
                          ),),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),
            Material(
              elevation: 6.0,
              child: Container(
                width: width,
                height: 70,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40.0),
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          child: Image.asset('assets/pro3.jpg',fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Evelyn',style: TextStyle(
                              fontSize: 15.0,fontWeight: FontWeight.bold
                          ),),
                          Text('Mar 10',style: TextStyle(
                            fontSize: 10.0,
                          ),),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }
}



List<students> std=[
  students('Balaji', 'assets/pro1.jpg'),
  students('Abishek', 'assets/pro2.jpg'),
  students('Abiram', 'assets/pro3.jpg'),
  students('Ajay', 'assets/pro4.jpg'),
  students('Anitha', 'assets/pro5.png'),
  students('Bhagya', 'assets/pro6.png'),
  students('Konika', 'assets/pro1.jpg'),
  students('Hari', 'assets/pro2.jpg'),
  students('Evelyn', 'assets/pro3.jpg'),
];

class students extends StatefulWidget {
  final String name,pro;
  students(this.name,this.pro);
  @override
  _studentsState createState() => _studentsState();
}

class _studentsState extends State<students> {
  @override
  Widget build(BuildContext context)  {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Material(
      elevation: 6.0,
      child: Container(
        width: width,
        height: 70,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40.0),
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  child: Image.asset(widget.pro,fit: BoxFit.cover,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(widget.name,style: TextStyle(
                    fontSize: 20.0,
                  ),),
                  Text('Mar 10',style: TextStyle(
                    fontSize: 12.0,
                  ),),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
