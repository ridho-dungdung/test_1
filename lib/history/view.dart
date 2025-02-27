import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: HistoryLogic(),
        builder: (ctr) => Container(
          child: Center(child: Text('History'),),
        )
    );
  }
}
