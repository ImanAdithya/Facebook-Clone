import 'package:facebook_clone/widgets/create_post_container.dart';
import 'package:facebook_clone/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:facebook_clone/widgets/circle_buttons.dart';
import 'package:mdi/mdi.dart';
import '../data/data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            title: Text(
              'facebook',
              style: TextStyle(
                color: Color(0xFF1777F2),
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2,
              ),
            ),
            centerTitle: false,
            floating: true,
            actions: [
              CircleButton(icon: Icons.search, iconSize: 30),
              CircleButton(icon: Mdi.facebookMessenger, iconSize: 30),
            ],
          ),
          SliverToBoxAdapter(
            child: CreatePostContainer(currentUser: currentUser),
          ),

          SliverPadding(
            padding: EdgeInsets.all(8.0),
            sliver: SliverToBoxAdapter(
              child: Rooms(onlineUser: onlineUser),
            ),
          ),


        ],
      ),
    );
  }
}
