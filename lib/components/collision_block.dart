import 'package:flame/components.dart';

class CollisionBlock extends PositionComponent {
  final bool isPlatform;
  // ignore: use_super_parameters
  CollisionBlock({position, size, this.isPlatform = false})
      : super(position: position, size: size);
}
