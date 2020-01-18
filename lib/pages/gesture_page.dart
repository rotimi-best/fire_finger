
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_socket_io/flutter_socket_io.dart';

class GesturePage extends StatefulWidget {
  final SocketIO socketIO;
  GesturePage({ @required this.socketIO});

  @override
  _GesturePageState createState() => _GesturePageState();
}

class _GesturePageState extends State<GesturePage> {
  void _onVerticalDragUpdate(BuildContext context, DragUpdateDetails update) {
    print("\nonVerticalDragUpdate");
    Offset offset = update.globalPosition;
    String jsonData = '{"x": ${offset.dx.toString()}, "y": ${offset.dy.toString()}}';
    widget.socketIO.sendMessage("onVerticalDragUpdate", jsonData);
    print(jsonData);
  }

  void _onHorizontalDragUpdate(BuildContext context, DragUpdateDetails update) {
    print("\nonHorizontalDragUpdate");
    Offset offset = update.globalPosition;
    String jsonData = '{"x": ${offset.dx.toString()}, "y": ${offset.dy.toString()}}';
    widget.socketIO.sendMessage("onHorizontalDragUpdate", jsonData);
    print(offset);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text('Ossystem Screen Sharer'),
      ),
      body: Center(
        child: GestureDetector(
          onVerticalDragUpdate: (DragUpdateDetails update) => _onVerticalDragUpdate(context, update),
          onHorizontalDragUpdate: (DragUpdateDetails update) => _onHorizontalDragUpdate(context, update),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Center(child: Text('Do anything')),
          ),
        ),
        // child: Text("Make any gesture",
        //   style: TextStyle(
        //     color: Colors.black,
        //     fontSize: 40.0,
        //     fontStyle: FontStyle.normal,
        //   ),
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_shopping_cart),
        elevation: 10.0,
        onPressed: () {
          print('Okay adding to the shopping cart');
        },
      ),
      drawer: Drawer(
          elevation: 16.0,
          child: Column(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Rotimi Best"),
                accountEmail: Text("rb.ossystem@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text("RB"),
                ),
                otherAccountsPictures: <Widget>[
                  CircleAvatar(
                      child: Text('rb'),
                      backgroundColor: Colors.white60,
                    )
                ],
              ),
              ListTile(
                title: new Text("All inboxes"),
                leading: new Icon(Icons.mail),
              ),
              Divider(
                height: 0.1,
              ),
              ListTile(
                title: new Text("Sent"),
                leading: new Icon(Icons.mail),
              ),
              ListTile(
                title: new Text("Social"),
                leading: new Icon(Icons.people),
              ),
              ListTile(
                title: new Text("Promotions"),
                leading: new Icon(Icons.local_gas_station),
              ),
            ],
          ),
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}