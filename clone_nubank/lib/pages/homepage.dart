import 'package:clone_nubank/widgets/custom_column.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../my_flutter_app_icons.dart';

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
                icon: Icon(Icons.remove_red_eye_rounded),
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
          padding: EdgeInsets.only(top: 15, left: 15, right: 15),
          children: [
            ListTile(
              onTap: () {},
              title: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'Conta',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 17),
                child: Text('R\$169,09',
                    style: Theme.of(context).textTheme.headline4),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 17,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomColumn(
                    text: 'Área Pix',
                    onPressed: () {},
                    icon: Icons.local_parking_outlined,
                  ),
                  CustomColumn(
                    text: 'Pagar',
                    onPressed: () {},
                    icon: MdiIcons.barcode,
                  ),
                  CustomColumn(
                    text: 'Transferir',
                    onPressed: () {},
                    icon: MdiIcons.cashFast,
                  ),
                  CustomColumn(
                    text: 'Depositar',
                    onPressed: () {},
                    icon: MdiIcons.cashPlus,
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
