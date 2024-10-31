import 'package:cek/style/ColorConfig.dart';
import 'package:cek/contentpages/LoginPage.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: bghomepage,
      body : Padding(
        padding: EdgeInsets.only(
          right: 20.00,
          left: 20.0,
          top: 70
        ),
        child: 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Icon(Icons.arrow_back_ios,
                    size:16,
                    color : primaryColor
                    ),
                    Text(
                      "back",
                      style: TextStyle(
                        fontSize: 18,
                        color : primaryColor,
                      )
                    ),
                  ],
                ),
              ),
              SizedBox(height: 60),
              Text(
              "Sign Up",
              style: TextStyle(
                color: bgbtnlogin,
                fontWeight: FontWeight.bold,
                fontSize : 32,
              ),
              ),
              SizedBox(height: 40),
              forminput("Full Name", Icon(Icons.person)),
              SizedBox(height: 20),
              forminput("Email", Icon(Icons.email)),
              SizedBox(height: 20),
              formpassword("Password"),
              SizedBox(height: 20),
              formpassword("Confirm Password"),
              SizedBox(height: 60),
              ElevatedButton(onPressed: _showPopUp,
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50.0),
                backgroundColor : bgbtnlogin,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),
              child: Text(
                "Sign Up",
                style: TextStyle(color: Colors.white,fontSize: 17)
              )
              ),
              SizedBox(height: 40),
              Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: 
                  Text(
                    "Back to sign",
                    style: TextStyle(
                      fontSize: 16,
                      color: primaryColor,
                      fontWeight: FontWeight.bold
                    )
                    ),
                ),
              )
            ],
          )
      )
    );
  }

TextField forminput(String text, Icon icon) {
    return TextField(
              decoration: InputDecoration(
               prefixIcon: icon,
               labelText: text,
                labelStyle: TextStyle(
                    color: primaryColor,      
                  ),
                hintText: text,
                hintStyle: TextStyle(color: Colors.grey),

                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10)
                ),

                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: primaryColor,
                    ),
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
            );
  }

TextField formpassword(String text) {
    return TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: text,
                labelStyle: TextStyle(
                    color: primaryColor,      
                  ),
                hintText: text,
                hintStyle: TextStyle(color: Colors.grey),
                suffixIcon: Icon(Icons.remove_red_eye),

                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10)
                ),

                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: primaryColor,
                    ),
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
            );
  }

void _showPopUp () {
  showDialog(
    context: context,
    builder: (BuildContext) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          
        ),
        title: Align(
          alignment: Alignment.topRight,
          child: 
            Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color:Colors.red
                
              ),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Icon(Icons.close, color:Colors.white,size: 18,),
              ),
              
            )
        ),
        content: Text(
          "Account created successfully",
          style: TextStyle(
            fontSize: 16)
        ),
      );
    }
    );
}
}