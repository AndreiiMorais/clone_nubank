import 'package:clone_nubank/pages/area_pix.dart';
import 'package:clone_nubank/pages/configs_page.dart';
import 'package:clone_nubank/pages/conta_page.dart';
import 'package:clone_nubank/widgets/custom_rounded_button.dart';
import 'package:clone_nubank/widgets/custom_decoratedbox.dart';
import 'package:clone_nubank/widgets/custom_list.dart';
import 'package:clone_nubank/widgets/custom_row.dart';
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
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ConfigPage(),
                        fullscreenDialog: true,
                      ),
                    ); //adicionar um setState quando voltar da pagina
                  },
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
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.only(
            top: 15,
          ),
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const ContaPage(),
                      transitionDuration: Duration(milliseconds: 200),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return SlideTransition(
                          position: Tween<Offset>(
                            begin: const Offset(1.0, 0.0),
                            end: const Offset(0.0, 0.0),
                          ).animate(animation),
                          child: child,
                        );
                      },
                    ),
                  );
                },
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Conta',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                subtitle: Text('R\$ 0,00',
                    style: Theme.of(context).textTheme.headline4),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 17,
                ),
              ),
            ),
            CustomRow(
              children: [
                CustomRoundedButton(
                  text: 'Área Pix',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (_) => const AreaPixPage(),
                          fullscreenDialog: true),
                    );
                  },
                  icon: Icons.local_parking_outlined,
                ),
                CustomRoundedButton(
                  text: 'Pagar',
                  onPressed: () {},
                  icon: MdiIcons.barcode,
                ),
                CustomRoundedButton(
                  text: 'Transferir',
                  onPressed: () {},
                  icon: MdiIcons.cashFast,
                ),
                CustomRoundedButton(
                  text: 'Depositar',
                  onPressed: () {},
                  icon: MdiIcons.cashPlus,
                ),
                CustomRoundedButton(
                  text: 'Pegar emprestad',
                  onPressed: () {},
                  icon: MdiIcons.handCoin,
                ),
                CustomRoundedButton(
                  text: 'Recarga de Celular',
                  onPressed: () {},
                  icon: Icons.phone_android_rounded,
                ),
                CustomRoundedButton(
                  text: 'Cobrar',
                  onPressed: () {},
                  icon: MdiIcons.chatAlertOutline,
                ),
                CustomRoundedButton(
                  text: 'Doação',
                  onPressed: () {},
                  icon: MdiIcons.cardsHeartOutline,
                ),
                CustomRoundedButton(
                  text: 'Transferir Internac.',
                  onPressed: () {},
                  icon: MdiIcons.webCheck,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 12),
              child: CustomDecoratedBox(
                child: ListTile(
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
                  padding: const EdgeInsets.only(bottom: 20, left: 15),
                  child: Row(
                    children: [
                      CustomDecoratedBox(
                        width: 300,
                        height: 90,
                        child: ListTile(
                          title: RichText(
                            text: TextSpan(
                              text: 'Você tem até ',
                              style: const TextStyle(
                                  fontSize: 17, color: Colors.black),
                              children: [
                                TextSpan(
                                  text: 'R\$ 2.500,00 ',
                                  style:
                                      TextStyle(color: Colors.purple.shade700),
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
                Text(
                  'Empréstimo',
                  style: Theme.of(context).textTheme.headline5,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Text(
                    'Valor disponível de até',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade700),
                  ),
                ),
                Text(
                  'R\$ 2.500,00',
                  style: TextStyle(
                      color: Colors.grey.shade800,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
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
                Text(
                  'Investimentos',
                  style: Theme.of(context).textTheme.headline5,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
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
                    leading: const Icon(
                      MdiIcons.diamondStone,
                    ),
                    title: Row(
                      children: const [
                        Text(
                          'Meu\nPedacinho d...',
                          style: TextStyle(fontSize: 19),
                        ),
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
                Text(
                  'Seguro de Vida',
                  style: Theme.of(context).textTheme.headline5,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
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
                Text(
                  'Shopping',
                  style: Theme.of(context).textTheme.headline5,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
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
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
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
