import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_pouch/BottomNavFab.dart';
import 'package:flutter_pouch/ButtonSounds.dart';
import 'package:flutter_pouch/DataTableExample.dart';
import 'package:flutter_pouch/DialogSamples.dart';
import 'package:flutter_pouch/DropDownButtonExample.dart';
import 'package:flutter_pouch/FacebookLogin.dart';
import 'package:flutter_pouch/FileSave.dart';
import 'package:flutter_pouch/NavigationDrawer.dart';
import 'package:flutter_pouch/SearchBarSample.dart';
import 'package:flutter_pouch/SignaturePad.dart';
import 'package:flutter_pouch/SnackPage.dart';
import 'package:backdrop/backdrop.dart';
import 'package:flutter_pouch/dropdown_popup.dart';
import 'package:image_picker/image_picker.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'AnimatedContainer.dart';
import 'AuthSample.dart';
import 'CustomAppBar.dart';
import 'DismissibleList.dart';
import 'ExpandingTiles.dart';
import 'FloatingPanel.dart';
import 'FormSample.dart';
import 'GridListSample.dart';
import 'ListSortSample.dart';
import 'Quotes.dart';
import 'StatefulWidgetsExample.dart';

class FirstPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FirstPageState();
  }
}

class FirstPageState extends State<FirstPage> with TickerProviderStateMixin {
  bool showNextButton = false;
  bool showNameLabel = false;
  bool alignTop = false;
  bool increaseLeftPadding = false;
  bool showGreetings = false;
  bool showQuoteCard = false;
  String name = '';

  double screenWidth;
  double screenHeight;
  String quote;

  @override
  void initState() {
    super.initState();
    Random random = new Random();
    int quoteIndex = random.nextInt(Quotes.quotesArray.length);
    quote = Quotes.quotesArray[quoteIndex];
  }

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Utilities list",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      )),
                  background: Image.network(
                    "https://c4.wallpaperflare.com/wallpaper/550/53/227/movies-tangled-disney-animated-movies-wallpaper-preview.jpg",
                    fit: BoxFit.cover,
                  )),
            ),
            // Create a SliverList.
            SliverList(
              // Use a delegate to build items as they're scrolled on screen.
              delegate: SliverChildBuilderDelegate(
                // The builder function returns a ListTile with a title that
                // displays the index of the current item.
                (context, index) => ListTile(
                  title: (() {
                    if (index == 0) {
                      return Text('☛ Form Sample');
                    } else if (index == 1) {
                      return Text('☛ Drop down buttons');
                    } else if (index == 2) {
                      return Text('☛ Sliders and other Stateful widgets');
                    } else if (index == 3) {
                      return Text('☛ Snackbar');
                    } else if (index == 4) {
                      return Text('☛ GridList');
                    } else if (index == 5) {
                      return Text('☛ Expanding tiles');
                    } else if (index == 6) {
                      return Text('☛ Dismissible list');
                    } else if (index == 7) {
                      return Text('☛ List Sort and Reorder');
                    } else if (index == 8) {
                      return Text('☛ Data Table sample');
                    } else if (index == 9) {
                      return Text('☛ Bottom Nav & Fab');
                    } else if (index == 10) {
                      return Text('☛ SearchBar');
                    } else if (index == 11) {
                      return Text('☛ BackDrop');
                    } else if (index == 12) {
                      return Text('☛ Image Picker');
                    } else if (index == 13) {
                      return Text('☛ Navigation Drawer');
                    } else if (index == 14) {
                      return Text('☛ Dialog Samples');
                    } else if (index == 15) {
                      return Text('☛ Authentication');
                    } else if (index == 16) {
                      return Text('☛ Coachmark/ Highlighter');
                    } else if (index == 17) {
                      return Text('☛ Facebook Login');
                    } else if (index == 18) {
                      return Text('☛ Button Sounds');
                    } else if (index == 19) {
                      return Text('☛ Signature pad');
                    } else if (index == 20) {
                      return Text('☛ Floating panel');
                    } else if (index == 21) {
                      return Text('☛ Animated Container');
                    } else if (index == 22) {
                      return Text('☛ Saving files to path');
                    } else if (index == 23) {
                      return Text('☛ Dropdown Popup');
                    } else {
                      return Text('Item #$index');
                    }
                  }()),
                  onTap: () {
                    switch (index) {
                      case 0:
                        redirectPage(() => FormSample());
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => FormSample()),
                        // );
                        break;
                      case 1:
                        redirectPage(() => DropdownButtonExample());
                        break;
                      case 2:
                        redirectPage(() => StatefulWidgetsExample());
                        break;
                      case 3:
                        redirectPage(() => SnackPage());
                        break;
                      case 4:
                        redirectPage(() => GridListSample());
                        break;
                      case 5:
                        redirectPage(() => ExpandingTiles());
                        break;
                      case 6:
                        redirectPage(() => DismissibleList());
                        break;
                      case 7:
                        redirectPage(() => ListSortSample());
                        break;
                      case 8:
                        redirectPage(() => DataTableExample());
                        break;
                      case 9:
                        redirectPage(() => BottomNavFab());
                        break;
                      case 10:
                        redirectPage(() => SearchBarSample());
                        break;
                      case 11:
                        redirectPage(() => BackDropSample());
                        break;
                      case 12:
                        redirectPage(() => ImagePickerExample());
                        break;
                      case 13:
                        redirectPage(() => NavigationDrawer());
                        break;
                      case 14:
                        redirectPage(() => DialogSamples());
                        break;
                      case 15:
                        redirectPage(() => AuthSample());
                        break;
                      case 16:
                        redirectPage(
                            () => AuthSample()); //todo coming soon page
                        break;
                      case 17:
                        redirectPage(
                            () => AuthSample()); //todo coming soon page
                        break;
                      case 18:
                        redirectPage(() => ButtonSounds());
                        break;
                      case 19:
                        redirectPage(() => SignaturePad());
                        break;
                      case 20:
                        redirectPage(() => FloatingPanel());
                        break;
                      case 21:
                        redirectPage(() => AnimatedContainerClass());
                        break;
                      case 22:
                        redirectPage(() => FileSave(title: "File save sample"));
                        break;
                      case 23:
                        redirectPage(() => DropdownPopupSample());
                        break;
                      default:
                        showToast("index $index clicked!");
                    }
                  },
                ),
                // Builds 1000 ListTiles
                childCount: 100,
              ),
            )
          ];
        },
        body: Center(
            child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightGreen,
              textStyle: TextStyle(color: Colors.white),
              padding: EdgeInsets.all(8.0)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },
          child: Text(
            "Next page",
            style: TextStyle(fontSize: 20.0),
          ),
        )),
      ),
    );

