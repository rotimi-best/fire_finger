import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10,10,10,10),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: <Widget>[
                    Container(
                      child: Image.asset('assets/icon/arrow.png'),
                      padding: EdgeInsets.only(right: 30),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(35,0,35,0),
                      child: Text(
                        'Natasha',
                        style: TextStyle(
                          color: Colors.red[800],
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.none
                        ),
                      ),
                    ),
                    Container(
                      child: Image.asset('assets/icon/union.png'),
                      padding: EdgeInsets.only(left: 20),
                    ),
                    ]
                  ),
                ),
                Container(
                  child: Image.asset('assets/icon/line.png'),
                ),
                SizedBox(height: 180, width: 20,),
                Text(
                  'Touch',
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 24.0,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.none
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}