import 'package:clone_nubank/widgets/custom_column.dart';
import 'package:clone_nubank/widgets/custom_decoratedbox.dart';
import 'package:clone_nubank/widgets/custom_list.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
        physics: const BouncingScrollPhysics(),
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
              title: const Text('Olá, Usuário'),
            ),
            actions: [
              IconButton(
                splashColor: Colors.purple.shade900,
                icon: const Icon(Icons.remove_red_eye_rounded),
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
                    MdiIcons.emailPlusOutline,
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ],
        body: ListView(
          physics: NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.only(
            top: 15,
          ),
          children: [
            ListTile(
              onTap: () {},
              title: Padding(
                padding: const EdgeInsets.only(top: 10, left: 15),
                child: Text(
                  'Conta',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 17, left: 15),
                child: Text('R\$ 0,00',
                    style: Theme.of(context).textTheme.headline4),
              ),
              trailing: const Padding(
                padding: EdgeInsets.only(right: 15),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 17,
                ),
              ),
            ),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
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
                    ),
                    CustomColumn(
                      text: 'Pegar emprestad',
                      onPressed: () {},
                      icon: MdiIcons.handCoin,
                    ),
                    CustomColumn(
                      text: 'Recarga de Celular',
                      onPressed: () {},
                      icon: Icons.phone_android_rounded,
                    ),
                    CustomColumn(
                      text: 'Cobrar',
                      onPressed: () {},
                      icon: MdiIcons.chatAlertOutline,
                    ),
                    CustomColumn(
                      text: 'Doação',
                      onPressed: () {},
                      icon: MdiIcons.cardsHeartOutline,
                    ),
                    CustomColumn(
                      text: 'Transferir Internac.',
                      onPressed: () {},
                      icon: MdiIcons.webCheck,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 12),
              child: CustomDecoratedBox(
                width: 338,
                child: ListTile(
                  horizontalTitleGap: 0,
                  leading: const Icon(
                    Icons.credit_card_rounded,
                    color: Colors.black,
                  ),
                  title: Text(
                    'Meus Cartões',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20, left: 5),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: CustomDecoratedBox(
                          width: 300,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              title: RichText(
                                text: TextSpan(
                                  text: 'Você tem até ',
                                  style: const TextStyle(
                                      fontSize: 17, color: Colors.black),
                                  children: [
                                    TextSpan(
                                      text: 'R\$ 2.500,00 ',
                                      style: TextStyle(
                                          color: Colors.purple.shade700),
                                    ),
                                    const TextSpan(
                                      text: 'disponíveis para empréstimo.',
                                      style: TextStyle(
                                          fontSize: 17, color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: CustomDecoratedBox(
                          height: 90,
                          width: 300,
                          child: Center(
                            child: ListTile(
                              title: RichText(
                                text: TextSpan(
                                  text: 'Salve seus amigos da burocracia. ',
                                  style: const TextStyle(
                                      fontSize: 17, color: Colors.black),
                                  children: [
                                    TextSpan(
                                      text: 'Faça um convite ...',
                                      style: TextStyle(
                                          color: Colors.purple.shade700,
                                          fontSize: 17),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            CustomList(
              arrow: true,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(Icons.credit_card_rounded),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Cartão de crédito',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    'Fatura atual',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    'R\$ 10,00',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
                Text(
                  'Limite disponível de R\$ 190,00',
                  style: TextStyle(color: Colors.grey.shade800),
                ),
              ],
            ),
            CustomList(
              arrow: true,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 15),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(MdiIcons.handCoin),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Empréstimo',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    'Valor disponível de até',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    'R\$ 2.500,00',
                    style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            CustomList(
              arrow: true,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 15),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(MdiIcons.signal),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Investimentos',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    'O jeito Nu de investir: sem asteriscos, linguagem fácil e a partir de R\$1. Saiba mais.',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey.shade900,
                    ),
                  ),
                ),
                CustomDecoratedBox(
                  width: 380,
                  child: ListTile(
                    horizontalTitleGap: 0,
                    leading: const Icon(
                      MdiIcons.diamondStone,
                      color: Colors.black,
                    ),
                    title: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text('Meu\nPedacinho d...'),
                      ],
                    ),
                    trailing: SizedBox(
                      width: 100,
                      child: Row(
                        children: const [
                          Icon(
                            MdiIcons.arrowDownThin,
                            color: Colors.red,
                          ),
                          Text(
                            '-R\$ 0,03',
                            style: TextStyle(color: Colors.red),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            CustomList(
              arrow: true,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 15),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(MdiIcons.cardsHeartOutline),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Seguro de Vida',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    'Conheça Nubank Vida: um seguro simples e que cabe no bolso.',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey.shade900,
                    ),
                  ),
                ),
              ],
            ),
            CustomList(
              arrow: true,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 15),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(Icons.shopping_bag_outlined),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Shopping',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    'Vantagens exclusivas das nossas marcas preferidas',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey.shade900,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text('Descubra mais',
                  style: Theme.of(context).textTheme.headline5),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: CustomDecoratedBox(
                width: 338,
                child: ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text('Indique seus amigos',
                            style: Theme.of(context).textTheme.headline6),
                      ),
                      const Text(
                          'Mostre aos seus amigos como é fácil ter uma vida sem burocracia.'),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.purple.shade700,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20)),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Indicar amigos',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
