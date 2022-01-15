import 'package:clone_nubank/widgets/custom_column.dart';
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
            backgroundColor: Colors.purple.shade700,
            leading: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: CircleAvatar(
                backgroundColor: Colors.white12,
                child: IconButton(
                  splashColor: Colors.purple.shade900,
                  padding: const EdgeInsets.all(5),
                  icon: const Icon(
                    Icons.person_outline_rounded,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            bottom: AppBar(
              backgroundColor: Colors.purple.shade700,
              title: Text('Olá, Andrei'),
            ),
            actions: [
              IconButton(
                splashColor: Colors.purple.shade900,
                icon: const Icon(Icons.remove_red_eye_outlined),
                onPressed: () {},
              ),
              IconButton(
                splashColor: Colors.purple.shade900,
                icon: const Icon(Icons.help_outline_rounded),
                onPressed: () {},
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: IconButton(
                  splashColor: Colors.purple.shade900,
                  icon: const Icon(
                    Icons.mail_outline,
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ],
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              child: ListTile(
                onTap: () {},
                title: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    'Conta',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child:
                      Text('sub', style: Theme.of(context).textTheme.headline3),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 17,
                ),
              ),
            ),
            Row(
              children: [
                CustomColumn(
                  text: 'Área Pix',
                  onPressed: () {},
                  icon: ,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
