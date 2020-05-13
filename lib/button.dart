import 'package:flutter/material.dart';
import 'constant.dart';

class CircularButtonIcon extends StatelessWidget {
  CircularButtonIcon({this.icon,this.color,this.buttonText});
  final IconData icon;
  final Color color;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            ClipOval(
              child: Material(
                color: color, // button color
                child: InkWell(
                  splashColor: Colors.red, // inkwell color
                  child: SizedBox(width: 70, height: 70, child: Icon(icon,size: 35.0,)),
                  onTap: () {},
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text('$buttonText',style: kCircularButtonTextStyle,),
          ],
        ),
      ),
    );
  }
}
