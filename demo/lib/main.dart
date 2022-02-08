import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    home : Scaffold(
      appBar : AppBar(
        title : Text("Hello Word"),
        centerTitle : true,
        backgroundColor : Colors.red[600],
      ),
      body : Center(
          child : Image(
            image: AssetImage('assets/image4.jpg'),
            ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text('click'),
        backgroundColor: Colors.red[600],)
      ),
  ),
  );
}


///This code is for fontstlye

/*
  body : Center(
                child : Text(
                'Hello Flutter Learining is started',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: Colors.grey[600],
                  fontFamily: 'IndieFlower'
                ),),
            ),

*/

