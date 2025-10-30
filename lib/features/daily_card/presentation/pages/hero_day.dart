import 'package:deck_cosmic/features/heroes/presentation/widgets/build_power_stats_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:deck_cosmic/features/daily_card/presentation/provider/daily_card_notifier.dart';
import 'package:deck_cosmic/features/heroes/presentation/widgets/build_image_large.dart';

class HeroDay extends StatefulWidget {
  const HeroDay({super.key});

  @override
  State<HeroDay> createState() => _HeroDayState();
}

class _HeroDayState extends State<HeroDay> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<DailyCardNotifier>(context, listen: false).loadDailyHero();
    });
  }

  void _collectHero(BuildContext context, DailyCardNotifier notifier) async {
    final resultMessage = await notifier.collectHero();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(resultMessage),
        backgroundColor: resultMessage.contains('sucesso') ? Colors.green : Colors.red,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final notifier = context.watch<DailyCardNotifier>();
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      extendBodyBehindAppBar: true,
      body:
      RefreshIndicator(onRefresh: () {
          return Provider.of<DailyCardNotifier>(context, listen: false)
            .loadDailyHero();
        },
        child: _buildBody(context, notifier, textTheme),
      )
    );
  }

  Widget _buildScrollableCenter(Widget child) {
    return LayoutBuilder(builder: (context, constraints) {
      return SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: constraints.maxHeight),
          child: Center(child: child),
        ),
      );
    });
  }

  Widget _buildBody(BuildContext context, DailyCardNotifier notifier, TextTheme textTheme) {

    switch (notifier.state) {

      case DailyCardState.loading:
        return _buildScrollableCenter(const CircularProgressIndicator());

      case DailyCardState.error:
        return _buildScrollableCenter(
          Text(
            'Erro ao carregar card: ${notifier.errorMessage}',
            style: const TextStyle(color: Colors.red),
            textAlign: TextAlign.center,
          ),
        );

      case DailyCardState.loaded:
        if (notifier.hero == null) {
          return _buildScrollableCenter( Text('Herói não encontrado.', style: TextStyle(color: Colors.white)));
        }
        final hero = notifier.hero!;
        final hasCollected = notifier.hasCollected;

        return SingleChildScrollView(
          padding: const EdgeInsets.only(top: 16 , left: 16, right: 16, bottom: 16),
          child: Column(
            children: [
              Card(
                  elevation: 10,
                  margin: const EdgeInsets.only(
                      top: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                        width: 3),
                  ),
                  clipBehavior:
                  Clip.antiAlias,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        BuildImageLarge(hero: hero,),
                        const SizedBox(height: 16),
                        Text(
                          hero.name,
                          style: textTheme.headlineMedium?.copyWith(
                            fontFamily: 'Bangers',
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        const SizedBox(height: 16),
                        BuildPowerStatsBar(hero: hero),
                      ],
                    ),
                  ),
              ),
              
              const SizedBox(height: 32),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: hasCollected ? Theme.of(context).colorScheme.error : Theme.of(context).colorScheme.onPrimary,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                onPressed: hasCollected ? null : () => _collectHero(context, notifier),
                child: Text(
                  hasCollected ? 'JÁ OBTIDO' : 'OBTER CARTA',
                  style: TextStyle(color: hasCollected ? Theme.of(context).colorScheme.error : null),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        );
    }
  }
}