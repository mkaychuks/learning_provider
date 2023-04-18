import 'package:flutter/material.dart';
import 'package:learning_provider/provider/change_state_notifier.dart';
import 'package:learning_provider/widgets/checkbox_tile.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Consumer<CheckBoxChangeNotifier>(
          builder: (context, data, _) {
            return customCheckBoxTile(
              state: data.isChecked!,
              context: context,
              onChanged: (p0) {
                data.changeState(p0, context);
              },
            );
          }
        )
,
      ),
    );
  }
}