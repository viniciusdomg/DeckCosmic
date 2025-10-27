import 'package:deck_cosmic/features/heroes/domain/entities/hero_entity.dart';
import 'package:deck_cosmic/features/heroes/domain/repository/hero_repository.dart';
import 'package:deck_cosmic/features/heroes/presentation/widgets/hero_card.dart';
import 'package:deck_cosmic/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class HeroesList extends StatefulWidget {
  const HeroesList({super.key});

  @override
  State<HeroesList> createState() => _HeroesListState();
}

class _HeroesListState extends State<HeroesList> {

  final IHeroRepository _heroRepository = getIt<IHeroRepository>();
  late final PagingController<int, HeroEntity> _pagingController = PagingController<int, HeroEntity>(
    getNextPageKey: (state) => state.lastPageIsEmpty ? null : state.nextIntPageKey,
    fetchPage: (pageKey) => _heroRepository.getAllHeroes(page: pageKey, limit: 20),
  );

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  PagingListener(
      controller: _pagingController,
      builder: (context, state, fetchNextPage) => PagedListView<int, HeroEntity>(
        state: state,
        fetchNextPage: fetchNextPage,
        builderDelegate: PagedChildBuilderDelegate(
          itemBuilder: (context, hero, index) => HeroCard(hero: hero),
        ),
      ),
    );
  }
}

