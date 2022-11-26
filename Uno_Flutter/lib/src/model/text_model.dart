import 'package:flutter/material.dart';
import 'package:uno_graphql/schema.graphql.dart';
import 'package:uno_graphql/src/graphql/subscription.graphql.dart';

Widget getCardIcon(Fragment$CardFragmnet card, double fontsize,
    [String cardNumber = '1', Color? color = Colors.white]) {
  final cardType = card.cardType;
  TextStyle style = TextStyle(
    fontSize: fontsize,
    color: color,
    fontWeight: FontWeight.bold,
  );
  final iconSize = fontsize * 1.1;
  if (cardType == Enum$CardType.DRAW_TWO_CARD) {
    return Text('+2', style: style);
  }
  if (cardType == Enum$CardType.CHOOSE_COLOR) {
    return Transform.rotate(
      angle: -0.2,
      child: Text(
        card.color.name,
        style: TextStyle(fontSize: 13, color: color),
      ),
    );
  }
  if (cardType == Enum$CardType.NUMBER_CARD) {
    return Text(cardNumber, style: style);
  }
  if (cardType == Enum$CardType.SKIP_CARD) {
    return Icon(
      Icons.block_rounded,
      color: style.color,
      size: iconSize,
    );
  }
  if (cardType == Enum$CardType.REVERSE_CARD) {
    return Icon(
      Icons.sync_outlined,
      color: style.color,
      size: iconSize,
    );
  }

  if (cardType == Enum$CardType.WILD_CARD) {
    return Text('W', style: style);
  }
  if (cardType == Enum$CardType.WILD_DRAW_FOUR_CARD) {
    return Text('W+4', style: style);
  }
  return const Text(' ');
}
