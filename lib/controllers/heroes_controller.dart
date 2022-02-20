import 'package:marvel_heroes/models/character.dart';
import 'package:marvel_heroes/repository/heroes_repository.dart';

class HeroesController {
  final HeroesRepository _heroRepository = HeroesRepository();
  List<Character> _heroes = [];
  List<Character> _villains = [];
  List<Character> _antiHeroes = [];
  List<Character> _aliens = [];
  List<Character> _humans = [];

  get heroes => _heroes;

  get villains => _villains;

  get antiHeroes => _antiHeroes;

  get aliens => _aliens;

  get humans => _humans;

  Future start() async {
    _heroes = await _heroRepository.loadingHeroesJson('heroes');
    _villains = await _heroRepository.loadingHeroesJson('villains');
    _antiHeroes = await _heroRepository.loadingHeroesJson('antiHeroes');
    _aliens = await _heroRepository.loadingHeroesJson('aliens');
    _humans = await _heroRepository.loadingHeroesJson('humans');
  }
}
