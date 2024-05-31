import 'package:flutter/material.dart';

class LoginPageView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LoginPageView_State();
  }

}

class LoginPageView_State extends State<LoginPageView>{
  late String _email="";
  late String _senha="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width *0.9,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(
                child: Text("TodoList app", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 45),),
              ),

              SizedBox(
                height: 45,
              ),

            TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.black38))
                ),
                onChanged: (text){
                  _email=text;
                },
              ),
          
            SizedBox(
              height: 20,
            ),
        
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black38))
              ),
              onChanged: (text){
                _senha=text;
              },
            ),

            SizedBox(
              height: 50,
            ),

            Container(
              height: 50,
              width: 160,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(13, 0, 0, 0),
                ),
                child: Text("Login", style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300),),
                onPressed:(){
          
                  if((_email!="") && (_senha!="")){
                    Navigator.of(context).pushReplacementNamed("/home");
                  }else{
                    print("digite um email e uma senha");
                  }
                }
              ),
            
            )


        
        
          ],),
        ),
      )
    );
  }

}