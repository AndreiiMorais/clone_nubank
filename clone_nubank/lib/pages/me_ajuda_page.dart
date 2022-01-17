import 'package:clone_nubank/widgets/ajuda_page_custom_bottom_bar.dart';
import 'package:clone_nubank/widgets/ajuda_page_custom_listtile.dart';
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
          ListView(
            shrinkWrap: true,
            children: const [
              AjudaPageCustomListTile(
                title: 'App do Nubank',
                subtitle:
                    'Saiba mais sobre a tela inicial do seu aplicativo Nubank',
              ),
              AjudaPageCustomListTile(
                title: 'Pix',
                subtitle:
                    'Conheça o novo meio de pagamento.',
              ),
            ],
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
