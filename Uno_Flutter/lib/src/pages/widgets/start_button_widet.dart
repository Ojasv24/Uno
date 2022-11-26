import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uno_graphql/src/graphql/mutations.graphql.dart';
import 'package:uno_graphql/src/pages/game_page.dart';

import 'my_elevated_button.dart';

class StartButtonWidget extends HookConsumerWidget {
  const StartButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final start = useMutation$StartGame();
    final restart = useMutation$RestartGame();
    final state = ref.watch(subsciptionProvider).valueOrNull;

    final showStart = state?.state == null && (state?.players.length ?? 0) > 1;
    final showReset = state?.winner != null;
    // return SizedBox();
    return Column(
      children: [
        if (showStart)
          MyElevatedButton(
              onPressed: () {
                start.runMutation();
              },
              child: const Text(
                'Start',
                style: TextStyle(
                  fontSize: 34,
                ),
              )),
        const SizedBox(
          height: 20,
        ),
        if (showReset)
          MyElevatedButton(
              onPressed: () {
                restart.runMutation();
              },
              child: const Text(
                'ResetGame',
                style: TextStyle(
                  fontSize: 24,
                ),
              )),
      ],
    );
  }
}
