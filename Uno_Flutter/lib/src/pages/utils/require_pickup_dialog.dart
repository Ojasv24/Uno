import 'package:flutter/material.dart';
import 'package:uno_graphql/schema.graphql.dart';
import 'package:uno_graphql/src/graphql/mutations.graphql.dart';
import 'package:uno_graphql/src/graphql/subscription.graphql.dart';
import 'package:uno_graphql/src/model/card_model.dart';
import 'package:uno_graphql/src/pages/utils/choose_color.dart';
import 'package:uno_graphql/src/pages/widgets/my_elevated_button.dart';

Widget requirePick(
    BuildContext context, Subscription$ListenState$roomState$state? state) {
  final move = useMutation$Move();
  final keep = useMutation$KeepCard();
  return state!.requireChoose
      ? Material(
          color: Colors.black38,
          child: Stack(
            children: [
              Center(
                child: Container(
                  color: Colors.amber,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyElevatedButton(
                          onPressed: () {
                            keep.runMutation();
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 14),
                            child: Text(
                              'Keep',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                        ),
                        MyElevatedButton(
                            onPressed: () async {
                              final card = state.cards.last;
                              var color = state.cards.last.color;
                              if (card.cardType == Enum$CardType.WILD_CARD ||
                                  card.cardType ==
                                      Enum$CardType.WILD_DRAW_FOUR_CARD) {
                                color = await chooseColor(context);
                              }
                              move.runMutation(Variables$Mutation$Move(
                                  cardId: card.id, cardColor: color));
                            },
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 14),
                              child: Text(
                                'Play',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.center,
                  child: Transform.rotate(
                      angle: 0.2,
                      child:
                          UnoCardModel(card: state.cards.last, height: 150))),
            ],
          ),
        )
      : const SizedBox();
}
