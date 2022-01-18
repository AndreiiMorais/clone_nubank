import 'package:clone_nubank/widgets/config_page_custom_header.dart';
import 'package:clone_nubank/widgets/config_page_listtile.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ConfigPage extends StatelessWidget {
  const ConfigPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.grey.shade700,
        elevation: 0,
        backgroundColor: Colors.grey[350],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: const [
            ConfigPageCustomHeader(),
            ConfigPageListTile(
              icon: Icons.help_outline_rounded,
              text: 'Me ajuda',
            ),
            ConfigPageListTile(
              icon: Icons.person_outline_outlined,
              text: 'Meus dados',
            ),
            ConfigPageListTile(
              icon: MdiIcons.tuneVariant,
              text: 'Configurar App',
            ),
            ConfigPageListTile(
              icon: MdiIcons.shieldOutline,
              text: 'Segurança',
            ),
            ConfigPageListTile(
              icon: Icons.local_parking,
              text: 'Configurar chaves Pix',
            ),
            ConfigPageListTile(
              icon: Icons.storefront_outlined,
              text: 'Pedir conta PJ',
            ),
            ConfigPageListTile(
              icon: Icons.notifications_outlined,
              text: 'Notificações',
            ),
            ConfigPageListTile(
              icon: MdiIcons.cashMultiple,
              text: 'Configurar conta',
            ),
            ConfigPageListTile(
              icon: Icons.credit_card_outlined,
              text: 'Configurar cartão',
            ),
            ConfigPageListTile(
              icon: MdiIcons.noteTextOutline,
              text: 'Sobre',
            ),
            ConfigPageListTile(
              icon: MdiIcons.arrowULeftBottom,
              text: 'Sair do aplicativo',
            ),
          ],
        ),
      ),
    );
  }
}
