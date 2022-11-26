import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uno_graphql/schema.graphql.dart';
import 'package:uno_graphql/src/graphql/mutations.graphql.dart';
import 'package:uno_graphql/src/model/card_model.dart';
import 'package:uno_graphql/src/pages/game_page.dart';
import 'package:uno_graphql/src/pages/utils/choose_color.dart';

class PlayerCards extends HookConsumerWidget {
  const PlayerCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final roomstate = ref.watch(subsciptionProvider).valueOrNull;
    if (roomstate!.state == null) {
      return const SizedBox();
    }
    final move = useMutation$Move();
    final state = roomstate.state;
    Set<String> validIds = Set.from(state!.validmoves.map((e) => e.id));

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Stack(
        children: [
          for (var index = 0; index < state.cards.length; index++)
            Padding(
              padding: EdgeInsets.only(left: index * 54.0, top: 30),
              child: UnoCardModel(
                bordercolor: validIds.contains(state.cards[index].id)
                    ? Colors.green
                    : null,
                card: state.cards[index],
                height: 160,
                onPressed: (() async {
                  final card = state.cards[index];
                  var color = state.cards[index].color;
                  if (card.cardType == Enum$CardType.WILD_CARD ||
                      card.cardType == Enum$CardType.WILD_DRAW_FOUR_CARD) {
                    color = await chooseColor(context);
                  }
                  move.runMutation(Variables$Mutation$Move(
                      cardId: card.id, cardColor: color));
                }),
              ),
            ),
        ],
      ),
    );
  }
}
