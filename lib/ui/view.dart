import 'package:catpad/components/drum_pad.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class PadPage extends StatelessWidget {
  PadPage({super.key});

  final PadLogic logic = Get.put(PadLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PartyPad"), centerTitle: true),
      body: SafeArea(
        child: Center(
          child: GridView.count(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 3,
            padding: EdgeInsets.all(16),
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1.0,
            children: List.generate(12, (index) {
              return DrumPad.cheerful(onTap: () => logic.play(index));
            }),
          ),
        ),
      ),
    );
  }
}
