import 'dart:async';
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:pixel_adventure/components/level.dart';

class PixelAdventure extends FlameGame {
  @override
  Color backgroundColor() {
    return const Color(0xff211f30);
  }

  late final CameraComponent cam;

  final world = Level();

  @override
  FutureOr<void> onLoad() async {
    await images.loadAllImages();

    cam = CameraComponent.withFixedResolution(
      world: world,
      height: 360,
      width: 640,
    );
    cam.viewfinder.anchor = Anchor.topLeft;
    addAll([cam, world]);
    return super.onLoad();
  }
}
