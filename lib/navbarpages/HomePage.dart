import 'package:cek/contentpages/DetailPage.dart';
import 'package:cek/style/ColorConfig.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bghomepage,
      body: 
      Padding(
        padding: EdgeInsets.only(
          right: 20.00,
          left: 20.0,
          top: 70
        ),
        child: 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hi, Budi",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    )
                    ),
                  Icon(Icons.notifications_outlined,size:26)
                ],
              ),
              SizedBox(height:5),
              Text(
                "Find your lessons today!",
                style: TextStyle(
                  fontSize : 16,
                  color: Colors.grey,
                ),           
              ),
              SizedBox(height:25),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(1, 2)
                        )]
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: bgnavbar,
                          // prefixIcon: Icon(Icons.search),
                          hintText: "Search now...",
                          hintStyle: TextStyle(color: Colors.grey,fontSize:16),
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
                      color: Color(0xff3D8FEF)
                    ),
                    child: IconButton(
                      onPressed: (){}, 
                      icon: Icon(Icons.tune,color: Colors.white)
                      ),
                  )
                ],
              ),
              SizedBox(height:30),
              Container(
                height: 156,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffACD7FF),
                  borderRadius: BorderRadius.circular(14)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    right: 5,
                    left: 30,
                    bottom: 0
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Dicover Top Picks",
                            style: TextStyle(
                              color: Color(0xff577395),
                              fontSize: 16
                            ),
                            ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text(
                                "+100",
                                style: TextStyle(
                                  color: Color(0xff2D4663),
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(width: 6),
                              Text(
                                "lessons",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff577395)
                                ),
                              
                              )
                            ],
                          ),
                          SizedBox(height: 5),
                          ElevatedButton(
                            onPressed: () {}, 
                            style: ElevatedButton.styleFrom(
                                backgroundColor: bgbtnlogin,
                                foregroundColor: Colors.white,

                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14)
                                )
                            ),
                            child: Text("Explore More")
                          )
                        ],
                      ),
                      Image.asset("assets/images/banner.png")
                    ],
                  ),
                )
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Lessons",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                      ),
                    ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 14,
                      color: bgbtnlogin,
                      fontWeight: FontWeight.bold
                    ),
                    )
                ],
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    children: [
                      content_populer(context, Image.asset("assets/images/populer.png"), "Figma master class", "UI Design", "(28 lessons)", "6h 30min", "4.9"),
                      SizedBox(width: 26),
                      content_populer(context,Image.asset("assets/images/populer2.png"), "Web design for beginner", "UI/UX Design", "(32 lessons)", "8h 30min", "5.0"),
                    ],
                  ),
                ),
              ),
              
            ],
          ),
          
      ),
    );
  }

Container content_populer(BuildContext context, img, String judul1, String judul2, String subjudul, String durasi, String rating) {
  return Container(
    width: 220.32,
    height: 276.4,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(14.28),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2), // Warna bayangan dengan opasitas
          spreadRadius: 2, // Mengatur sebaran bayangan
          blurRadius: 4, // Mengatur blur dari bayangan
          offset: Offset(0, 3), // Mengatur posisi bayangan (x, y)
        ),
      ],
    ),
    child: InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage()));
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 10,
              left: 10,
              top:10,
              bottom: 10
            ),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  child: img
                ),
                Positioned(
                  right: 5,
                  top: 5,
                  child: 
                    ButtonFavorite()
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  judul1,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Row(
                  children: [
                    Text(
                      judul2,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    SizedBox(width: 5),
                    Text(
                      subjudul,
                      style: TextStyle(
                        color: Color(0xffAEAEAE),
                        fontSize: 14
                      ),
                      )
                  ],
                ),
                SizedBox(height: 28),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 91.8,
                      height: 22.44,
                      decoration: BoxDecoration(
                        color: Color(0xffEAF4FF),
                        borderRadius: BorderRadius.circular(6.12)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Row(
                          children: [
                            Icon(Icons.schedule,color: Color(0xff3D8FEF),size: 18,),
                            SizedBox(width: 2,),
                            Text(
                              durasi,
                              style: TextStyle(
                                fontSize: 14.28,
                                color: Color(0xff3D8FEF)
                              ),
                              )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 3),
                      child: Row(
                        children: [
                          Icon(Icons.star,size: 18, color: Colors.yellow),
                          SizedBox(width:3),
                          Text(
                            rating,
                            style: TextStyle(
                              color: Colors.grey
                            ),)
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
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

class _ButtonFavorite extends State<ButtonFavorite>{

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: bgnavbar,
      radius: 16,
      child: GestureDetector(
        onTap: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
        child : Icon(
          isSelected ? Icons.favorite : Icons.favorite_outline,
          color: const Color.fromARGB(255, 255, 0, 0),
          size: 21,
          )
      )
    );
  }

}