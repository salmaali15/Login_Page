import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FacebookLogin extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _FacebookLogin();

}
class _FacebookLogin extends State<FacebookLogin>{
  var formkey = GlobalKey<FormState>();
  var emailcontroller = TextEditingController();
  var passcontroller = TextEditingController();
  bool _obscuretext = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Image.asset("assets/facebookLogo.jpeg"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: formkey,
              child: Column(
                children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      'اردو',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 2,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Espanol',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 2,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'More...',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              TextFormField(
                controller: emailcontroller,
                validator: (value){
                  if(value!.isEmpty)
                    return "This field is required";
                  else
                    return null;
                },
                decoration: InputDecoration(
                  filled: false,
                  fillColor: Colors.red,
                  hintText: 'Phone Or email',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.grey
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        width: 2,
                        color: Colors.blue
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: passcontroller,
                obscureText: _obscuretext,
                validator: (value){
                  if(value!.isEmpty)
                    return "This field is required";
                  else
                    return null;
                },
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          _obscuretext = !_obscuretext;
                        });
                      },
                      icon: Icon(_obscuretext? Icons.visibility : Icons.visibility_off),
                  ),
                  filled: false,
                  fillColor: Colors.red,
                  hintText: 'Passward',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.grey
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        width: 2,
                        color: Colors.blue
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                    onPressed: (){
                    if(formkey.currentState!.validate()){
                      print(emailcontroller.text);
                      print(passcontroller.text);
                    }
                    },
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                ),
              ),
              TextButton(
                  onPressed: (){},
                  child: Text('Forget Passward?',
                  style: TextStyle(
                    color: Colors.blue
                  ),
                  ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.grey,
                      height: 1,
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text('OR'),
                  SizedBox(
                    width: 4,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.grey,
                      height: 1,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)
                    ),
                  ),
                  onPressed: (){},
                  child: Text('Create new Facebook account',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
              ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}