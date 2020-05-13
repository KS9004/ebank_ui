import 'package:flutter/material.dart';

class ContainerCard extends StatelessWidget {
  ContainerCard({this.color,this.icon,this.text,this.onTap}) ;
  final Color color;
  final IconData icon;
  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.all(2.0),
          decoration: BoxDecoration(
            color:color,
            borderRadius:BorderRadius.circular(15.0),
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(icon,color: Colors.white,),
              SizedBox(
                height: 15.0,
              ),
              Text('$text',style: TextStyle(
                  color: Color(0xffE9F0FF),
                  fontSize: 20.0
              ),

              ),

            ],
          ),
        ),
      ),
    );
  }
}
