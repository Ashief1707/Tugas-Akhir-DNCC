import 'package:cek/style/ColorConfig.dart';
import 'package:cek/contentpages/NavPage.dart';
import 'package:cek/contentpages/SignUp.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bghomepage,
      body: Padding(
        padding: const EdgeInsets.only(
          right: 20.0,
          left: 20.0,
          top: 60,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              child:
                Image.asset("assets/images/signin.png")
            ),
            SizedBox(height:10),
            Text(
              "Sign In",
              style: TextStyle(
                color: bgbtnlogin,
                fontWeight: FontWeight.bold,
                fontSize : 32,
              ),
              ),
            SizedBox(height: 10),
            Text("Please enter your username or email"),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: "Email atau Username",
                labelStyle: TextStyle(
                  color: primaryColor,
                  
                ),
                hintText: "Email atau Username",
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
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: "Password",
                labelStyle: TextStyle(
                  color: primaryColor,
                  
                ),
                hintText: "Password",
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
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerRight,
              child:         
                Text(
                  "Forgot Password ?",
                  style: TextStyle(
                    color: primaryColor,
                  )
                 )
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => const Navpage())
              );
            },
             style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 50.0),
              backgroundColor : bgbtnlogin,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )
             ),
             child: Text(
              "Sign In",
              style: TextStyle(color: Colors.white,fontSize: 17)
              )
            ),
           SizedBox(height: 20),
           Row(
            children: [
              Expanded(child: Divider(
                thickness: 1,
                color:Colors.grey,
              )
              ),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text("or sign in with",
                style: TextStyle(color: Colors.grey),
              ),
              ),
              Expanded(child: Divider(
                thickness: 1,
                color:Colors.grey,
              )
              ),
            ],
           ),
           SizedBox(height: 20),
           btnLoginOr(Icons.apple, bgbtnapple, "Sign In with apple"),
           SizedBox(height: 20),
           btnLoginOr(Icons.facebook, bgbtnlogin, "Sign In with facebook"),
           SizedBox(height:20),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text("Don't have account ?"),
               SizedBox(width: 3),
               InkWell(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: primaryColor,
                  )
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                }
               )
             ],
           ),
          ],
        ),
      ),
    );
  }

  ElevatedButton btnLoginOr(IconData icon, Color bg, String text) {
    return ElevatedButton(onPressed: () {}, 
         style: ElevatedButton.styleFrom(
          backgroundColor: bg,
          minimumSize: Size(double.infinity, 50.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          )
         ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 26,
                ),
                SizedBox(width: 7),
              Text(
                text,
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 17,
                )
              )
            ],
          ) 
         );
  }
  
}