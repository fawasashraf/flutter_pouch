import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class FileSave extends StatefulWidget {
  FileSave({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FilePageState createState() => _FilePageState();
}

class _FilePageState extends State<FileSave> {
  String _contentOfFile =
      "This is my demo text that will be saved to : demoTextFile.txt";

  Future<String> getFilePath() async {
    // Directory appDocumentsDirectory = await getApplicationDocumentsDirectory();
    Directory appDocumentsDirectory = await getExternalStorageDirectory();
    String appDocumentsPath = appDocumentsDirectory.path;
    String filePath = '$appDocumentsPath/demoTextFile.txt';

    // return filePath;
    return await createFolderInAppDocDir('test_pouch');
  }

  void saveFile() async {
    File file = File(await getFilePath());
    file.writeAsString(_contentOfFile);
  }

  void readFile() async {
    File file = File(await getFilePath());
    String fileContent = await file.readAsString();

    print('File Content: $fileContent');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _contentOfFile,
              textAlign: TextAlign.center,
            ),
            TextFormField(
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                filled: true,
                hintText: 'Write the text that you want to save to file',
                labelText: 'Txt to save',
              ),
              onSaved: (String value) {
                this._contentOfFile = value;
                print('abc_ Value of txt file $value or $_contentOfFile');
              },
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () => {saveFile()},
              child: Text("Save File"),
            ),
            ElevatedButton(
              onPressed: () => {readFile()},
              child: Text("Read File"),
            ),
          ],
        ),
      ),
    );
  }

  static Future<String> createFolderInAppDocDir(String folderName) async {
    //Get this App Document Directory
    final Directory _appDocDir = await getApplicationDocumentsDirectory();
    //App Document Directory + folder name
    final Directory _appDocDirFolder =
        Directory('${_appDocDir.path}/$folderName/');

    if (await _appDocDirFolder.exists()) {
      //if folder already exists return path
      return _appDocDirFolder.path;
    } else {
      //if folder not exists create folder and then return its path
      final Directory _appDocDirNewFolder =
          await _appDocDirFolder.create(recursive: true);
      return _appDocDirNewFolder.path;
    }
  }
}
