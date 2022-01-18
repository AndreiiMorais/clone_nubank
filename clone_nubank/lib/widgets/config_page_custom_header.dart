import 'package:flutter/material.dart';

class ConfigPageCustomHeader extends StatelessWidget {
  const ConfigPageCustomHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[350],
      height: 170,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 5, left: 20, right: 15),
                child: CircleAvatar(
                  radius: 25,
                  child: Icon(
                    Icons.person_outline_rounded,
                    size: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  'Usuário',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 25, top: 30),
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
