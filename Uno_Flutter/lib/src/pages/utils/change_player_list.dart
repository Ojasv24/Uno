import 'package:uno_graphql/src/graphql/subscription.graphql.dart';

List<Fragment$PlayerFragment> updatedList(
    List<Fragment$PlayerFragment> playerlist, String playerName) {
  var index = playerlist.indexWhere((element) => element.name == playerName);
  List<Fragment$PlayerFragment> subarr1 = [];
  for (int i = index; i < playerlist.length; i++) {
    subarr1.add(playerlist[i]);
  }
  for (int i = 0; i < index; i++) {
    subarr1.add(playerlist[i]);
  }
  return subarr1;
}
