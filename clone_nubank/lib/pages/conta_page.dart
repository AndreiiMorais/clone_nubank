import 'package:clone_nubank/widgets/custom_decoratedbox.dart';
import 'package:clone_nubank/widgets/custom_listtile.dart';
import 'package:clone_nubank/widgets/custom_rounded_button.dart';
import 'package:clone_nubank/widgets/custom_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ContaPage extends StatelessWidget {
  const ContaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.grey.shade700,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.help_outline_rounded,
              color: Colors.grey.shade700,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Saldo disponível',
              style: TextStyle(color: Colors.grey.shade700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'R\$ 0,00',
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(top: 20, left: 20),
            leading: const Padding(
              padding: EdgeInsets.only(
                top: 7,
              ),
              child: Icon(MdiIcons.piggyBankOutline),
            ),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text(
                'Dinheiro guardado',
                style: TextStyle(fontSize: 15, color: Colors.grey.shade600),
              ),
            ),
            subtitle: const Text(
              'R\$ 0,00',
              style: TextStyle(color: Colors.black),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(top: 20, left: 20),
            leading: const Padding(
              padding: EdgeInsets.only(top: 7),
              child: Icon(MdiIcons.signal),
            ),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text(
                'Rendimento total da conta',
                style: TextStyle(fontSize: 15, color: Colors.grey.shade600),
              ),
            ),
            subtitle: RichText(
              text: TextSpan(
                  text: '+R\$ 0,00',
                  style: TextStyle(color: Colors.green.shade800),
                  children: const [
                    TextSpan(
                      text: ' este mês',
                      style: TextStyle(color: Colors.black),
                    )
                  ]),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Card(
              elevation: 4,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomRoundedButton(
                    icon: MdiIcons.cashPlus,
                    text: 'Depositar',
                    onPressed: () {},
                  ),
                  CustomRoundedButton(
                    icon: MdiIcons.barcode,
                    text: 'Pagar',
                    onPressed: () {},
                  ),
                  CustomRoundedButton(
                    icon: MdiIcons.cashFast,
                    text: 'Transferir',
                    onPressed: () {},
                  ),
                  CustomRoundedButton(
                    icon: MdiIcons.handCoin,
                    text: 'Empréstimos',
                    onPressed: () {},
                  ),
                  CustomRoundedButton(
                    icon: MdiIcons.noteTextOutline,
                    text: 'Pedir Extrato',
                    onPressed: () {},
                  ),
                  CustomRoundedButton(
                    icon: MdiIcons.chatAlertOutline,
                    text: 'Cobrar',
                    onPressed: () {},
                  ),
                  CustomDecoratedBox(
                    height: 50,
                    width: 100,
                    child: ListTile(
                      leading: Icon(
                        MdiIcons.handCoin,
                        color: Colors.black,
                      ),
                      title: RichText(text: TextSpan(text: 'Até ', style: TextStyle(Colors.black))),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
