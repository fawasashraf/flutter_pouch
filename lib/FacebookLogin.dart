// import 'package:flutter/material.dart';
// import 'package:flutter_facebook_login/flutter_facebook_login.dart' as fl;
//
// class FacebookLogin extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return FbLogin();
//   }
// }
//
// class FbLogin extends State<FacebookLogin> {
//   // static final fl.FacebookLogin facebookSignIn = new fl.FacebookLogin();
//
//   String _message = 'Log in/out by pressing the buttons below.';
//
//   // Future<Null> _login() async {
//   //   final fl.FacebookLoginResult result = await facebookSignIn.logIn(['email']);
//   //
//   //   switch (result.status) {
//   //     case fl.FacebookLoginStatus.loggedIn:
//   //       final fl.FacebookAccessToken accessToken = result.accessToken;
//   //       _showMessage('''
//   //        Logged in!
//   //
//   //        Token: ${accessToken.token}
//   //        User id: ${accessToken.userId}
//   //        Expires: ${accessToken.expires}
//   //        Permissions: ${accessToken.permissions}
//   //        Declined permissions: ${accessToken.declinedPermissions}
//   //        ''');
//   //       break;
//   //     case fl.FacebookLoginStatus.cancelledByUser:
//   //       _showMessage('Login cancelled by the user.');
//   //       break;
//   //     case fl.FacebookLoginStatus.error:
//   //       _showMessage('Something went wrong with the login process.\n'
//   //           'Here\'s the error Facebook gave us: ${result.errorMessage}');
//   //       break;
//   //   }
//   // }
//   //
//   // Future<Null> _logOut() async {
//   //   await facebookSignIn.logOut();
//   //   _showMessage('Logged out.');
//   // }
//
//   void _showMessage(String message) {
//     setState(() {
//       _message = message;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       home: new Scaffold(
//         appBar: new AppBar(
//           title: new Text('facebook login'),
//         ),
//         body: new Center(
//           child: new Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               new Text(_message),
//               new RaisedButton(
//                 // onPressed: _login,
//                 child: new Text('Log in'),
//               ),
//               new RaisedButton(
//                 // onPressed: _logOut,
//                 child: new Text('Logout'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
