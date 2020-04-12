import 'package:documents_picker/documents_picker.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';


class Uploadnotes extends StatefulWidget {
  @override
  _UploadnotesState createState() => _UploadnotesState();
}

class _UploadnotesState extends State<Uploadnotes> {
  List<String> docPaths;

  void _getDocuments() async {
    docPaths = await DocumentsPicker.pickDocuments;

    if (!mounted) return;
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload File'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              color: Colors.purple,
              child: Text('Get documents',style: TextStyle(
                color: Colors.white
              ),),
              onPressed: (){
                _handleCameraAndMic();
                _getDocuments();
              },
            ),
            docPaths!=null?Text('hello'):Text(''),

          ],
        ),
      ),
    );
  }
  Future<void> _handleCameraAndMic() async {
    await PermissionHandler().requestPermissions(
      [PermissionGroup.storage,PermissionGroup.mediaLibrary],
    );
  }
}
