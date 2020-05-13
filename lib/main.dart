import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cards.dart';
import 'button.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-bank',
      home: EBank(),
    );
  }
}
class EBank extends StatefulWidget {
  @override
  _EBankState createState() => _EBankState();
}

class _EBankState extends State<EBank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Card(
              child: ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage('images/boy.png') ,),
                title: Text('Good Morning, Haong!',style: TextStyle(
                  color: Color(0xff644F86),
                ),),
                trailing: Icon(Icons.notifications,color: Color(0xff31135E),),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xffF6F2FF),
              ),
              margin: EdgeInsets.all(15.0),
              padding: EdgeInsets.only(left: 10.0,top: 10.0,bottom: 10.0),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Account balance',style:kTextStyle
                  ),
                  Row(
                    children: <Widget>[
                      Text('72,232,661,000 VND',style: TextStyle(
                        color:Color(0xff381A63),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),),
                    ],
                  ),
                  Text('Account number',style: kTextStyle),
                  Row(
                    children: <Widget>[
                      Text('023 123 0512',style: TextStyle(
                        color:Color(0xff381A63),
                        fontSize: 20.0,
                      ),),
                    ],
                  ),

                ],
              ),
            ),
            Expanded(
              child: Row(

                children: <Widget>[
                  ContainerCard(icon: FontAwesomeIcons.moneyBill,color:Color(0xff0F62FE),text: 'Transfer',onTap: (){},),
                  ContainerCard(icon: FontAwesomeIcons.ccMastercard,color: Color(0xff42BE65),text: 'Cards'),
                  ContainerCard(icon: FontAwesomeIcons.moneyCheck,color: Color(0xffFA4D56),text: 'Transaction'),
                ],
              ),
            ),
           Container(

             margin: EdgeInsets.all(5.0),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(15.0),
               border: Border.all(
                 width: 2,

               ),
               color: Colors.white30,
             ),
             child: Column(
               children: <Widget>[
                 Row(
                   children: <Widget>[
                     CircularButtonIcon(color: Color(0xff78A9FF),icon:FontAwesomeIcons.mobile,buttonText: 'Top-up',),
                     CircularButtonIcon(color: Color(0xffFF8389),icon:FontAwesomeIcons.solidMoneyBillAlt,buttonText: 'Bills',),
                     CircularButtonIcon(color: Color(0xffBE95FF),icon:FontAwesomeIcons.wallet,buttonText: 'E-wallet',),
                   ],
                 ),
                 Row(
                   children: <Widget>[
                     CircularButtonIcon(color: Color(0xff6FDC8C),icon:FontAwesomeIcons.save,buttonText: 'Savings',),
                     CircularButtonIcon(color: Color(0xffFDDC69),icon:FontAwesomeIcons.moneyBillAlt,buttonText: 'Loans',),
                     CircularButtonIcon(color: Color(0xffFF7EB6),icon:FontAwesomeIcons.gift,buttonText: 'Gifts',),
                   ],
                 ),
               ],
             ),
           ),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(

        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user),
            title: Text('Profile'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.inbox),
            title: Text('Inbox'),
          ),



        ],
      ),
    );
  }
}



