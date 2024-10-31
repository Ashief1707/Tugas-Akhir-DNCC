import 'package:cek/style/ColorConfig.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

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
                  "Search",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                CircleAvatar(
                    backgroundColor: Colors.white, child: Icon(Icons.settings))
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 3,
                              offset: Offset(1, 2))
                        ]),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: bgnavbar,
                          // prefixIcon: Icon(Icons.search),
                          hintText: "Search now...",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 16),
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 53,
                  width: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xff3D8FEF)),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.tune, color: Colors.white)),
                )
              ],
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(),
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 31,
                      decoration: BoxDecoration(
                          color: Color(0xffEAF4FF),
                          borderRadius: BorderRadius.circular(14)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 13, vertical: 1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "ui design",
                              style: TextStyle(color: bgbtnlogin, fontSize: 16),
                            ),
                            SizedBox(width: 5),
                            Icon(
                              Icons.close,
                              size: 16,
                              color: bgbtnlogin,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 13),
                    kategoriunselected("ux design"),
                    SizedBox(width: 13),
                    kategoriunselected("website design"),
                    SizedBox(width: 13),
                    kategoriunselected("flutter beginner")
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 535,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    searchcontent(Image.asset("assets/images/search/content1.png")),
                    SizedBox(height: 10),
                    searchcontent(Image.asset("assets/images/search/content2.png")),
                    SizedBox(height: 10),
                    searchcontent(Image.asset("assets/images/search/content3.png")),
                    SizedBox(height: 10),
                    searchcontent(Image.asset("assets/images/search/content4.png")),
                    SizedBox(height: 10),
                    searchcontent(Image.asset("assets/images/search/content1.png")),
                    SizedBox(height: 10),
                    searchcontent(Image.asset("assets/images/search/content2.png")),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container searchcontent(Image img) {
    return Container(
                width: double.infinity,
                height: 110,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10, horizontal: 15),
                  child: Row(
                    children: [
                      Container(
                        width: 110,
                        height: 88,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14)),
                        child:
                            img,
                      ),
                      SizedBox(width: 15),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mobile UI Essentials",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Intemediate / 28 lessons",
                            style:
                                TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                          SizedBox(height: 23),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 20,
                              ),
                              Text(
                                "4.9",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.grey),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "•",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.grey),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "6h 30min",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.grey),
                              ),
                              SizedBox(width: 75),
                              ButtonFavorite()
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              );
  }

  Container kategoriunselected(String text) {
    return Container(
      height: 31,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(14)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ],
        ),
      ),
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
        radius: 12,
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
              size: 20,
            )));
  }
}
