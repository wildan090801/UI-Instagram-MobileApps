import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profileImage = [
    "assets/myprofile.jpeg",
    "assets/iu.jpg",
    "assets/kimjiwon.jpg",
    "assets/irene.jpeg",
    "assets/hansohee.jpg",
    "assets/lalisa.jpeg",
    "assets/kimsohyun.jpg",
    "assets/kimjennie.jpeg",
    "assets/kimjisoo.jpg",
    "assets/parkchaeyoung.jpeg",
  ];

  List<String> profilePostImage = [
    "assets/iu.jpg",
    "assets/kimjiwon.jpg",
    "assets/irene.jpeg",
    "assets/hansohee.jpg",
    "assets/lalisa.jpeg",
    "assets/kimsohyun.jpg",
    "assets/kimjennie.jpeg",
    "assets/kimjisoo.jpg",
    "assets/parkchaeyoung.jpeg",
  ];

  List<String> postImage = [
    "assets/dlwlrma.jpg",
    "assets/geewonii.jpg",
    "assets/renebaebae.jpg",
    "assets/xeesoxee.jpg",
    "assets/lalalalisa_m.jpg",
    "assets/wow_kimsohyun.jpg",
    "assets/jennierubyjane.jpg",
    "assets/sooyaaa_.jpg",
    "assets/roses_are_rosie.jpg",
  ];

  List<String> profileName = [
    "Cerita Anda",
    "dlwlrma",
    "geewonii",
    "renebaebae",
    "xeesoxee",
    "lalalalisa_m",
    "wow_kimsohyun",
    "jennierubyjane",
    "sooyaaa_",
    "roses_are_rosie",
  ];

  List<String> postName = [
    "dlwlrma",
    "geewonii",
    "renebaebae",
    "xeesoxee",
    "lalalalisa_m",
    "wow_kimsohyun",
    "jennierubyjane",
    "sooyaaa_",
    "roses_are_rosie",
  ];

  List<String> captionPost = [
    " 여행 끝 일 열심히 하겠습니다😚",
    " #도시남녀의사랑법",
    " 🥥🥥🥥",
    " u 나 b 🦋",
    " The first official photoshoot with my baby cats 💞",
    " 오랜만이에요♥️",
    " Happy 25th Birthday 💙🎉",
    " 🌞",
    " 🐻🧸❤️‍🩹💞",
  ];

  List<String> allComentar = [
    "Lihat semua 38.964 komentar",
    "Lihat semua 57.218 komentar",
    "Lihat semua 65.664 komentar",
    "Lihat semua 107.731 komentar",
    "Lihat semua 404.476 komentar",
    "Lihat semua 45.887 komentar",
    "Lihat semua 43.443 komentar",
    "Lihat semua 48.532 komentar",
    "Lihat semua 32.425 komentar",
  ];

  Future<void> onRefresh() async {
    await Future.delayed(
      Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Image.asset(
          'assets/instagram_dark.png',
          height: 40,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_box_outlined,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.send_outlined,
            ),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    9,
                    (index) => Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage(
                              'assets/story.png',
                            ),
                            child: CircleAvatar(
                              radius: 32,
                              backgroundImage: AssetImage(
                                profileImage[index],
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            profileName[index],
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: List.generate(
                  9,
                  (index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: CircleAvatar(
                              radius: 14,
                              backgroundImage: AssetImage(
                                'assets/story.png',
                              ),
                              child: CircleAvatar(
                                radius: 12,
                                backgroundImage: AssetImage(
                                  profilePostImage[index],
                                ),
                              ),
                            ),
                          ),
                          Text(
                            postName[index],
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        postImage[index],
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.chat_bubble_outline,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.send_outlined,
                              color: Colors.white,
                            ),
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.bookmark_border_outlined,
                              size: 29,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 15,
                          right: 15,
                          bottom: 15,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 9,
                                  backgroundImage: AssetImage(
                                    'assets/myprofile.jpeg',
                                  ),
                                ),
                                SizedBox(width: 10),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Disukai oleh',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' ndliw',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' dan',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' 3.100.719 lainnya',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: postName[index],
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: captionPost[index],
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: allComentar[index],
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w100,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
