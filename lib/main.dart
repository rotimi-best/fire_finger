import 'package:flutter/material.dart';
import 'dart:async';
// import 'package:flutter_socket_io/flutter_socket_io.dart';
// import 'package:flutter_socket_io/socket_io_manager.dart';
import './pages/home_page.dart';
// import './pages/gesture_page.dart';

void main() {
  
  // SocketIO socketIO = SocketIOManager().createSocketIO("https://rotimi-best-fluttersocket.glitch.me", "/");

  //call init socket before doing anything
	// socketIO.init();

	//connect socket
	// socketIO.connect();

  // _destroySocket() {
  //   if (socketIO != null) {
  //     SocketIOManager().destroySocket(socketIO);
  //   }
  // }



  runApp(new MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('../assets/images/splash.png')
      ),
    );
  }
}