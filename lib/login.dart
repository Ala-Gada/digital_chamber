import 'package:flutter/material.dart';
import 'controls.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/screen3.jpg"),
            //colorFilter: ColorFilter.mode(Colors.black12.withOpacity(0.7), BlendMode.dstATop),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
           mainAxisAlignment: MainAxisAlignment.end,
           // crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
                     getCard(),
            ] ),
      ),
    );
  }

  //TextEditingController _emailController = TextEditingController();
 // TextEditingController _passwordController = TextEditingController();
  UserTools ctrl =UserTools();

 // void backToMainPage(context) {
  //  Navigator.pop(context);
  //}

  getCard() {
    return Container(
padding: EdgeInsets.only(left:30.0,right:30.0,top: 10.0),
      decoration: BoxDecoration(color: Colors.white,
      borderRadius:BorderRadius.only(
          topLeft: Radius.circular(20.5),
          topRight: Radius.circular(20.5)
      )
      ),
      child:  Column(

        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10.0) ,
            child:  TextField(
              //controller: _emailController,
              decoration: InputDecoration(
                  labelText: 'Email',
                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color:ctrl.color1))
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0) ,
            child: TextField(
              //  controller: _passwordController,
              decoration: InputDecoration(
                  labelText: 'Password',
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color:ctrl.color1))
              ),
              obscureText: true,
            ),
          ),
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(top: 20.0,right: 0.0) ,
              child: FlatButton(
                textColor: ctrl.color2,
                child: Text('forgot Password?',textDirection: TextDirection.ltr,style: TextStyle(fontStyle: FontStyle.italic),),
                onPressed: (){
                  //forgot password screen
                },
          ),
            ),
          RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7)),
            textColor: Colors.white,
            color:ctrl.color1,
            child: Text('Login'),
            onPressed: () {
              //go through validations and ...
             setState(() {
              isLoading=true;
             });
             // signIn(_emailController.text,_passwordController.text);
             // Navigator.pop(context);
              },
          ),
          Container(
margin: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Does not have account?',
                    style: TextStyle(
                        color:ctrl.color2
                    ),
                  ),
                  FlatButton(
                    textColor: ctrl.color1,
                    child: Text(
                      'Sign up',
                     // style: TextStyle(fontSize: 15),
                    ),
                    onPressed: () {
                      //signup screen
                      //SignUpScreen();
                    },
                  )
                ],
              )
          ),
        ],
      ),
    );
  }
bool isLoading=false;
  /* signIn(String email, password) async{
     Map data={
       'email':email,
       'password':password,
     };
     var jsonData=null;
     SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    var response = await http.post("http://127.0.0.1:8000/login", body: data);
if(response.statusCode==200){
  jsonData=json.decode(response.body);
  setState(() {
sharedPreferences.setString("token",jsonData('token'));
  });
}
   }

   */
}
