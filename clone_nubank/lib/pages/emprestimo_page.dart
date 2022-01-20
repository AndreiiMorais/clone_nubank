import 'package:flutter/material.dart';

class EmprestimoPage extends StatelessWidget {
  const EmprestimoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            leading: Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
              child: CircleAvatar(
                backgroundColor: Colors.black45,
                radius: 20,
                child: IconButton(
                  icon: const Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black45,
                  child: Center(
                    child: IconButton(
                      padding: EdgeInsets.all(0),
                      icon: Icon(
                        Icons.help_outline_rounded,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
            ],
            expandedHeight: 150,
            flexibleSpace: Stack(
              children: [
                Positioned.fill(
                    child: Image.asset(
                  "assets/emprest_logo.jpg",
                  fit: BoxFit.cover,
                ))
              ],
            ),
          ),
        ],
        body: Column(
          children: [
            
          ],
        ),
      ),
    );
  }
}
