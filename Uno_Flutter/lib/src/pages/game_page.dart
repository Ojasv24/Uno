import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uno_graphql/client.dart';
import 'package:uno_graphql/src/helper/helper.dart';
import 'package:uno_graphql/src/pages/utils/snack_bar.dart';
import 'package:uno_graphql/src/pages/utils/snack_bar_class.dart';
import 'package:uno_graphql/src/pages/widgets/player_list.dart';
import 'package:uno_graphql/src/pages/widgets/topcard_pickbutton_widget.dart';

import '../graphql/subscription.graphql.dart';

import 'utils/change_player_list.dart';
import 'utils/require_pickup_dialog.dart';
import 'widgets/copy_id_button.dart';
import 'widgets/player_cards.dart';
import 'widgets/start_button_widet.dart';

// final prevStateProvider =
//     StateProvider<Subscription$ListenState$roomState?>((ref) {
//   return null;
// });

final subsciptionProvider = StreamProvider.autoDispose((ref) async* {
  final client = ref.read(clientProvider);
  // final prev = ref.read(prevStateProvider.state);
  Subscription$ListenState$roomState? value;

  await for (final val in client.subscribe$ListenState()) {
    if (val.parsedData != null) {
      // prev.state = value;
      final message = showSnackbar(value, val.parsedData!.roomState);
      if (message != null) {
        ref.read(scaffoldMessageProvider.state).state =
            SnackBarClas(message: message.toString(), type: SnackBarType.data);
      }
      value = val.parsedData!.roomState;
      yield val.parsedData!.roomState;
    }
  }
});

class Gamepage extends HookConsumerWidget {
  const Gamepage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(subsciptionProvider).valueOrNull;

    if (data == null) {
      return const Center(child: CircularProgressIndicator());
    }

    final roomState = data;
    final players = roomState.players;
    final state = roomState.state;
    var newPlayerList = updatedList(players, ref.read(nameProvider));
    var gameStarted = false;
    final playerIndex = (newPlayerList.length - 1) <= 3 ? 1 : 2;
    final endIndex =
        (newPlayerList.length - 1) <= 3 ? newPlayerList.length - 1 : 4;
    if (state != null) {
      gameStarted = state.cards.isNotEmpty;
      newPlayerList = updatedList(state.players, ref.read(nameProvider));
    }
    final showWinner = roomState.winner != null;

    final showWaiting = state == null;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                CopyIdButton(
                  id: roomState.id,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (int i = playerIndex; i <= endIndex; i++) ...{
                      PlayerList(
                        playerInfo: newPlayerList[i],
                        state: state,
                      )
                    }
                  ],
                ),
                const SizedBox(
                  height: 0,
                ),
                gameStarted && !showWinner
                    ? TopcardAndPickupButton(
                        state: state!,
                      )
                    : const SizedBox(),
                const StartButtonWidget(),
                if (newPlayerList.length >= 5)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      newPlayerList.length >= 5
                          ? PlayerList(
                              playerInfo: newPlayerList[1],
                              state: state,
                            )
                          : const SizedBox(),
                      newPlayerList.length == 6
                          ? PlayerList(
                              playerInfo: newPlayerList.last, state: state)
                          : const SizedBox(),
                    ],
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    newPlayerList.isNotEmpty
                        ? PlayerList(
                            playerInfo: newPlayerList.first, state: state)
                        : const SizedBox(),
                  ],
                ),
                state != null && !showWinner
                    ? const Expanded(child: PlayerCards())
                    : const SizedBox(),
                if (showWaiting)
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Wating for Players...."),
                        SizedBox(
                          height: 12,
                        ),
                        SizedBox(
                          width: 40,
                          child: LinearProgressIndicator(),
                        )
                      ],
                    ),
                  ),
                if (showWinner)
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(2),
                          // padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 5,
                              color: Colors.purple,
                            ),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.amber,
                          ),
                          child: SvgPicture.network(
                              'https://avatars.dicebear.com/api/miniavs/${roomState.winner!.name}.svg'),
                        ),
                        Text(
                          '${roomState.winner!.name} Won',
                          style: const TextStyle(fontSize: 50),
                        ),
                      ],
                    ),
                  )
              ],
            ),
            if (state != null && !showWinner) requirePick(context, state),
          ],
        ),
      ),
    );
  }
}
