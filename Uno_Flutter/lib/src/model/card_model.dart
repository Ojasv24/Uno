import 'package:flutter/material.dart';
import 'package:uno_graphql/schema.graphql.dart';
import 'package:uno_graphql/src/graphql/subscription.graphql.dart';
import 'package:uno_graphql/src/model/text_model.dart';

import 'uno_colors.dart';

typedef VoidCallback = void Function();

class UnoCardModel extends StatelessWidget {
  const UnoCardModel(
      {Key? key,
      required this.card,
      required this.height,
      this.onPressed,
      this.bordercolor})
      : super(
          key: key,
        );
  final Fragment$CardFragmnet card;
  final double height;
  final VoidCallback? onPressed;
  final Color? bordercolor;

  @override
  Widget build(BuildContext context) {
    final padding = height / 30;
    final textSize = height * 0.13;
    final color = unoColors[card.color];
    return SizedBox(
      height: height,
      width: height / 1.5,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(height / 10),
          onTap: onPressed,
          child: Ink(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(height / 10),
              color: bordercolor ?? Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.all(padding),
              child: Ink(
                // margin: EdgeInsets.all(padding),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(
                    height / 10,
                  ),
                  color: color,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: padding, top: padding),
                        child: card.cardType != Enum$CardType.CHOOSE_COLOR
                            ? getCardIcon(
                                card,
                                textSize,
                                card.number,
                              )
                            : const SizedBox(
                                height: 10,
                              )),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(height / 4),
                                bottomRight: Radius.circular(height / 4),
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              getCardIcon(
                                card,
                                textSize * 2,
                                card.number,
                                color,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                                bottom: padding, right: padding),
                            child: card.cardType != Enum$CardType.CHOOSE_COLOR
                                ? getCardIcon(
                                    card,
                                    textSize,
                                    card.number,
                                  )
                                : const SizedBox(
                                    height: 10,
                                  )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
