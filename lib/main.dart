import 'package:flutter/material.dart';
import 'package:flutter_pouch/SplashScreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'FirstPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const MaterialColor kPrimaryColor = const MaterialColor(
    0xFF1D3326,
    const <int, Color>{
      50: const Color(0xFF1D3326),
      100: const Color(0xFF1D3326),
      200: const Color(0xFF1D3326),
      300: const Color(0xFF1D3326),
      400: const Color(0xFF1D3326),
      500: const Color(0xFF1D3326),
      600: const Color(0xFF1D3326),
      700: const Color(0xFF1D3326),
      800: const Color(0xFF1D3326),
      900: const Color(0xFF1D3326),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Pouch',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primarySwatch: Colors.black,
        primarySwatch: kPrimaryColor,
        accentColor: Colors.lightGreen,
      ),
      home: SplashScreen(),
      localizationsDelegates: [
      // ... app-specific localization delegate[s] here
      // TODO: uncomment the line below after codegen
      // AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''), // English, no country code
        const Locale('ar', ''), // Arabic, no country code
        const Locale.fromSubtags(languageCode: 'zh'), // Chinese *See Advanced Locales below*
        // ... other locales the app supports
      ],
    );
  }
}
