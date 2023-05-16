import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ridebudysv0/pages/car_pool_page.dart';
import 'package:ridebudysv0/pages/home_file.dart';
import 'package:ridebudysv0/pages/new_post.dart';
import 'package:ridebudysv0/pages/profile_page.dart';
import 'package:ridebudysv0/pages/search_people_page.dart';

class Nevi extends StatefulWidget {
  const Nevi({Key? key}) : super(key: key);

  @override
  State<Nevi> createState() => _NeviState();
}
int resume=0;
class _NeviState extends State<Nevi> {
  int inde = resume;
  final screen = [
    const UserHome(),
    const searchPeoplePage(),
    const NewPost(),
    const CarPoolPage(),
    const ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        bottomNavigationBar: CurvedNavigationBar(
          height: MediaQuery.of(context).size.height * 0.065,
          animationDuration: const Duration(milliseconds: 100),
          onTap: (index) {
            resume = index;
            setState(() {
              inde = resume;
            });
          },
          buttonBackgroundColor: Colors.black,
          backgroundColor: const Color.fromRGBO(28, 28, 28, 1),
          color: Colors.black,
          index: inde,
          items: [
            inde == 0
                ? const Icon(
                    Icons.home,
                    color: Colors.amber,
                  )
                : const Icon(
                    Icons.home_filled,
                    color: Colors.white,
                  ),
            inde == 1
                ? const Icon(
                    Icons.search_rounded,
                    color: Colors.amber,
                  )
                : const Icon(
                    Icons.search_outlined,
                    color: Colors.white,
                  ),
            inde == 2
                ? const Icon(
                    Icons.add_circle,
                    color: Colors.amber,
                  )
                : const Icon(
                    Icons.add_circle_outline,
                    color: Colors.white,
                  ),
            inde == 3
                ? const Icon(
                    Icons.local_taxi_rounded,
                    color: Colors.amber,
                  )
                : const Icon(
                    Icons.local_taxi_outlined,
                    color: Colors.white,
                  ),
            inde == 4
                ? const Icon(
                    Icons.person,
                    color: Colors.amber,
                  )
                : const Icon(
                    Icons.person_outline_outlined,
                    color: Colors.white,
                  )
          ],
        ),
        body: screen[inde]);
  }
}
