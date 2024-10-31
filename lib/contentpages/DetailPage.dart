import 'package:cek/style/ColorConfig.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bghomepage,
      body: Padding(
        padding: EdgeInsets.only(
          top: 70,
          right: 20,
          left: 20,
          bottom: 20
        ),
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
                  "Course Overveiew",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                ButtonFavorite(),
              ],
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              height: 207,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.asset(
                    "assets/images/detailpage.png",
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(height: 20),
            Text(
              "Figma master class for beginners",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.schedule,
                      color: Colors.grey,
                      size: 18,
                    ),
                    SizedBox(width: 3),
                    Text(
                      "6h 30min",
                      style: TextStyle(fontSize: 14.28, color: Colors.grey),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "•",
                      style: TextStyle(fontSize: 14.28, color: Colors.grey),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "28 lessons",
                      style: TextStyle(fontSize: 14.28, color: Colors.grey),
                    ),
                  ],
                ),
                Container(
                  height: 24,
                  width: 54,
                  decoration: BoxDecoration(color: Color(0xffEAF4FF)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 20,
                      ),
                      Text(
                        "4.9",
                        style: TextStyle(
                          fontSize: 14.28,
                          color: bgbtnlogin,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Lessons",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Container(
              height: 350,
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    episode("Introduction to figma", "04:28 min"),
                    SizedBox(height: 20),
                    episode("Introduction to figma", "04:28 min"),
                    SizedBox(height: 20),
                    episode("Introduction to figma", "04:28 min"),
                    SizedBox(height: 20),
                    episode("Introduction to figma", "04:28 min"),
                    SizedBox(height: 20),
                    episode("Introduction to figma", "04:28 min"),
                    SizedBox(height: 20),
                    episode("Introduction to figma", "04:28 min"),
                    SizedBox(height: 20),
                    episode("Introduction to figma", "04:28 min"),
                    SizedBox(height: 20),
                    episode("Introduction to figma", "04:28 min"),
                    SizedBox(height: 20),
                    episode("Introduction to figma", "04:28 min"),
                    SizedBox(height: 20),
                    episode("Introduction to figma", "04:28 min"),
                    SizedBox(height: 20),
                    episode("Introduction to figma", "04:28 min"),
                    SizedBox(height: 20),
                    episode("Introduction to figma", "04:28 min"),
                    SizedBox(height: 20),
                    episode("Introduction to figma", "04:28 min"),
                    SizedBox(height: 20),
                    episode("Introduction to figma", "04:28 min"),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Row episode(String judul, String durasi) {
    return Row(
      children: [
        Icon(
          Icons.play_circle,
          size: 40,
          color: bgbtnlogin,
        ),
        SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              judul,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(
              durasi,
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
        SizedBox(width: 130),
        Icon(
          Icons.arrow_forward_ios,
          color: bgbtnlogin,
        )
      ],
    );
  }
}

class ButtonFavorite extends StatefulWidget {
  const ButtonFavorite({
    super.key,
  });

  @override
  State<StatefulWidget> createState() => _ButtonFavorite();
}

class _ButtonFavorite extends State<ButtonFavorite> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        backgroundColor: bgnavbar,
        child: GestureDetector(
            onTap: () {
              setState(() {
                isSelected = !isSelected;
              });
            },
            child: Icon(
              isSelected ? Icons.favorite : Icons.favorite_outline,
              color: const Color.fromARGB(255, 255, 0, 0),
              size: 24,
            )));
  }
}
