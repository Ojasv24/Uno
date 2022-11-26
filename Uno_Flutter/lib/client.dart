import 'package:flutter/foundation.dart';
import 'package:graphql/client.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final tokenProvider = StateProvider((ref) {
  return '';
});
final nameProvider = StateProvider((ref) {
  return '';
});
final roomProvider = StateProvider((ref) {
  return '';
});

final clientProvider = Provider((ref) {
  final httpLink = HttpLink(
    'https://myuno.azurewebsites.net/graphql',
    // 'http://192.168.29.245:8000/graphql',
  );

  final authLink = AuthLink(
    getToken: () => ref.watch(tokenProvider),
  );

  Link link = authLink.concat(httpLink);

  final wsLink = WebSocketLink(
    'wss://myuno.azurewebsites.net/graphql',
    // 'ws://192.168.29.245:8000/graphql',
    config: SocketClientConfig(
      initialPayload: () async {
        // print()

        return {"Authorization": ref.watch(tokenProvider)};
      },
    ),
  );

  link = Link.split((request) {
    return request.isSubscription;
  }, wsLink, link);
  return GraphQLClient(
    link: link,
    defaultPolicies:
        DefaultPolicies(subscribe: Policies(fetch: FetchPolicy.noCache)),
    cache: GraphQLCache(store: InMemoryStore()),
  );
});

final clientNotifierProvider =
    Provider((ref) => ValueNotifier(ref.read(clientProvider)));
