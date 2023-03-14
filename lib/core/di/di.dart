import 'package:kiwi/kiwi.dart';
import 'package:meditation_app/core/networking/network_service.dart';

part 'di.g.dart';

abstract class Injector {
  static KiwiContainer? _di;

  static void setUp() {
    _di = KiwiContainer();
    _$Injector().configure();
  }

  static get resolve => _di!.resolve;

  //Region core
  @Register.singleton(NetworkService)
  //end region core

  void configure();
}
