import 'package:flutter/material.dart';
import 'package:uno_graphql/schema.graphql.dart';
import 'package:uno_graphql/src/graphql/subscription.graphql.dart';
import 'package:uno_graphql/src/model/card_model.dart';

Future<Enum$Color> chooseColor(BuildContext context) async {
  Enum$Color color = Enum$Color.YELLOW;

  await showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return Center(
        child: Container(
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue, Colors.green, Colors.yellow, Colors.red]),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Material(
              color: Colors.transparent,
              child: Column(
                children: [
                  const Text(
                    'Pick a New Color',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.italic,
                      color: Colors.deepPurple,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      UnoCardModel(
                        card: Fragment$CardFragmnet(
                          id: '0',
                          number: '0',
                          cardType: Enum$CardType.CHOOSE_COLOR,
                          color: Enum$Color.BLUE,
                        ),
                        height: 100,
                        onPressed: () {
                          color = Enum$Color.BLUE;
                          Navigator.pop(context);
                        },
                      ),
                      UnoCardModel(
                        card: Fragment$CardFragmnet(
                          id: '0',
                          number: '0',
                          cardType: Enum$CardType.CHOOSE_COLOR,
                          color: Enum$Color.GREEN,
                        ),
                        height: 100,
                        onPressed: () {
                          color = Enum$Color.GREEN;
                          Navigator.pop(context);
                        },
                      ),
                      UnoCardModel(
                        card: Fragment$CardFragmnet(
                          id: '0',
                          number: '0',
                          cardType: Enum$CardType.CHOOSE_COLOR,
                          color: Enum$Color.YELLOW,
                        ),
                        height: 100,
                        onPressed: () {
                          color = Enum$Color.YELLOW;
                          Navigator.pop(context);
                        },
                      ),
                      UnoCardModel(
                        card: Fragment$CardFragmnet(
                          id: '0',
                          number: '0',
                          cardType: Enum$CardType.CHOOSE_COLOR,
                          color: Enum$Color.RED,
                        ),
                        height: 100,
                        onPressed: () {
                          color = Enum$Color.RED;
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
  return color;
}
