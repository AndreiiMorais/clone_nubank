import 'package:clone_nubank/widgets/custom_listtile.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TransferenciaInternacionalPage extends StatelessWidget {
  const TransferenciaInternacionalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.grey.shade700,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(
              Icons.help_outline_outlined,
              color: Colors.grey.shade700,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tranferência Internacional',
              style: Theme.of(context).textTheme.headline3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Envie e receba dinheiro do exterior de maneira rápida e segura.',
                style: TextStyle(fontSize: 20, color: Colors.grey.shade600),
              ),
            ),
            CustomListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 0),
              leading: const Icon(MdiIcons.cashMultiple),
              title: 'Enviar',
              subtitle:
                  'Faça seu dinheiro chegar em mais de 100 paises em apenas um dia útil.',
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
            ),
            CustomListTile(
              contentPadding: EdgeInsets.all(0),
              leading: const Icon(MdiIcons.cashPlus),
              title: 'Receber',
              subtitle:
                  'Receba dinheiro do exterior com total segurança em apenas dois dias úteis.',
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
