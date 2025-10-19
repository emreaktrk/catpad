import 'package:flutter/services.dart';
import 'package:flutter_midi_pro/flutter_midi_pro.dart';
import 'package:get/get.dart';

class PadLogic extends GetxController {
  final _midi = MidiPro();
  late int _sfId;

  @override
  void onInit() async {
    _sfId = await _midi.loadSoundfont(
      path: "assets/power_drum_kit.sf2",
      bank: 0,
      program: 0,
    );
    super.onInit();
  }

  void play(int key) async {
    HapticFeedback.lightImpact();

    _midi.playNote(
      velocity: 127,
      sfId: _sfId,
      key: 60 + (key * 3),
    );
  }

  @override
  void onClose() {
    super.onClose();
    _midi.dispose();
  }
}
