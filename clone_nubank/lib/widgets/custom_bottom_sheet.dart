import 'package:clone_nubank/widgets/custom_listtile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CustomBottonSheet {
  TextEditingController control = TextEditingController(text: 'R\$ 0,00');
  showBottomSheet(
      {required BuildContext context,
      required List<Widget> children,
      double? height,
      double? width}) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Wrap(
          children: [
            SizedBox(
              height: height,
              width: width,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: children,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void pagarBottomSheet(
      {required BuildContext context, double? height, double? width}) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Wrap(
          children: [
            SizedBox(
              height: height,
              width: width,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                      ],
                    ),
                    CustomListTile(
                      leading: const Icon(Icons.local_parking),
                      title: 'Pagar com Pix',
                      subtitle: 'Leia um QR Code ou cole o código',
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 50),
                      child: CustomListTile(
                        leading: const Icon(Icons.credit_card_rounded),
                        title: 'Pagar fatura do cartão',
                        subtitle: 'Libere o limite do seu cartão de crédito',
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        ),
                      ),
                    ),
                    CustomListTile(
                      leading: const Icon(MdiIcons.barcode),
                      title: 'Pagar boleto com saldo da Conta',
                      subtitle:
                          'use o saldo da sua conta do Nubank para pagar seus boletos',
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 50),
                      child: CustomListTile(
                        leading: const Icon(MdiIcons.barcode),
                        title: 'Pagar boleto com cartão de crédito',
                        subtitle:
                            'Use o limite do seu cartão para pagar suas contas em até 12x',
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void tranferirBottomSheet(
      {required BuildContext context,
      double? height,
      double? width,
      required String saldo}) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Wrap(
          children: [
            SizedBox(
              height: height,
              width: width,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                        const Spacer(),
                        IconButton(
                          icon: const Icon(MdiIcons.qrcode),
                          onPressed: () {},
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Qual é o valor da transferência?',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Saldo disponível em conta',
                        style: TextStyle(
                            fontSize: 20, color: Colors.grey.shade600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        saldo,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 20, left: 20, top: 40),
                      child: TextField(
                        //nao está formatado corretamente, editar isso no futuro
                        controller: control,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          FilteringTextInputFormatter.singleLineFormatter,
                        ],
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void depositarBottomSheet(
      {required BuildContext context, double? height, double? width}) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Wrap(
          children: [
            SizedBox(
              height: height,
              width: width,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'Como você quer depositar na sua conta do Nubank?',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ),
                    CustomListTile(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 15),
                      leading: const Padding(
                        padding: EdgeInsets.only(top: 25),
                        child: Icon(Icons.local_parking),
                      ),
                      title: 'Receber na hora em qualquer dia, sem custo',
                      subtitle:
                          'Gere um código Pix, com ou sem chave, para copiar e colar no seu banco.',
                      trailing: const Icon(Icons.arrow_forward_ios, size: 20),
                    ),
                    CustomListTile(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 15),
                      leading: const Icon(MdiIcons.barcode),
                      title: 'Receber em até 3 dias, sem custo',
                      subtitle: 'Gere um boleto de depósito.',
                      trailing: const Icon(Icons.arrow_forward_ios, size: 20),
                    ),
                    CustomListTile(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 15),
                      leading: const Icon(MdiIcons.cashPlus),
                      title: 'Copiar dados da conta',
                      subtitle:
                          'Usar os dados da sua conta para transferir usando Pix, TED e DOC',
                      trailing: const Icon(Icons.arrow_forward_ios, size: 20),
                    ),
                    CustomListTile(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 15),
                      leading: const Padding(
                        padding: EdgeInsets.only(top: 25),
                        child: Icon(MdiIcons.cashMultiple),
                      ),
                      title: 'Receber salário, sem custo',
                      subtitle:
                          'O salário cai no mesmo dia em que é depositado onde você tem conta.',
                      trailing: const Icon(Icons.arrow_forward_ios, size: 20),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void recargaBottomSheet(
      {required BuildContext context,
      double? height,
      double? width,
      required String saldo}) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Wrap(
          children: [
            SizedBox(
              height: height,
              width: width,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
