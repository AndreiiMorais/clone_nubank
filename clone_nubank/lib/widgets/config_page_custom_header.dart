import 'package:flutter/material.dart';

class ConfigPageCustomHeader extends StatelessWidget {
  const ConfigPageCustomHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[350],
      height: 280,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 30, top: 55),
            child: Icon(Icons.close),
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 30, left: 30, right: 20),
                child: CircleAvatar(
                  child: Icon(Icons.person_outline_rounded),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  'Usuário',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 25, top: 30),
            child: Text(
              'Agência 0001 • Conta 00000000-0 • Banco 0260 • Nu Pagamentos S.A. - Instituição de Pagamento',
              style: Theme.of(context).textTheme.bodyText2,
            ),
          )
        ],
      ),
    );
  }
}
