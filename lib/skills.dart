import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Skills extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF16171a),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.transparent,
            title: Padding(
              padding: const EdgeInsets.fromLTRB(0,10, 0,0),
              child: Text('Achievements',
                style: TextStyle(
                  color: Color(0xFFf2f2fa),
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontStyle: FontStyle.normal,
                ),),
            ),

          ),
        ),
      ),
    );

  }

}