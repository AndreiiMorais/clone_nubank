import 'package:clone_nubank/widgets/custom_listtile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CustomBottonSheet {
  TextEditingController control = TextEditingController(text: 'R\$ 0,00');
  TextEditingController controller = TextEditingController();
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
                      subtitle: 'Leia um QR Code ou cole o c??digo',
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 50),
                      child: CustomListTile(
                        leading: const Icon(Icons.credit_card_rounded),
                        title: 'Pagar fatura do cart??o',
                        subtitle: 'Libere o limite do seu cart??o de cr??dito',
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
                        title: 'Pagar boleto com cart??o de cr??dito',
                        subtitle:
                            'Use o limite do seu cart??o para pagar suas contas em at?? 12x',
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
                        'Qual ?? o valor da transfer??ncia?',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Saldo dispon??vel em conta',
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
                        //nao est?? formatado corretamente, editar isso no futuro
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
                        'Como voc?? quer depositar na sua conta do Nubank?',
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
                          'Gere um c??digo Pix, com ou sem chave, para copiar e colar no seu banco.',
                      trailing: const Icon(Icons.arrow_forward_ios, size: 20),
                    ),
                    CustomListTile(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 15),
                      leading: const Icon(MdiIcons.barcode),
                      title: 'Receber em at?? 3 dias, sem custo',
                      subtitle: 'Gere um boleto de dep??sito.',
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
                      title: 'Receber sal??rio, sem custo',
                      subtitle:
                          'O sal??rio cai no mesmo dia em que ?? depositado onde voc?? tem conta.',
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
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                      ],
                    ),
                    ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      children: [
                        Text(
                          'Qual n??mero voc?? quer recarregar?',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: TextField(
                            controller: controller,
                            decoration:
                                InputDecoration(hintText: '(DDD) + N??mero'),
                            style: TextStyle(fontSize: 40),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void cobrarBottomSheet(
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
                      ],
                    ),
                    ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      children: [
                        Text(
                          'Qual valor voc?? quer receber?',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: TextField(
                            controller: controller,
                            decoration: InputDecoration(hintText: 'R\$ 0,00'),
                            style: TextStyle(fontSize: 40),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void transfInternBottomSheet(
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
                      ],
                    ),
                    ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      children: [
                        Text(
                          'Transfer??ncia Internacional',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        Text(
                          'Envie e receba dinheiro do exterior de maneira r??pida e segura.',
                          style: TextStyle(
                              fontSize: 20, color: Colors.grey.shade700),
                        ),
                        CustomListTile(
                          leading: Icon(MdiIcons.cashMultiple),
                          title: 'Enviar',
                          subtitle:
                              'Fa??a seu dinheiro chegar em mais de 100 pa??ses em apenas um dia ??til.',
                          trailing: Icon(Icons.arrow_forward_ios, size: 20),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void indicarBottomSheet({
    required BuildContext context,
    double? height,
    double? width,
  }) {
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
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        'Resgate seus amigos da fila do banco',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Para cada indica????o aceita, um amigo salvo da burocracia',
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('INDICAR AMIGOS'),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          padding:
                              MaterialStateProperty.all(const EdgeInsets.all(10)),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.purple.shade700),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                          side: MaterialStateProperty.all(
                            BorderSide(
                                color: Colors.purple.shade700,
                                style: BorderStyle.solid),
                          ),
                        ),
                      ),
                    ),
                    Lottie.asset('assets/lottie.json'),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
