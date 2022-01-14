import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            leading: CircleAvatar(
              child: IconButton(
                icon: const Icon(
                  Icons.person_outline_rounded,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
        body: Container(),
      ),
    );
  }
}