//     return Scaffold(
//       appBar: _getAppBar(),
//       body: Stack(
//         children: <Widget>[
//           Align(
//             alignment: Alignment.topLeft,
//             child: _getGreetingLabelWidget(),
//           ),
//           _getAnimatedAlignWidget(),
// /*          Align(
//             alignment: Alignment.center,
//             child: _getQuoteCardWidget(),
//           ),*/
//           _getAnimatedPositionWidget(),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: _getAnimatedOpacityButton(),
//           )
//         ],
//       ),
//     );
  }

  _getAnimatedOpacityButton() {
    return AnimatedOpacity(
      duration: Duration(seconds: 1),
      // reverseDuration: Duration(seconds: 1),
      curve: Curves.easeInOut,
      opacity: showNextButton ? 1 : 0,
      child: _getButton(),
    );
  }

  _getAnimatedCrossfade() {
    return AnimatedCrossFade(
      duration: Duration(seconds: 1),
      alignment: Alignment.center,
      reverseDuration: Duration(seconds: 1),
      firstChild: _getNameInputWidget(),
      firstCurve: Curves.easeInOut,
      secondChild: _getNameLabelWidget(),
      secondCurve: Curves.easeInOut,
      crossFadeState:
          showNameLabel ? CrossFadeState.showSecond : CrossFadeState.showFirst,
    );
  }

  _getAnimatedAlignWidget() {
    return AnimatedAlign(
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
      alignment: alignTop ? Alignment.topLeft : Alignment.center,
      child: _getAnimatedPaddingWidget(),
    );
  }

  _getAnimatedPaddingWidget() {
    return AnimatedPadding(
      duration: Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
      padding: increaseLeftPadding
          ? EdgeInsets.only(left: 28.0)
          : EdgeInsets.only(left: 0),
      child: _getAnimatedCrossfade(),
    );
  }

  _getNameLabelWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
          width: screenWidth / 2,
          height: 75.0,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              name,
              style: TextStyle(fontSize: 18.0, color: Colors.black54),
            ),
          )),
    );
  }

  _getNameInputWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: screenWidth / 2,
        height: 75.0,
        child: Center(
          child: TextField(
            decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightGreen),
                ),
                hintText: 'Your name'),
            textAlign: TextAlign.left,
            textCapitalization: TextCapitalization.words,
            onChanged: (v) {
              name = v;
              if (v.length > 0) {
                setState(() {
                  showNextButton = true;
                });
              } else {
                setState(() {
                  showNextButton = false;
                });
              }
            },
          ),
        ),
      ),
    );
  }

  _getGreetingLabelWidget() {
    return AnimatedOpacity(
      duration: Duration(milliseconds: 500),
      curve: Curves.fastOutSlowIn,
      opacity: showGreetings ? 1.0 : 0.0,
      child: Padding(
        padding: EdgeInsets.only(
          left: 8.0,
        ),
        child: Container(
            width: screenWidth / 2,
            height: 75.0,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Hi,",
                style: TextStyle(fontSize: 18.0, color: Colors.black54),
              ),
            )),
      ),
    );
  }

  _showGreetings() {
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        showGreetings = true;
      });
    });
  }

  _increaseLeftPadding() {
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        increaseLeftPadding = true;
      });
    });
  }

  _getAnimatedPositionWidget() {
    return AnimatedPositioned(
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
      child: _getQuoteCardWidget(),
      top: showQuoteCard ? screenHeight / 2 - 100 : screenHeight,
      left: !showQuoteCard ? screenWidth / 2 : 12,
    );
  }

  _getQuoteCardWidget() {
    return Card(
      color: Colors.green,
      elevation: 8.0,
      child: _getAnimatedSizeWidget(),
    );
  }

  _getAnimatedSizeWidget() {
    return AnimatedSize(
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
      vsync: this,
      child: _getQuoteContainer(),
    );
  }

  _getQuoteContainer() {
    return Container(
      height: showQuoteCard ? 100 : 0,
      width: showQuoteCard ? screenWidth - 32 : 0,
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            quote,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w400, fontSize: 14),
          ),
        ),
      ),
    );
  }

  _showQuote() {
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        showQuoteCard = true;
      });
    });
  }

  _getButton() {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: FloatingActionButton(
        onPressed: () {
          setState(() {
            showNameLabel = true;
            alignTop = true;
          });
          _increaseLeftPadding();
          _showGreetings();
          _showQuote();
        },
        mini: true,
        child: Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
        backgroundColor: Colors.redAccent,
      ),
    );
  }

  _getAppBar() {
    return AppBar(
      title: Text(
        "Animated Widgets",
        style: TextStyle(
            color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),
      ),
      // backgroundColor: Colors.blue,
      backgroundColor: const Color(0xFF97C662),
    );
  }

  void redirectPage(Widget Function() createPage) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return createPage();
    }));
  }
}

