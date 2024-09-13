import 'package:flutter/material.dart';

void main() {
  runApp(RunMyApp());
}

class RunMyApp extends StatefulWidget {
  const RunMyApp({super.key});

  @override
  State<RunMyApp> createState() => _RunMyAppState();
}

class _RunMyAppState extends State<RunMyApp> {
  ThemeMode _themeMode = ThemeMode.system;
  // use this method method to change the theme
  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.pink,
        brightness: Brightness.light,
        primaryColor: const Color.fromARGB(255, 240, 8, 120),
        fontFamily: 'Inter',
      ),

      // standard dark theme
      darkTheme: ThemeData.dark(),
      themeMode: _themeMode,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Awa awa!'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Choose your theme:',
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // Create two buttons here and change the theme when the button is pressed. use children[] and create two button inside it.
                  children: [
                  ElevatedButton(
                    onPressed: () {
                      changeTheme(ThemeMode.light);
                    },
                    child: Text('My Light Theme'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      changeTheme(ThemeMode.dark);
                    },
                    child: Text('My Dark Theme'),
                  ),
            ],),],
          ),
        ),
      ),
    );
  }
}
