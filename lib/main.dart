import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      debugShowCheckedModeBanner: false,
      title: 'Mi foto',
      theme: ThemeData(
        // Application theme data, you can set the colors for the application as
        // you want
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'App mi foto'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(100, 0, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                  child: Container(
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color(0xFF55B9F9),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: const Color(0xFFFF0000),
                        width: 6,
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 27, 0, 0),
                      child: Text(
                        'Jorge Baylon',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Container(
                    width: 100,
                    height: 8,
                    decoration: BoxDecoration(
                      color: const Color(0xFF1010C9),
                      border: Border.all(
                        color: const Color(0xFF1010C9),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      color: Color(0xFFEEEEEE),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            'https://raw.githubusercontent.com/JorgeBaylon/yo/main/yoo/yo.png',
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                          child: Container(
                            width: 200,
                            height: 8,
                            decoration: BoxDecoration(
                              color: const Color(0xFF1010C9),
                              border: Border.all(
                                color: const Color(0xFF1010C9),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                      color: const Color(0xFF55B9F9),
                      borderRadius: BorderRadius.circular(0),
                      border: Border.all(
                        color: const Color(0xFFFF0000),
                        width: 6,
                      ),
                    ),
                    child: const Text(
                      '6to J Programacion',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
