import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:uno_graphql/src/graphql/subscription.graphql.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlayerList extends HookWidget {
  const PlayerList({Key? key, required this.playerInfo, required this.state})
      : super(key: key);
  final Fragment$PlayerFragment playerInfo;
  final Subscription$ListenState$roomState$state? state;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          children: [
            Text(
              playerInfo.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(2),
              // padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(
                  color: state != null &&
                          playerInfo.name ==
                              state!
                                  .players[int.parse(state!.currentPlayer)].name
                      ? Colors.green
                      : Colors.red,
                  width: 5,
                ),
                borderRadius: BorderRadius.circular(20),
                color: Colors.amber,
              ),
              child: SvgPicture.network(
                  'https://avatars.dicebear.com/api/miniavs/${playerInfo.name}.svg'),
            )
          ],
        ),
        Card(
          color: Colors.purple[300],
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: Text(
                playerInfo.cardCount.toString(),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
