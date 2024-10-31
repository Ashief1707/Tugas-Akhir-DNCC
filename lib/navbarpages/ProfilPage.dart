import 'package:cek/contentpages/LoginPage.dart';
import 'package:cek/style/ColorConfig.dart';
import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bghomepage,
      body: Padding(
        padding: EdgeInsets.only(top: 70, right: 20, left: 20, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios)),
                ),
                Text(
                  "Profil",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                CircleAvatar(
                    backgroundColor: Colors.white, child: Icon(Icons.settings))
              ],
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(14)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(
                        "assets/images/signin.png",
                      ),
                    ),
                    SizedBox(width: 15),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name User",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          SizedBox(height: 3),
                          Text("nameuser@gmail.com")
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(16.0),
                children: [
                    menuItem(Icons.person, 'Account', context),
                    Divider(color: Colors.black), // Divider line
                    menuItem(Icons.bookmark, 'Saved', context),
                    Divider(color: Colors.black),
                    menuItem(Icons.language, 'Language', context),
                    Divider(color: Colors.black),
                    menuItem(Icons.help_outline, 'Help Center', context),
                    Divider(color: Colors.black),
                    menuItem(Icons.logout, 'Logout', context, isLogout: true),
                    Divider(color: Colors.black),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget menuItem(IconData icon, String text, BuildContext context, {bool isLogout = false}) {
    return InkWell(
      onTap: () {
        if (isLogout) {
          // Log out action - Navigate back to previous screen
          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
        } else {
          // Handle other menu item actions here
          print('$text tapped');
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.blue, // Icon color in blue
            ),
            SizedBox(width: 16), // Space between icon and text
            Text(
              text,
              style: TextStyle(
                color: Colors.blue, // Text color in blue
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
