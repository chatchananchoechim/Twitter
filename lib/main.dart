import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'tweet.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Twitter",
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Twitter(),
    );
  }
}

class Twitter extends StatefulWidget {
  const Twitter({super.key});

  @override
  State<Twitter> createState() => _TwitterState();
}

class _TwitterState extends State<Twitter> {
  var tweetList = [
    Tweet(
      avatar_url:
          'https://newprofilepic2.photo-cdn.net//assets/images/article/profile.jpg',
      postText: 'Morning',
      postTime: '2s',
    ),
    Tweet(
      avatar_url:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2C_xadF4WT19MkU5PpYyU8njyMgMIuttwXQ&usqp=CAU',
      postText: 'Hello',
      postTime: '3s',
    ),
    Tweet(
      avatar_url:
          'https://cdn.vox-cdn.com/thumbor/Lbbm-fAW2zmc0jXuTuCkB9tqJYY=/0x0:3011x1447/1200x800/filters:focal(1184x364:1664x844)/cdn.vox-cdn.com/uploads/chorus_image/image/66615355/VALORANT_Jett_Red_crop.0.jpg',
      postText: 'Jett',
      postTime: '4s',
    ),
    Tweet(
      avatar_url:
          'https://ae01.alicdn.com/kf/A100cda267d404b4b989da04c375c9c7bP/Valorant-game-chamber-keycaps-OEM-Profile-10keys-PBT-dye-sub-keycaps.jpg_Q90.jpg_.webp',
      postText: 'Chamber',
      postTime: '5s',
    ),
    Tweet(
      avatar_url:
          'https://cdn1.epicgames.com/offer/cbd5b3d310a54b12bf3fe8c41994174f/EGS_VALORANT_RiotGames_S1_2560x1440-e746d8e946fd6dfc9f17bc343e94500a?h=270&resize=1&w=480',
      postText: 'Habor',
      postTime: '6s',
    ),
    Tweet(
      avatar_url:
          'https://cdn.mos.cms.futurecdn.net/YHdtAs36hSJUL56Lq2nxFi.jpg',
      postText: 'Viper',
      postTime: '7s',
    ),
    Tweet(
      avatar_url:
          'https://external-preview.redd.it/XRbWxw6hryiksnOQzPhXGCMIXUC_k5Nym47sdArzhUg.jpg?width=640&crop=smart&auto=webp&s=107f679f51247c2bb9890a5ba466a9ec914b3761',
      postText: 'Fade',
      postTime: '8s',
    ),
    Tweet(
      avatar_url:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgwZZiLXEcWEfqX4flBXo225WBMCUeqMPi4g&usqp=CAU',
      postText: 'Omen',
      postTime: '9s',
    ),
    Tweet(
      avatar_url:
          'https://i0.wp.com/thegamehaus.com/wp-content/uploads/2020/10/Skye_Splash_resized.png?fit=1050%2C547&ssl=1',
      postText: 'Skype',
      postTime: '10s',
    ),
    Tweet(
      avatar_url:
          'https://cdn-images.win.gg/resize/w/620/format/webp/type/progressive/fit/cover/path/wp/uploads/2021/12/FH9E67yVcAELQnM.jpg',
      postText: 'Neon',
      postTime: '11s',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.all(10.0),
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1618641986557-1ecd230959aa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80'),
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Home",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildIconButton(
              Icons.home,
              Colors.grey,
            ),
            buildIconButton(
              Icons.safety_check_outlined,
              Colors.grey,
            ),
            buildIconButton(
              Icons.notifications_outlined,
              Colors.grey,
            ),
            buildIconButton(
              Icons.email_outlined,
              Colors.grey,
            ),
          ],
        ),
      ),
      body: listOfTweets(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(FontAwesomeIcons.pen),
        onPressed: () {
          setState(() {
            //tweetList.add(Tweet());
            tweetList.insert(
              0,
              Tweet(
                avatar_url:
                    'https://img.4gamers.com.tw/ckfinder-th/image2/auto/2022-09/valorant%20%E0%B9%81%E0%B8%9E%E0%B8%97%E0%B9%83%E0%B8%AB%E0%B8%A1%E0%B9%88%205.05-220919-124444.jpg?versionId=9YkgFLJFePldrMy4lzVY5v__GoA9uZAK',
                postText: 'Sage',
                postTime: '1',
              ),
            );
          });
        },
      ),
    );
  }

  Widget listOfTweets() {
    return Container(
        color: Colors.white,
        child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return tweetList[index];
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(
                  height: 10,
                ),
            itemCount: tweetList.length));
  }

  Widget buildIconButton(IconData icon, Color color) {
    return IconButton(
        icon: Icon(
          icon,
          color: color,
        ),
        onPressed: () {});
  }
}
