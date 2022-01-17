import 'package:clone_nubank/widgets/ajuda_page_custom_bottom_bar.dart';
import 'package:clone_nubank/widgets/custom_listtile.dart';
import 'package:flutter/material.dart';

class MeAjudaPage extends StatelessWidget {
  const MeAjudaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.close,
          color: Colors.black,
        ), //remover
        centerTitle: true,
        title: Text(
          'Me Ajuda',
          style: Theme.of(context).textTheme.bodyText2,
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    Text(
                      'Qual é sua dúvida?',
                      style:
                          TextStyle(fontSize: 18, color: Colors.grey.shade600),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 486,
            child: ListView(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              children: const [
                CustomListTile(
                  title: 'App do Nubank',
                  subtitle:
                      'Saiba mais sobre a tela inicial do seu aplicativo Nubank',
                ),
                CustomListTile(
                  title: 'Pix',
                  subtitle: 'Conheça o novo meio de pagamento.',
                ),
                CustomListTile(
                  title: 'Nubank Ultravioleta',
                  subtitle: 'Conheça tudo sobre o nosso novo cartão de crédito',
                ),
                CustomListTile(
                  title: 'Easynvest by Nubank agora é NuInvest',
                  subtitle: 'Informações gerais sobre a NuInvest',
                ),
                CustomListTile(
                  title: 'Débito Automatico',
                  subtitle: 'Saiba mais sobre o Débito Automatico Nubank',
                ),
                CustomListTile(
                  title: 'Fundos de Investimentos',
                  subtitle: 'Fundos de Investimentos do Nubank',
                ),
                CustomListTile(
                  title: 'Seguro de vida',
                  subtitle: 'Conheça mais sobre o Nubank Vida',
                ),
                CustomListTile(
                  title: 'Coronavírus',
                  subtitle: 'Dúvidas sobre o coronavírus? Veja aqui!',
                ),
                CustomListTile(
                  title: 'Auxílio Emergencial',
                  subtitle: 'Dúvidas sobre o Auxílio Emergencial?',
                ),
                CustomListTile(
                  title: 'Novidades',
                  subtitle: 'Tudo sobre o Nubank e nossos produtos',
                ),
                CustomListTile(
                  title: 'Conta',
                  subtitle: 'Conheça tudo sobre a sua conta digital',
                ),
                CustomListTile(
                  title: 'Cartão de Crédito',
                  subtitle:
                      'Conheça as funcionalidades do Cartão de crédito Nubank',
                ),
                CustomListTile(
                  title: 'Pagar Fatura',
                  subtitle: 'Descubra como e onde pagar a sua fatura',
                ),
                CustomListTile(
                  title: 'Pagamento automático da fatura do cartão de crédito',
                  subtitle:
                      'Saiba mais sobre o pagamento automático da sua fatura',
                ),
                CustomListTile(
                  title: 'Parcelar Fatura',
                  subtitle: 'Veja como parcelar sua fatura.',
                ),
                CustomListTile(
                  title: 'Limite de Crédito',
                  subtitle: 'Tire suas dúvidas sobre seu limite de crédito',
                ),
                CustomListTile(
                  title: 'Cartão Virtual',
                  subtitle: 'Conheça as funcionalidades do cartão virtual',
                ),
                CustomListTile(
                  title: 'Rewards',
                  subtitle: 'Tudo sobre o nosso programa de fidelidade',
                ),
                CustomListTile(
                  title: 'Fatura Atrasada',
                  subtitle:
                      'Saiba sobre suas opções de pagamento da fatura atrasada',
                ),
                CustomListTile(
                  title: 'Empréstimo Atrasado',
                  subtitle: 'Informações sobre seu empréstimo em atraso',
                ),
                CustomListTile(
                  title: 'Compras com o cartão',
                  subtitle: 'imformações sobre suas compras no cartão',
                ),
                CustomListTile(
                  title: 'Problemas com compras na função crédito',
                  subtitle:
                      'Dúvidas sobre cancelamento e estorno de compras na função crédito',
                ),
                CustomListTile(
                  title: 'Problemas com compras na função débito ou saques',
                  subtitle:
                      'Dúvidas sobre cancelamento e estorno de compras na função débito',
                ),
                CustomListTile(
                  title: 'Produção e entrega do cartão',
                  subtitle: 'Informações sobre o recebimento do cartão Nubank',
                ),
                CustomListTile(
                  title: 'Empréstimo Pessoal',
                  subtitle: 'Tire suas dúvidas sobre empréstimo pessoal',
                ),
                CustomListTile(
                  title: 'Empréstimo com Portabilidade de Salário',
                  subtitle:
                      'Tire suas dúvidas sobre empréstimo com portabilidade de salário',
                ),
                CustomListTile(
                  title: 'Compras no exterior',
                  subtitle: 'Cotação, conversão, IOF e Spread.',
                ),
                CustomListTile(
                  title: 'Dados da sua Conta',
                  subtitle: 'Dados cadastrais e senhas.',
                ),
                CustomListTile(
                  title: 'Pagamentos no Whatsapp',
                  subtitle:
                      'Tudo sobre pagamentos que aconteceram no Whatsapp.',
                ),
                CustomListTile(
                  title: 'Segurança',
                  subtitle: 'Tudo sobre a proteção da sua conta',
                ),
                CustomListTile(
                  title: 'Opções de Depósito na sua Conta',
                  subtitle: 'Informações sobre aplicações em RDB.',
                ),
                CustomListTile(
                  title: 'Conta PJ',
                  subtitle: 'Conheça nossa conta para pessoa jurídica',
                ),
                CustomListTile(
                  title: 'Open Banking',
                  subtitle: 'Saiba mais sobre Open Banking',
                ),
                CustomListTile(
                  title: 'Sobre o Nubank',
                  subtitle: 'Junte-se à nossa revolução!',
                ),
                CustomListTile(
                  title: 'Tela de Rendimentos',
                  subtitle: 'Informações sobre a tela de rendimentos.',
                ),
                CustomListTile(
                  title: 'Resgate Planejado',
                  subtitle: 'Informações gerais sobreo Resgate Planejado.',
                ),
                CustomListTile(
                  title: 'Doações',
                  subtitle: 'Faça doações para instituições usando o Nubank',
                ),
                CustomListTile(
                  title: 'LGPD - Privacidade',
                  subtitle: 'Saiba como exercer os seus direitos.',
                ),
                CustomListTile(
                  title: 'Construir Limite',
                  subtitle: 'Conheça mais sobre a função Construir Limite',
                ),
                CustomListTile(
                  title: 'Reemissão de Cartão',
                  subtitle: 'Saiba tudo como pedir uma nova via do seu cartão',
                ),
                CustomListTile(
                  title: 'Notificações',
                  subtitle: 'Dúvidas sobre notificações e comunicações',
                ),
                CustomListTile(
                  title: 'Cadastro positivo',
                  subtitle: 'Saiba tudo sobre cadastro positivo',
                ),
                CustomListTile(
                  title: 'Mastercard',
                  subtitle: 'Saiba mais sobre a Mastercard e seu cartão Nubank',
                ),
                CustomListTile(
                  title: 'Domicílio Bancário',
                  subtitle: 'Receber da maquininha na conta do Nubank',
                ),
                CustomListTile(
                  title: 'Transferência Internacional',
                  subtitle: 'Saiba mais sobre transferências internacionais',
                ),
                CustomListTile(
                  title: 'Análise para liberação da função crédito',
                  subtitle:
                      'Entenda como funciona a análise para liberação de crédito',
                ),
                CustomListTile(
                  title: 'Limites Transacionais',
                  subtitle: 'Saiba mais sobre Limites Transacionais',
                ),
                CustomListTile(
                  title: 'Bolsa de Valores - Dúvidas Gerais',
                  subtitle: 'Saiba mais como funciona a bolsa de valores',
                ),
                CustomListTile(
                  title: 'Bolsa de Valores - Compra e Venda',
                  subtitle:
                      'Saiba mais sobre como funciona a compra e venda de ações na bolsa',
                ),
                CustomListTile(
                  title: 'CDB',
                  subtitle: 'Informações sobre o investimento',
                ),
                CustomListTile(
                  title: 'Outras Dúvidas',
                  subtitle: 'Ainda com dúvidas? Veja aqui.',
                ),
                CustomListTile(
                  title: 'NuSócios',
                  subtitle: 'Tudo sobre o pedacinho do Nubank',
                ),
                CustomListTile(
                  title: 'Ipo do Nubank',
                  subtitle: 'Tudo sobre o IPO do Nubank',
                ),
                CustomListTile(
                  title: 'Limites Pix',
                  subtitle: 'Saiba mais como funcionam os limites Pix',
                ),
                CustomListTile(
                  title: 'Pix Saque e Pix Troco',
                  subtitle: 'Saiba mais sobre o Pix Saque e o Pix Troco',
                ),
                CustomListTile(
                  title: 'Empréstimo com carro como garantia',
                  subtitle:
                      'Tire suas dúvidas sobre empréstimo com carro como garantia',
                ),
                CustomListTile(
                  title: 'Shopping',
                  subtitle: 'Tire suas dúvidas sobre as ofertas e promoções',
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: AjudaPageCustomBottomBar(
        children: [
          const Icon(
            Icons.chat,
            color: Colors.black,
          ),
          const SizedBox(width: 10),
          Text(
            'Converse com a gente',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}
