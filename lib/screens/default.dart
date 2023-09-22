import 'package:ewa/screens/blog.dart';
import 'package:flutter/material.dart';
import '../widgets/drawer.dart' as side_drawer;
import 'home.dart';

enum Screen { home, articles, bits, leaderboard, profile }

extension Index on Screen {
  int get index {
    switch (this) {
      case Screen.home:
        return 0;
      case Screen.articles:
        return 1;
      case Screen.bits:
        return 2;
      case Screen.leaderboard:
        return 3;
      case Screen.profile:
        return 4;
      default:
        return 1;
    }
  }
}

class Default extends StatefulWidget {
  const Default({super.key});

  @override
  State<Default> createState() => _DefaultState();
}

class _DefaultState extends State<Default> {
  var screen = Screen.home;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: const side_drawer.Drawer(),
      appBar: AppBar(
        title: const Text("EWAS",
            style: TextStyle(
              color: Colors.white,
            )),
        backgroundColor: Theme.of(context).primaryColor,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: screen.index,
          onTap: (value) => {
                setState(() {
                  screen = switch (value) {
                    0 => Screen.home,
                    1 => Screen.articles,
                    2 => Screen.bits,
                    3 => Screen.leaderboard,
                    4 => Screen.profile,
                    _ => Screen.home,
                  };
                })
              },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.green,
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: const IconThemeData(color: Colors.white, size: 28),
          unselectedIconTheme:
              const IconThemeData(color: Colors.white70, size: 20),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Default",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.article),
              label: "blogs",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_collection),
              label: "vlogs",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.leaderboard),
              label: "now",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "profile",
            ),
          ]),
      body: switch (screen){
       Screen.home => Home(size: size,),
       Screen.articles=> Blogs(),
       Screen.bits=> Container(),
       Screen.leaderboard=> Container(),
       Screen.profile=> Container(),
      },
    );
  }
}
