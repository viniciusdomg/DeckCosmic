import 'package:deck_cosmic/features/heroes/presentation/pages/hero_detail.dart';
import 'package:deck_cosmic/features/heroes/presentation/widgets/hero_detail_body.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:deck_cosmic/features/heroes/domain/entities/hero_entity.dart';
import 'package:deck_cosmic/features/my_cards/presentation/provider/my_cards_notifier.dart';


class MyHeroDetail extends StatelessWidget {
  final HeroEntity hero;

  const MyHeroDetail({super.key, required this.hero});

  void _abandonCard(BuildContext context) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.warning,
      animType: AnimType.bottomSlide,
      title: 'Abandonar Carta',
      desc: 'Você tem certeza que deseja abandonar a carta de ${hero.name}?',
      btnCancelText: 'Cancelar',
      btnOkText: 'Abandonar',
      btnCancelOnPress: () {},
      btnOkOnPress: () async {

        final notifier = Provider.of<MyCardsNotifier>(context, listen: false);
        final bool success = await notifier.removeCard(hero.id);

        Navigator.of(context).pop();

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(success ? 'Carta abandonada.' : 'Erro ao abandonar.'),
            backgroundColor: success ? Colors.green : Colors.red,
          ),
        );
      },
    ).show();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(hero.name),

        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: kToolbarHeight + 50, left: 16, right: 16, bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeroDetailBody(hero: hero),
            const SizedBox(height: 32),
            Center(
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade800,
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                ),
                onPressed: () => _abandonCard(context),
                icon: const Icon(Icons.delete_forever, color: Colors.white),
                label: const Text(
                  'ABANDONAR CARTA',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}