void showToast(String message) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: const Color(0x88000000),
    textColor: Colors.white,
  );
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

class BackDropSample extends StatelessWidget {
  const BackDropSample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      title: Text('Backdrop demo'),
      iconPosition: BackdropIconPosition.action,
      // Height of front layer when backlayer is shown.
      headerHeight: 120.0,
      frontLayer: Center(
          child: Text(
              '(front layer) \n Click top-right button to show back layer.\n\n'
              "There's no flutter official backdrop widget, this demo uses the "
              "'backdrop' package.")),
      backLayer: Center(child: Text('(back layer)')),
    );
  }
}

class ImagePickerExample extends StatefulWidget {
  const ImagePickerExample({Key key}) : super(key: key);

  @override
  _ImagePickerExampleState createState() => _ImagePickerExampleState();
}

class _ImagePickerExampleState extends State<ImagePickerExample> {
  File _imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new CustomAppBar(text: "Image Picker"),
        body: ListView(
          children: <Widget>[
            ButtonBar(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.photo_camera),
                  onPressed: () async => await _pickImageFromCamera(),
                  tooltip: 'Shoot picture',
                ),
                IconButton(
                  icon: Icon(Icons.photo),
                  onPressed: () async => await _pickImageFromGallery(),
                  tooltip: 'Pick from gallery',
                ),
              ],
            ),
            this._imageFile == null
                ? Placeholder()
                : Image.file(this._imageFile),
          ],
        ));
  }

  Future<Null> _pickImageFromGallery() async {
    // final File imageFile =
    // await ImagePicker.pickImage(source: ImageSource.gallery);
    // setState(() => this._imageFile = imageFile);
  }

  Future<Null> _pickImageFromCamera() async {
    // final File imageFile =
    // await ImagePicker.(source: ImageSource.camera);
    // setState(() => this._imageFile = imageFile);
  }
}
