import 'package:amber_quest/ember_quest.dart';
import 'package:amber_quest/overlays/game_over.dart';
import 'package:amber_quest/overlays/main_menu.dart';
import 'package:flame/game.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    GameWidget<EmberQuestGame>.controlled(
      gameFactory: EmberQuestGame.new,
      overlayBuilderMap: {
        'MainMenu': (_, game) => MainMenu(game: game),
        'GameOver': (_, game) => GameOver(game: game),
      },
      initialActiveOverlays: const ['MainMenu'],
    ),
  );
}
