import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class EmprestimoPage extends StatelessWidget {
  const EmprestimoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            leading: Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
              child: CircleAvatar(
                backgroundColor: Colors.black45,
                radius: 20,
                child: IconButton(
                  icon: const Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black45,
                  child: Center(
                    child: IconButton(
                      padding: const EdgeInsets.all(0),
                      icon: const Icon(
                        Icons.help_outline_rounded,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
            ],
            expandedHeight: 150,
            flexibleSpace: Stack(
              children: [
                Positioned.fill(
                    child: Image.asset(
                  "assets/emprest_logo.jpg",
                  fit: BoxFit.cover,
                ))
              ],
            ),
          ),
        ],
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Empréstimo do jeito Nubank.',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Text(
                  'Você no controle do início ao fim.',
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 20),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Text(
                  'Veja como funciona:',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.grey[350],
                  child: IconButton(
                    icon: const Icon(
                      MdiIcons.tuneVariant,
                      color: Colors.black,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Text(
                  'Simule fácil',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Text(
                  'No Nubank, você simula as condições de acordo com o que precisa e escolhe a melhor opção pra você.',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: CircleAvatar(
                  backgroundColor: Colors.grey[350],
                  radius: 40,
                  child: IconButton(
                    icon: const Icon(
                      MdiIcons.clockTimeFiveOutline,
                      size: 30,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Receba na hora',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Text(
                  'Depois da contratação, o dinheiro cai na sua conta do Nubank na hora, sem burocracia.',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: CircleAvatar(
                  backgroundColor: Colors.grey[350],
                  radius: 40,
                  child: IconButton(
                    icon: const Icon(
                      Icons.credit_card_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Fique no controle',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Text(
                  'Você gerencia os pagamentos de forma fácil. Antecipe parcelas com desconto sempre que quiser.',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.purple.shade700)),
            onPressed: () {},
            child: const Text(
              'Calcular empréstimo',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
