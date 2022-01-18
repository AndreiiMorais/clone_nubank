import 'package:clone_nubank/widgets/custom_listtile.dart';
import 'package:clone_nubank/widgets/custom_rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AreaPixPage extends StatelessWidget {
  const AreaPixPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.grey.shade700,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.help_outline_outlined,
              color: Colors.grey.shade700,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: [
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
              Text(
                'Área Pix',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Envie e receba pagamentos a qualquer hora e dia da semana, sem pagar nada por isso.',
                  style: TextStyle(color: Colors.grey.shade600),
                ),
              ),
              Text(
                'Enviar',
                style: Theme.of(context).textTheme.headline5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomRoundedButton(
                    icon: MdiIcons.cashFast,
                    text: 'Transferir',
                    onPressed: () {},
                  ),
                  CustomRoundedButton(
                    icon: Icons.content_copy_rounded,
                    text: 'Pix copia e Cola',
                    onPressed: () {},
                  ),
                  CustomRoundedButton(
                    icon: MdiIcons.qrcode,
                    text: 'Ler QR code',
                    onPressed: () {},
                  ),
                ],
              ),
              Text(
                'Receber',
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 0),
              elevation: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: CustomRoundedButton(
                      icon: MdiIcons.chatAlertOutline,
                      text: 'Cobrar',
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: CustomRoundedButton(
                      icon: MdiIcons.cashPlus,
                      text: 'Depositar',
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(width: 90)
                ],
              ),
            ),
          ),
          CustomListTile(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            title: 'Registrar ou trazer chaves',
            subtitle:
                'Registre uma nova chave ou faça uma portabilidade para o Nubank',
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
          ),
          CustomListTile(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            title: 'Configurar Pix',
            subtitle:
                'Gerencie seu limite diário de transferências ou suas chaves Pix.',
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
          )
        ],
      ),
    );
  }
}
