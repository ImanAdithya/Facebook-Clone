import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
             backgroundColor: Colors.white,
              title: Text('facebook',style: TextStyle(
                color: Color(0xFF1777F2),
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2
              ),
              ),
              centerTitle: false,
            )
          ],
        ),
    );
  }
}
