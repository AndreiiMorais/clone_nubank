import 'package:clone_nubank/pages/area_pix.dart';
import 'package:clone_nubank/pages/configs_page.dart';
import 'package:clone_nubank/pages/conta_page.dart';
import 'package:clone_nubank/pages/emprestimo_page.dart';
import 'package:clone_nubank/pages/me_ajuda_page.dart';
import 'package:clone_nubank/pages/transf_intern_page.dart';
import 'package:clone_nubank/widgets/custom_bottom_sheet.dart';
import 'package:clone_nubank/widgets/custom_rounded_button.dart';
import 'package:clone_nubank/widgets/custom_decoratedbox.dart';
import 'package:clone_nubank/widgets/custom_list.dart';
import 'package:clone_nubank/widgets/custom_row.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatefulWidget {
  final TextEditingController control = TextEditingController(text: 'R\$ 0,00');
  final CustomBottonSheet bottonSheet = CustomBottonSheet();
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String saldo = 'R\$ 0,00';
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
              title: const Text('Ol??, Usu??rio'),
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
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const MeAjudaPage(),
                        fullscreenDialog: true),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: IconButton(
                  splashColor: Colors.purple.shade900,
                  icon: const Icon(
                    MdiIcons.emailPlusOutline,
                  ),
                  onPressed: () {
                    widget.bottonSheet.indicarBottomSheet(context: context);
                  },
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
                      transitionDuration: const Duration(milliseconds: 200),
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
                subtitle:
                    Text(saldo, style: Theme.of(context).textTheme.headline4),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 17,
                ),
              ),
            ),
            CustomRow(
              children: [
                CustomRoundedButton(
                  text: '??rea Pix',
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
                  onPressed: () {
                    widget.bottonSheet.pagarBottomSheet(
                      context: context,
                      height: MediaQuery.of(context).size.height * .85,
                    );
                  },
                  icon: MdiIcons.barcode,
                ),
                CustomRoundedButton(
                  text: 'Transferir',
                  onPressed: () {
                    widget.bottonSheet.tranferirBottomSheet(
                        height: MediaQuery.of(context).size.height * .90,
                        context: context,
                        saldo: 'R\$ 0,00');
                  },
                  icon: MdiIcons.cashFast,
                ),
                CustomRoundedButton(
                  text: 'Depositar',
                  onPressed: () {
                    widget.bottonSheet.depositarBottomSheet(
                        context: context,
                        height: MediaQuery.of(context).size.height * .90);
                  },
                  icon: MdiIcons.cashPlus,
                ),
                CustomRoundedButton(
                  text: 'Pegar emprestad',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const EmprestimoPage(),
                        fullscreenDialog: true,
                      ),
                    );
                  },
                  icon: MdiIcons.handCoin,
                ),
                CustomRoundedButton(
                  text: 'Recarga de Celular',
                  onPressed: () {
                    widget.bottonSheet.recargaBottomSheet(
                      context: context,
                      saldo: saldo,
                      height: MediaQuery.of(context).size.height * .90,
                    );
                  },
                  icon: Icons.phone_android_rounded,
                ),
                CustomRoundedButton(
                  text: 'Cobrar',
                  onPressed: () {
                    widget.bottonSheet.cobrarBottomSheet(
                      context: context,
                      saldo: saldo,
                      height: MediaQuery.of(context).size.height * .90,
                    );
                  },
                  icon: MdiIcons.chatAlertOutline,
                ),
                CustomRoundedButton(
                  text: 'Doa????o',
                  onPressed: () {},
                  icon: MdiIcons.cardsHeartOutline,
                ),
                CustomRoundedButton(
                  text: 'Transferir Internac.',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            const TransferenciaInternacionalPage(),
                        fullscreenDialog: true,
                      ),
                    );
                  },
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
                    'Meus Cart??es',
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
                              text: 'Voc?? tem at?? ',
                              style: const TextStyle(
                                  fontSize: 17, color: Colors.black),
                              children: [
                                TextSpan(
                                  text: 'R\$ 2.500,00 ',
                                  style:
                                      TextStyle(color: Colors.purple.shade700),
                                ),
                                const TextSpan(
                                  text: 'dispon??veis para empr??stimo.',
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
                                      text: 'Fa??a um convite ...',
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
                    'Cart??o de cr??dito',
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
                  'Limite dispon??vel de R\$ 190,00',
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
                  'Empr??stimo',
                  style: Theme.of(context).textTheme.headline5,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Text(
                    'Valor dispon??vel de at??',
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
                    'O jeito Nu de investir: sem asteriscos, linguagem f??cil e a partir de R\$1. Saiba mais.',
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
                    'Conhe??a Nubank Vida: um seguro simples e que cabe no bolso.',
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
                          'Mostre aos seus amigos como ?? f??cil ter uma vida sem burocracia.'),
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
