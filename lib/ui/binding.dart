import 'package:get/get.dart';

import 'logic.dart';

class PadBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [Bind.lazyPut(() => PadLogic())];
  }
}