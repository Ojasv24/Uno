import 'package:uno_graphql/schema.graphql.dart';
import 'package:uno_graphql/src/graphql/subscription.graphql.dart';

String? showSnackbar(Subscription$ListenState$roomState? prevRoomState,
    Subscription$ListenState$roomState curRoomState) {
  // New Player added
  if (prevRoomState == null) {
    return null;
  }
  if (prevRoomState.players.length < curRoomState.players.length) {
    return ('${curRoomState.players.last.name} Joined The Game');
  }

  // Game started
  if (prevRoomState.state == null) {
    return null;
  }
  final prevState = prevRoomState.state;
  final curState = curRoomState.state;

  if (prevState!.cards.isNotEmpty && curState!.cards.isNotEmpty) {
    final prevcurrentplayer = int.parse(prevState.currentPlayer);
    if (prevcurrentplayer >= 0 &&
        prevState.players[prevcurrentplayer].cardCount <
            curState.players[prevcurrentplayer].cardCount) {
      return '${curState.players[prevcurrentplayer].name} Picked${prevState.pickCount != 0 ? ' ${prevState.pickCount}' : ''} Card ';
    }

    // ReverseCard
    if (prevState.gameDirection != curState.gameDirection) {
      return 'Reverse Card Played';
    }

    // Skip Card
    var direction = 0;
    if (prevState.gameDirection == Enum$Direction.FORWARD) {
      direction = 1;
    } else {
      direction = -1;
    }
    var currPlayer = 0;
    currPlayer = int.parse(prevState.currentPlayer) + (2 * direction);
    currPlayer = currPlayer % prevState.players.length;
    if (curState.topcard.cardType == Enum$CardType.SKIP_CARD &&
        currPlayer.toString() == curState.currentPlayer) {
      return 'Skip Card Played';
    }
  }
  return null;
}
