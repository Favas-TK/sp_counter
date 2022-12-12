import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sp_counterapp/barcode.dart';
import 'package:sp_counterapp/calender.dart';
import 'package:sp_counterapp/charts.dart';
import 'package:sp_counterapp/newpage.dart';
import 'package:sp_counterapp/pdfview.dart';
import 'package:sp_counterapp/responsvie.dart';
import 'package:sp_counterapp/url_launcherrr.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   return ScreenUtilInit(builder: (context, child) {
      return MaterialApp(

      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        primarySwatch: Colors.blueGrey,
      ),
      home: Responsivee(),
    );
   },);
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  Future loadcounter() async {
    final pref = await SharedPreferences.getInstance();
    setState(() {
      _counter = pref.getInt('counter') ?? 0;
    });
  }

  Future _incrementCounter() async {
    final pref = await SharedPreferences.getInstance();

    setState(() {
      _counter = (pref.getInt('counter') ?? 0) + 1;

      pref.setInt('counter', _counter);
    });
  }

  @override
  void initState() {
    super.initState();
    loadcounter();
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
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
