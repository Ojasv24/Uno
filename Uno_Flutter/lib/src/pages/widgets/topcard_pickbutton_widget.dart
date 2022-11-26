import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uno_graphql/client.dart';
import 'package:uno_graphql/schema.graphql.dart';
import 'package:uno_graphql/src/graphql/mutations.graphql.dart';
import 'package:uno_graphql/src/graphql/subscription.graphql.dart';
import 'package:uno_graphql/src/model/card_model.dart';

class TopcardAndPickupButton extends HookConsumerWidget {
  const TopcardAndPickupButton({Key? key, required this.state})
      : super(key: key);
  final Subscription$ListenState$roomState$state state;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pickcard = useMutation$PickCard();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: () {
            pickcard.runMutation();
          },
          splashColor: Colors.amber,
          borderRadius: BorderRadius.circular(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/stakCard.png',
                scale: 3.2,
                color: ref.read(nameProvider) ==
                        state.players[int.parse(state.currentPlayer)].name
                    ? Colors.green
                    : Colors.white,
              ),
              Text(
                'PickCard',
                style: TextStyle(
                  color: ref.read(nameProvider) ==
                          state.players[int.parse(state.currentPlayer)].name
                      ? Colors.green
                      : Colors.white,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: UnoCardModel(
            card: state.topcard,
            height: 180,
          ),
        ),
        Column(
          children: [
            const Text(
              "LastCard",
              style: TextStyle(color: Colors.white),
            ),
            UnoCardModel(
              card: Fragment$CardFragmnet(
                id: '0',
                cardType: Enum$CardType.NUMBER_CARD,
                color: state.lastColor,
                number: state.lastNumber.toString(),
              ),
              height: 100,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'PickCount',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              state.pickCount.toString(),
              style: const TextStyle(color: Colors.white),
            ),
          ],
        )
      ],
    );
  }
}
