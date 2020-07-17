
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'controls.dart';
class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override

  Widget build(BuildContext context) {
    UserTools ctrl=UserTools();
    return Scaffold(

      resizeToAvoidBottomInset: false,
      body: Container(
        //show the image at that background
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/screen1.jpg"),
            colorFilter: ColorFilter.mode(Colors.black12.withOpacity(0.7), BlendMode.dstATop),
            fit: BoxFit.cover,
          ),
        ),

        child: Center(
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
             Container(
              margin: EdgeInsets.only(top: 120.0,bottom: 40.0),
             decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(15),
             color: Colors.black26.withOpacity(0.5),
                   ),
           //margin: EdgeInsets.all(30.0),
         // padding: EdgeInsets.all(30.0),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               Container(
  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
       child:
             Text(
  "Propel your Business \n "
      "to the Next Level",
    textAlign: TextAlign.center,
  style: TextStyle(
    color: Colors.white,
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.3,

  ),
),
),
               Container(
                 padding: EdgeInsets.fromLTRB(20, 15, 20, 60),
                child: Text(
                   "Find out what you need to \n "
                       "increase the annual turnover for \n"
                       "your business", textAlign: TextAlign.center,
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 15.0,
                     fontWeight: FontWeight.w300,
                     letterSpacing: 0.3,
                   ),
                 ),
               ),
              ],
            ),
          ),
                Container(
                  margin: EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                     Text("____",
                       textAlign: TextAlign.center,
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 16.0,
                         fontWeight: FontWeight.bold,
                         //letterSpacing: 0.3,
                       ),
                     ),
                   //  sizedBox(width:40.0),
                      Text("____"),
                    ],
                  ),

                ),
                Container(
               child:   Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: <Widget>[
                 //  SizedBox(height: 50),
                   RaisedButton(
                        shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(7)),
                        textColor: Colors.white,
                        color:Colors.transparent,
                        child: Text('Register'),
                        onPressed: () {
                          //go through validations and ...

                        },
                      ),
                   RaisedButton(
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(7)),
                     textColor: Colors.white,
                     color:ctrl.color1,
                     child: Text('Login'),
                     onPressed: () {
                       //go through validations and ...

                     },
                   ),
                 ],
               ),
                ),
              ] ),
        ),
      ),
    );
  }


}
